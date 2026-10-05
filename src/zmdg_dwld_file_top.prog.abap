*&---------------------------------------------------------------------*
*& Include          ZMDG_DWLD_FILE_TOP
*&---------------------------------------------------------------------*

TABLES : lfa1,kna1,t024e,tvko,t001,dd02l,adrc,adr2,adr3.
TYPES : BEGIN OF ty_adrc,
          lifnr   TYPE lfa1-lifnr,
          include TYPE adrc,
        END OF ty_adrc.
* Declarations for internal table and work area
DATA: lt_lfa1      TYPE TABLE OF lfa1,
      lt_lfm1      TYPE TABLE OF lfm1,
      lt_lfb1      TYPE TABLE OF lfb1,
      lt_adrc      TYPE TABLE OF ty_adrc,
      ls_lfa1      TYPE lfa1,
      ls_lfm1      TYPE lfm1,
      ls_lfb1      TYPE lfb1,
      ls_adrc      TYPE ty_adrc,
      lt_csv_data  TYPE TABLE OF string,
      lv_file_path TYPE string,
      lv_separator TYPE c LENGTH 1 VALUE ';'. ";-separated format will open correctly file

DATA: lv_filename TYPE string,    " Variable to hold file name
      lv_path     TYPE string,    " Variable to hold file path
      lv_fullpath TYPE string.    " Variable for full file path

DATA : lv_assid   TYPE n LENGTH 12,
       lv_csvname TYPE string.
