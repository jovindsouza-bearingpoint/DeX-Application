*&---------------------------------------------------------------------*
*& Include          ZREPORT_EXTRACT_DATA_E01
*&---------------------------------------------------------------------*

*----------------------------------------------------------------------
* AT SELECTION-SCREEN OUTPUT.
*----------------------------------------------------------------------
*Show or hide blocks based on radio button selection
AT SELECTION-SCREEN OUTPUT.
  LOOP AT SCREEN.
    IF r_vend = 'X'.
      IF screen-group1 = 'RV'.
        screen-input = 1.
        screen-invisible = 0.
      ELSEIF screen-group1 = 'RC' .
        screen-input = 0.
        screen-invisible = 1.
      ENDIF.
    ELSEIF r_cust = 'X'.
      IF screen-group1 = 'RC'.
        screen-input = 1.         " Enable Customer fields
        screen-invisible = 0.
      ELSEIF screen-group1 = 'RV'.
        screen-input = 0.         " Hide Vendor fields
        screen-invisible = 1.
      ENDIF.
    ENDIF.
    IF screen-group1 = 'F1'.
      IF p_map = 'X'.
        screen-active = 1.
      ELSE.
        screen-active = 0.
      ENDIF.
    ENDIF.
    MODIFY SCREEN.
  ENDLOOP.

AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_file.
  PERFORM get_file CHANGING p_file.

AT SELECTION-SCREEN ON VALUE-REQUEST FOR pa_apptf.
  PERFORM f4_file_save_dialog CHANGING pa_apptf.

START-OF-SELECTION.
  it_kunnr = so_kunnr[].
  it_kbuks = so_kbuks[].
  it_vkorg = so_vkorg[].
*Assignment ID
  IF r_vend = 'X'.
    lv_assid =  '000000000001'.
    LOOP AT so_lifnr INTO DATA(ls_range).
      IF ls_range-sign = 'I' AND ls_range-option = 'EQ'.
        APPEND ls_range TO it_lifnr.
      ENDIF.
    ENDLOOP.

    LOOP AT so_lbuks INTO DATA(ls_lbuks).
      IF ls_lbuks-sign = 'I' AND ls_lbuks-option = 'EQ'.
        APPEND ls_lbuks TO it_lbuks.
      ENDIF.
    ENDLOOP.

    LOOP AT so_ekorg INTO DATA(ls_ekorg).
      IF ls_ekorg-sign = 'I' AND ls_ekorg-option = 'EQ'.
        APPEND ls_ekorg TO it_ekorg.
      ENDIF.
    ENDLOOP.

    DATA(lo_export) = NEW zcl_mdg_extractor_vendor(
      it_bukrs = it_lbuks
      it_lifnr = it_lifnr
      it_ekorg = it_ekorg
      ip_file = p_file
      ip_appt_file = pa_apptf     " Local file for upload/download
    ).

    lo_export->build_excel( ).
  ELSE.
    lv_assid = '000000000002'.
    lv_file = p_File.

    DATA(lo_customer) = NEW zcl_mdg_extractor_customer(
      it_bukrs = it_kbuks                 " BUKRS
      it_kunnr = it_kunnr                 " KUNNR
      it_vkorg = it_vkorg                 " VKORG
      id_file  = lv_file
      ip_appt_file = pa_apptf             " Local file for upload/download
    ).
    lo_customer->build_excel( ).
  ENDIF.

FORM get_file CHANGING p_fname TYPE rlgrap-filename.
  DATA: lt_filetab TYPE filetable,
        lv_rc      TYPE i,
        lv_action  TYPE i.

  CALL METHOD cl_gui_frontend_services=>file_open_dialog
    EXPORTING
      multiselection = abap_false
    CHANGING
      file_table     = lt_filetab
      rc             = lv_rc
      user_action    = lv_action
    EXCEPTIONS
      OTHERS         = 1.

  IF sy-subrc = 0 AND lv_rc > 0.
    READ TABLE lt_filetab INTO DATA(ls_file) INDEX 1.
    IF sy-subrc = 0.
      p_fname = ls_file-filename.
    ENDIF.
  ENDIF.
ENDFORM.
*&---------------------------------------------------------------------*
*& Form f4_file_save_dialog
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*&      <-- PA_APPTF
*&---------------------------------------------------------------------*
FORM f4_file_save_dialog  CHANGING c_fname.

  DATA:
    filename TYPE string,
    lv_path  TYPE dxfields-longpath.
  lv_path = c_fname.

  DATA: lv_fullpath TYPE string.

  CALL FUNCTION '/SAPDMC/LSM_F4_SERVER_FILE'
    IMPORTING
      serverfile       = lv_fullpath
    EXCEPTIONS
      canceled_by_user = 1
      OTHERS           = 2.

  IF sy-subrc = 0.
    c_fname = lv_fullpath.
  ENDIF..
ENDFORM.
