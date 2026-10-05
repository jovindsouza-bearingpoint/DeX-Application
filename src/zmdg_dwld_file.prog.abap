*&---------------------------------------------------------------------*
*& Report ZMDG_DWLD_FILE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmdg_dwld_file.

INCLUDE zmdg_dwld_file_top.     "Data Description
INCLUDE zmdg_dwld_file_sel.     "Select-Options
INCLUDE zmdg_dwld_file_f01.     "Form-Routines

*----------------------------------------------------------------------*
* START-OF-SELECTION                                                   *
*----------------------------------------------------------------------*
START-OF-SELECTION.
*Assignment ID
  IF r_vend = 'X'.
    LV_assid =  '000000000001'.
  ELSE.
    LV_assid = '000000000002'.
  ENDIF.
*  IF so_table-low =  'LFA1'.
  IF p_table =  'LFA1'.
    PERFORM lfa1_data.
    PERFORM dwld.
  ELSEIF p_table = 'LFM1'.
    PERFORM lfm1_data.
    PERFORM dwld.
  ELSEIF p_table = 'LFB1'.
    PERFORM lfb1_data.
    PERFORM dwld.
  ELSEIF p_table = 'ADRC'.
    PERFORM adrc_data.
    PERFORM dwld.
    MESSAGE 'Data not found' TYPE 'S' DISPLAY LIKE 'E'.
    EXIT.
  ENDIF.
