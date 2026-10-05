*&---------------------------------------------------------------------*
*& Include          ZREPORT_EXTRACT_DATA_SEL
*&---------------------------------------------------------------------*
* Define the selection screen
SELECTION-SCREEN BEGIN OF BLOCK radio_block WITH FRAME TITLE TEXT-001.
  PARAMETERS: r_vend TYPE c RADIOBUTTON GROUP rad1 DEFAULT 'X' USER-COMMAND rd_com,
              r_cust TYPE c RADIOBUTTON GROUP rad1.
  SELECTION-SCREEN SKIP.
* Fields for Vendor
  SELECT-OPTIONS: so_lbuks FOR t001-bukrs  MODIF ID rv, "OBLIGATORY, " Company Code
                  so_lifnr FOR lfa1-lifnr  MODIF ID rv,
                  so_ekorg FOR t024e-ekorg MODIF ID rv.
* Fields for Customer
  SELECT-OPTIONS: so_kbuks FOR t001-bukrs  MODIF ID rc,
                  so_kunnr FOR kna1-lifnr  MODIF ID rc,
                  so_vkorg FOR tvko-vkorg  MODIF ID rc.
SELECTION-SCREEN END OF BLOCK radio_block.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-002.
  PARAMETERS: p_map  AS CHECKBOX USER-COMMAND ucom. " Checkbox for Mapping
  PARAMETERS: p_file TYPE rlgrap-filename MODIF ID f1. " File upload field
SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK bl3 WITH FRAME TITLE TEXT-022.
  PARAMETERS pa_app TYPE c RADIOBUTTON GROUP rb1.     "Application Server
  PARAMETERS: pa_apptf TYPE rlgrap-filename.

  SELECTION-SCREEN SKIP 1.
  PARAMETERS pa_alv TYPE c RADIOBUTTON GROUP rb1 DEFAULT 'X'.                 " Dialog ALV

*  SELECTION-SCREEN SKIP 1.
*
*  PARAMETERS: pa_crxls TYPE c RADIOBUTTON GROUP rb1.               " Dialog Create XLS Files directly
*  PARAMETERS: pa_xls   TYPE localfile.

*  PARAMETERS: pa_stxl TYPE c AS CHECKBOX.
SELECTION-SCREEN END OF BLOCK bl3.
