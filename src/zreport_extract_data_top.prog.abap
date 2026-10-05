*&---------------------------------------------------------------------*
*& Include          ZREPORT_EXTRACT_DATA_TOP
*&---------------------------------------------------------------------*

TABLES : lfa1,kna1,t024e,tvko,t001,dd02l,adrc,adr2,adr3.
DATA : lv_assid TYPE n LENGTH 12,
       it_lbuks TYPE RANGE OF t001-bukrs,
       it_lifnr TYPE RANGE OF lfa1-lifnr,
       it_ekorg TYPE RANGE OF t024e-ekorg,
       it_kunnr TYPE ytt_kunnr,
       it_kbuks TYPE ytt_bukrs,
       it_vkorg TYPE ytt_vkorg,
       lv_file  TYPE string.
DATA: lo_extractor TYPE REF TO zcl_mdg_extractor.
