class ZCL_MAPPING_FILE definition
  public
  create public .

public section.

  types:
    BEGIN OF ty_mapping,
        targ_struc TYPE string,
        targ_field TYPE string,
        rule_typ   TYPE string,
        rule       TYPE string,
      END OF ty_mapping .
  types:
    tt_mapping TYPE STANDARD TABLE OF ty_mapping
                 WITH DEFAULT KEY .
  types:
    BEGIN OF ty_dynmap,
        field_name TYPE string,
        old_value  TYPE string,
        new_value  TYPE string,
      END OF ty_dynmap .
  types:
    tt_dynmap TYPE STANDARD TABLE OF ty_dynmap
                WITH DEFAULT KEY .
  types:
    BEGIN OF ty_table_ref,
        targ_struc TYPE string,
        table_ref  TYPE REF TO data,
      END OF ty_table_ref .
  types:
    tt_table_ref TYPE STANDARD TABLE OF ty_table_ref
                    WITH DEFAULT KEY .

  methods GET_MAPPING
    importing
      !IV_FILE type STRING
    exporting
      !ET_MAPPING type TT_MAPPING
    changing
      !CT_TABLES type TT_TABLE_REF .
private section.

  methods SEPARATE_DATA
    importing
      !IV_TABLE type STANDARD TABLE
    changing
      !CT_TABLE type TT_DYNMAP .
ENDCLASS.



