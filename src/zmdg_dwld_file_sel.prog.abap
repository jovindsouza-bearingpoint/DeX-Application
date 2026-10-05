*&---------------------------------------------------------------------*
*& Include          ZMDG_DWLD_FILE_SEL
*&---------------------------------------------------------------------*
SELECTION-SCREEN: BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-003.
*  SELECT-OPTIONS: so_table FOR dd02l-tabname OBLIGATORY NO INTERVALS .
  PARAMETERS : p_table TYPE dd02l-tabname .
SELECTION-SCREEN: END OF BLOCK b2.
* Define the selection screen
SELECTION-SCREEN BEGIN OF BLOCK radio_block WITH FRAME TITLE TEXT-001.
  PARAMETERS: r_vend TYPE c RADIOBUTTON GROUP rad1 DEFAULT 'X' USER-COMMAND rd_com,
              r_cust TYPE c RADIOBUTTON GROUP rad1.
  SELECTION-SCREEN SKIP.
* Fields for Vendor
  SELECT-OPTIONS: so_lbuks FOR t001-bukrs  MODIF ID rv, "OBLIGATORY, " Company Code
                  so_lifnr FOR lfa1-lifnr  MODIF ID rv,
                  so_EKORG FOR t024e-ekorg MODIF ID rv.
* Fields for Customer
  SELECT-OPTIONS: so_kbuks FOR t001-bukrs  MODIF ID rc,
                  so_KUNNR FOR kna1-lifnr  MODIF ID rc,
                  so_VKORG FOR tvko-vkorg  MODIF ID rc.
SELECTION-SCREEN END OF BLOCK radio_block.

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
    MODIFY SCREEN.
  ENDLOOP.