CLASS ZCL_MAPPING_FILE IMPLEMENTATION.


  METHOD get_mapping.

    TYPES:
      BEGIN OF ty_record,
        line TYPE x255,
      END OF ty_record.

    DATA:
      lv_filelength    TYPE i,
      lv_xstring       TYPE xstring,
      lv_worksheetname TYPE string,
      lo_excel_ref     TYPE REF TO cl_fdt_xl_spreadsheet,
      lo_data_ref      TYPE REF TO data,
      lt_records       TYPE STANDARD TABLE OF ty_record,
      lt_worksheets    TYPE STANDARD TABLE OF string,
      lt_dynmap        TYPE tt_dynmap,
      lt_mapping       TYPE tt_mapping.

    FIELD-SYMBOLS:
      <lt_overview>  TYPE STANDARD TABLE,
      <lt_sheet>     TYPE STANDARD TABLE,
      <ls_overview>  TYPE any,
      <ls_table_ref> TYPE ty_table_ref,
      <lt_target>    TYPE STANDARD TABLE,
      <ls_target>    TYPE any,
      <fs_field>     TYPE any,
      <fs_map>       TYPE ty_dynmap.

    CLEAR et_mapping.

    IF iv_file IS INITIAL.
      RETURN.
    ENDIF.

    "---------------------------------------------------------
    " Upload Excel file
    "---------------------------------------------------------
    CALL FUNCTION 'GUI_UPLOAD'
      EXPORTING
        filename   = iv_file
        filetype   = 'BIN'
      IMPORTING
        filelength = lv_filelength
        header     = lv_xstring
      TABLES
        data_tab   = lt_records
      EXCEPTIONS
        OTHERS     = 1.

    IF sy-subrc <> 0.
      RAISE EXCEPTION TYPE cx_sy_file_open
        EXPORTING
          filename = iv_file.
    ENDIF.

    "---------------------------------------------------------
    " Convert binary to XSTRING
    "---------------------------------------------------------
    CALL FUNCTION 'SCMS_BINARY_TO_XSTRING'
      EXPORTING
        input_length = lv_filelength
      IMPORTING
        buffer       = lv_xstring
      TABLES
        binary_tab   = lt_records
      EXCEPTIONS
        OTHERS       = 1.

    IF sy-subrc <> 0.
      RETURN.
    ENDIF.

    "---------------------------------------------------------
    " Create Excel object
    "---------------------------------------------------------
    TRY.
        lo_excel_ref = NEW cl_fdt_xl_spreadsheet(
                                      document_name = iv_file
                                      xdocument     = lv_xstring ).
      CATCH cx_fdt_excel_core INTO DATA(lx_excel).
        MESSAGE lx_excel->get_text( ) TYPE 'E'.
    ENDTRY.
    IF lo_excel_ref IS NOT BOUND.
      RETURN.
    ENDIF.

    "---------------------------------------------------------
    " Get worksheet names
    "---------------------------------------------------------
    lo_excel_ref->if_fdt_doc_spreadsheet~get_worksheet_names(
      IMPORTING
        worksheet_names = lt_worksheets ).
    IF lt_worksheets IS INITIAL.
      MESSAGE 'Please check the file' TYPE 'E'.
      RETURN.
    ENDIF.

    "---------------------------------------------------------
    " Read Overview worksheet
    "---------------------------------------------------------
    READ TABLE lt_worksheets INTO lv_worksheetname WITH KEY table_line = 'Overview'.
    IF sy-subrc <> 0.
      MESSAGE 'Overview worksheet not found' TYPE 'E'.
      RETURN.
    ENDIF.

    lo_data_ref =
      lo_excel_ref->if_fdt_doc_spreadsheet~get_itab_from_worksheet( lv_worksheetname ).
    ASSIGN lo_data_ref->* TO <lt_overview>.
    IF <lt_overview> IS NOT ASSIGNED.
      RETURN.
    ENDIF.
    "---------------------------------------------------------
    " Read mapping definitions from Overview
    "
    " K = Target Structure
    " L = Target Field
    " N = Rule Type
    " O = Rule
    "---------------------------------------------------------
    LOOP AT <lt_overview> ASSIGNING <ls_overview>.
      FIELD-SYMBOLS:
        <lv_k> TYPE any,
        <lv_l> TYPE any,
        <lv_n> TYPE any,
        <lv_o> TYPE any.

      ASSIGN COMPONENT 'K' OF STRUCTURE <ls_overview> TO <lv_k>.
      ASSIGN COMPONENT 'L' OF STRUCTURE <ls_overview> tO <lv_l>.
      ASSIGN COMPONENT 'N' OF STRUCTURE <ls_overview> TO <lv_n>.
      ASSIGN COMPONENT 'O' OF STRUCTURE <ls_overview> TO <lv_o>.

      APPEND VALUE ty_mapping(
        targ_struc = CONV string( <lv_k> )
        targ_field = CONV string( <lv_l> )
        rule_typ   = CONV string( <lv_n> )
        rule       = CONV string( <lv_o> )
      ) TO lt_mapping.
    ENDLOOP.

    DELETE lt_mapping WHERE targ_struc IS INITIAL.
    DELETE lt_mapping WHERE targ_struc = 'Target Structure'.
    et_mapping = lt_mapping.

    "---------------------------------------------------------
    " Process each mapping rule
    "---------------------------------------------------------
    LOOP AT lt_mapping ASSIGNING FIELD-SYMBOL(<ls_mapping>) WHERE rule_typ = 'MAPPING' OR rule_typ = 'FIXED VALUE' OR rule_typ = 'EMPTY'.

      CLEAR lt_dynmap.
      "-------------------------------------------------------
      " MAPPING
      " Read mapping worksheet
      "-------------------------------------------------------
      IF <ls_mapping>-rule_typ = 'MAPPING'.

        lo_data_ref =
          lo_excel_ref->if_fdt_doc_spreadsheet~get_itab_from_worksheet( <ls_mapping>-rule ). "Pass the worksheet name to get the data of that sheet

        IF lo_data_ref IS BOUND.
          ASSIGN lo_data_ref->* TO <lt_sheet>.
          IF <lt_sheet> IS ASSIGNED.
            me->separate_data(
              EXPORTING
                iv_table = <lt_sheet>
              CHANGING
                ct_table = lt_dynmap ).
          ENDIF.
        ENDIF.
      ENDIF.

      "-------------------------------------------------------
      " Find target internal table
      "-------------------------------------------------------
      READ TABLE ct_tables ASSIGNING <ls_table_ref>
        WITH KEY targ_struc = <ls_mapping>-targ_struc.
      IF sy-subrc <> 0.
        CONTINUE.
      ENDIF.

      "-------------------------------------------------------
      " Dereference target internal table
      "-------------------------------------------------------
      DATA(lr_target) = <ls_table_ref>-table_ref.
      IF lr_target IS NOT BOUND.
        CONTINUE.
      ENDIF.
      ASSIGN lr_target->* TO <lt_target>.
      IF <lt_target> IS NOT ASSIGNED.
        CONTINUE.
      ENDIF.

      "-------------------------------------------------------
      " Apply mapping to generic table
      "-------------------------------------------------------
      LOOP AT <lt_target> ASSIGNING <ls_target>.
        CASE <ls_mapping>-rule_typ.
          WHEN 'MAPPING'.

            LOOP AT lt_dynmap ASSIGNING <fs_map>.
              UNASSIGN <fs_field>.
              ASSIGN COMPONENT <fs_map>-field_name
                OF STRUCTURE <ls_target>
                TO <fs_field>.

              IF <fs_field> IS ASSIGNED.
                IF CONV string( <fs_field> )
                    = <fs_map>-old_value.
                  <fs_field> = <fs_map>-new_value.
                ENDIF.
              ENDIF.
            ENDLOOP.

          WHEN 'FIXED VALUE'.

            UNASSIGN <fs_field>.
            ASSIGN COMPONENT <ls_mapping>-targ_field
              OF STRUCTURE <ls_target>
              TO <fs_field>.
            IF <fs_field> IS ASSIGNED.
              IF <ls_mapping>-rule IS NOT INITIAL.
                <fs_field> = <ls_mapping>-rule.
              ENDIF.
            ENDIF.

          WHEN 'EMPTY'.

            UNASSIGN <fs_field>.
            ASSIGN COMPONENT <ls_mapping>-targ_field
              OF STRUCTURE <ls_target>
              TO <fs_field>.
            IF <fs_field> IS ASSIGNED.
              CLEAR <fs_field>.
            ENDIF.

        ENDCASE.

      ENDLOOP.
    ENDLOOP.

  ENDMETHOD.


  METHOD separate_data.




    DATA:
      lo_table_desc  TYPE REF TO cl_abap_tabledescr,
      lo_struct_desc TYPE REF TO cl_abap_structdescr,
      lt_components  TYPE cl_abap_structdescr=>component_table.

    FIELD-SYMBOLS:
      <ls_source>    TYPE any,
      <fs_component> TYPE any,
      <fs_target>    TYPE any.

    "---------------------------------------------------------
    " Get structure information dynamically
    "---------------------------------------------------------
    lo_table_desc ?= cl_abap_tabledescr=>describe_by_data( ct_table  ).  "iv_table

    lo_struct_desc ?= lo_table_desc->get_table_line_type( ).

    lt_components = lo_struct_desc->get_components( ).

    "---------------------------------------------------------
    " Skip first row because it is normally the header
    "---------------------------------------------------------
    LOOP AT iv_table ASSIGNING <ls_source> FROM 2.

      APPEND INITIAL LINE TO ct_table
        ASSIGNING FIELD-SYMBOL(<ls_map>).

      DATA(lv_index) = 1.

      WHILE lv_index <= lines( lt_components ).

        ASSIGN COMPONENT lv_index
          OF STRUCTURE <ls_source>
          TO <fs_component>.

        IF sy-subrc <> 0.
          EXIT.
        ENDIF.


        READ TABLE lt_components
          ASSIGNING FIELD-SYMBOL(<ls_component>)
          INDEX lv_index.

        IF sy-subrc = 0.
          ASSIGN COMPONENT <ls_component>-name
            OF STRUCTURE <ls_map>
            TO <fs_target>.

          IF sy-subrc = 0.
            IF <fs_component> IS NOT INITIAL.
              <fs_target> = CONV string( <fs_component> ).
            ENDIF.
          ENDIF.
        ENDIF.

        lv_index = lv_index + 1.
      ENDWHILE.
    ENDLOOP.
ENDMETHOD.
ENDCLASS.
