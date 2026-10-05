*&---------------------------------------------------------------------*
*& Include          ZMDG_DWLD_FILE_F01
*&---------------------------------------------------------------------*

*&---------------------------------------------------------------------*
*& Form get_data
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM lfa1_data .

* Select data from LFA1 table
  SELECT * FROM lfa1 INTO CORRESPONDING FIELDS OF TABLE lt_lFa1.  "#EC CI_NOWHERE
*  SELECT * FROM lfa1 INTO CORRESPONDING FIELDS OF TABLE lt_lFa1
*    WHERE lifnr = so_lifnr.
  SORT lt_lfa1 BY lifnr.

* Check if any data is selected
  IF lt_lfa1 IS INITIAL.
    MESSAGE 'Data not found in LFA1 table..' TYPE 'I' DISPLAY LIKE 'E'.  " Display message as error
    LEAVE PROGRAM.
  ELSE.
    lv_csvname = 'EXPORT_LFA1.csv'.
  ENDIF.

* Prepare the CSV header row
  DATA(lv_csv_data) = |Source ID{ lv_separator
                      }Assignment ID{ lv_separator
                      }Vendor1{ lv_separator
                      }Country{ lv_separator
                      }Name{ lv_separator
                      }Name2{ lv_separator
                      }Name3{ lv_separator
                      }Name4{ lv_separator
                      }city{ lv_separator
                      }District{ lv_separator
                      }PO Box{ lv_separator
                      }P.O. Box Postal Code{ lv_separator
                      }Postal Code{ lv_separator
                      }Region{ lv_separator
                      }Search term{ lv_separator
                      }Street{ lv_separator
                      }Address{ lv_separator
                      }Name{ lv_separator
                      }Name2{ lv_separator
                      }City{ lv_separator
                      }Title{ lv_separator
}Train station{ lv_separator
}Int. location no. 1{ lv_separator
}Int. location no. 2{ lv_separator
}Authorization Group{ lv_separator
}Industry{ lv_separator
}Check digit{ lv_separator
}Data line{ lv_separator
}DME indicator{ lv_separator
}Instruction key{ lv_separator
}Created on{ lv_separator
}Created by{ lv_separator
}PBC/ISR number{ lv_separator
}Group key{ lv_separator
}Account group{ lv_separator
}Customer{ lv_separator
}Alternative Payee{ lv_separator
}Central deletion flag{ lv_separator
}Central posting block{ lv_separator
}Central purchasing block{ lv_separator
}Language Key{ lv_separator
}Tax Number 1{ lv_separator
}Tax Number 2{ lv_separator
}Sales equalizatn tax{ lv_separator
}Liable for VAT{ lv_separator
}Telebox number{ lv_separator
}Telephone 1{ lv_separator
}Telephone 2{ lv_separator
}Fax Number{ lv_separator
}Teletex number{ lv_separator
}Telex number{ lv_separator
}One-time account{ lv_separator
}Payee in Document{ lv_separator
}Trading Partner No.{ lv_separator
}Fiscal address{ lv_separator
}VAT Registration No.{ lv_separator
}Natural Person{ lv_separator
}Block Function{ lv_separator
}Place of birth{ lv_separator
}Date of Birth{ lv_separator
}Sex{ lv_separator
}Information Number{ lv_separator
}Last External Review{ lv_separator
}Actual QM System{ lv_separator
}Reference Acct Group{ lv_separator
}P.O. Box city{ lv_separator
}Plant{ lv_separator
}Vendor sub-range relevant{ lv_separator
}Plant level relevant{ lv_separator
}Factory Calendar{ lv_separator
}Status of Data Transfer to Next Release{ lv_separator
}Tax Jurisdiction{ lv_separator
}Payment block{ lv_separator
}SCAC{ lv_separator
}Carrier freight grp{ lv_separator
}Transportation Zone{ lv_separator
}Accts for Alt. Payee{ lv_separator
}ServAgntProcGrp{ lv_separator
}Tax type{ lv_separator
}Tax number type{ lv_separator
}Social Insurance{ lv_separator
}Social Ins. Code{ lv_separator
}Tax Number 3{ lv_separator
}Tax Number 4{ lv_separator
}Tax Number 5{ lv_separator
}Tax Number 6{ lv_separator
}Tax split{ lv_separator
}Tax Base{ lv_separator
}Profession{ lv_separator
}Stat. grp service agent{ lv_separator
}Ext. manufacturer{ lv_separator
}URL{ lv_separator
}Name of Representative{ lv_separator
}Type of Business{ lv_separator
}Type of Industry{ lv_separator
}Confirmation status{ lv_separator
}Confirmation date{ lv_separator
}Confirmation time{ lv_separator
}Central del.block{ lv_separator
}QM System Valid To{ lv_separator
}Relevant for POD{ lv_separator
}Tax Office Responsible{ lv_separator
}Tax Number at Responsible Tax Authority{ lv_separator
}Carrier confirmation expected{ lv_separator
}Micro Company{ lv_separator
}Terms of Liability{ lv_separator
}CRC number{ lv_separator
}Business Purpose Completed Flag{ lv_separator
}Origin Acceptance{ lv_separator
}RG Number{ lv_separator
}Issued by{ lv_separator
}State{ lv_separator
}RG Issuing Date{ lv_separator
}RIC Number{ lv_separator
}Foreign National Registration{ lv_separator
}RNE Issuing Date{ lv_separator
}CNAE{ lv_separator
}Legal Nature{ lv_separator
}CRT Number{ lv_separator
}ICMS Taxpayer{ lv_separator
}Industry Main Type{ lv_separator
}Tax Declaration Type{ lv_separator
}Company Size{ lv_separator
}Declaration Regimen for PIS/COFINS{ lv_separator
}Allowance Type{ lv_separator
}LFA1_EEW_SUPP{ lv_separator
}Last Changed On{
lv_separator }Assignment ID{ lv_separator
}Date limit: Ext. ID{ lv_separator
}Annual repetition{ lv_separator
}Enterprise in AU{ lv_separator
}Individual under 18{ lv_separator
}Payment does not exceed{ lv_separator
}Wholly Input Taxed{ lv_separator
}Individual w/o gain{ lv_separator
}The supplier is not entitled to an ABN{ lv_separator
}The whole of the payment is exempt incom{ lv_separator
}An activity done as a private recreation{ lv_separator
}wholly of a private or domestic nature{
lv_separator
}Street{ lv_separator
}House Number{ lv_separator
}Postal Code{ lv_separator
}City{ lv_separator
}Country Key{ lv_separator
}Business Type{ lv_separator
}Prtnr's Trading Name{ lv_separator
}Partner's UTR{ lv_separator
}Verification Status{ lv_separator
}Verification Number{ lv_separator
}Tax Status{ lv_separator
}Companies House Registration Number{ lv_separator
}Occupation{ lv_separator
}ECC No.{ lv_separator
}Excise Reg. No.{ lv_separator
}Excise Range{ lv_separator
}Excise Division{ lv_separator
}Excise Commissionerate{ lv_separator
}CST number{ lv_separator
}LST number{ lv_separator
}Permanent account number{ lv_separator
}Exc.Tax Ind. Vendor{ lv_separator
}SSI status{ lv_separator
}Type of Vendor{ lv_separator
}CENVAT Scheme Participant{ lv_separator
}Changed On{ lv_separator
}Changed By the user{ lv_separator
}Service Tax Regn.No{ lv_separator
}PAN Reference Number{ lv_separator
}PAN Valid From Date{ lv_separator
}Vendor for customs{ lv_separator
}Deductee Reference Number{ lv_separator
}GST Vendor Classification{ lv_separator
}Capital Amount{ lv_separator
}Currency{ lv_separator
}Public entity{ lv_separator
}Deed public use{ lv_separator
}Social Sec.certificate valid.{ lv_separator
}Social Sec.certif.submission{ lv_separator
}CAE code{ lv_separator
}Absence of debt{ lv_separator
}Transportation Chain{ lv_separator
}Staging Time{ lv_separator
}Scheduling Procedure{ lv_separator
}CD: Relevant for Collective Numbering{ lv_separator }|.
  APPEND lv_csv_data TO lt_csv_data.

* Loop through the data to create CSV rows
  LOOP AT lt_lfa1 INTO ls_lfa1.
    DATA: lv_spras     TYPE c LENGTH 2,
          lv_last_date TYPE datum.

    CALL FUNCTION 'CONVERSION_EXIT_ISOLA_OUTPUT'
      EXPORTING
        input            = ls_lfa1-spras
      IMPORTING
        output           = LV_spras
      EXCEPTIONS
        unknown_language = 1
        OTHERS           = 2.
* Extract date and Time .
    DATA(lv_erdat) = |{ ls_lfa1-erdat+6(2) }.{ ls_lfa1-erdat+4(2) }.{ ls_lfa1-erdat+0(4) }|.
    DATA(lv_gbdat) = |{ ls_lfa1-gbdat+6(2) }.{ ls_lfa1-gbdat+4(2) }.{ ls_lfa1-gbdat+0(4) }|.
    DATA(lv_updat) = |{ ls_lfa1-updat+6(2) }.{ ls_lfa1-updat+4(2) }.{ ls_lfa1-updat+0(4) }|.
    DATA(LV_rgdate) = |{ ls_lfa1-rgdate+6(2) }.{ ls_lfa1-rgdate+4(2) }.{ ls_lfa1-rgdate+0(4) }|.
    DATA(LV_rnedate) = |{ ls_lfa1-rnedate+6(2) }.{ ls_lfa1-rnedate+4(2) }.{ ls_lfa1-rnedate+0(4) }|.
    DATA(LV_borgr_datun) = |{ ls_lfa1-borgr_datun+6(2) }.{ ls_lfa1-borgr_datun+4(2) }.{ ls_lfa1-borgr_datun+0(4) }|.
    DATA(LV_j_1ipanvaldt) = |{ ls_lfa1-j_1ipanvaldt+6(2) }.{ ls_lfa1-j_1ipanvaldt+4(2) }.{ ls_lfa1-j_1ipanvaldt+0(4) }|.

    DATA(lv_uptim) = |{ ls_lfa1-uptim+0(2) }:{ ls_lfa1-uptim+2(2) }:{ ls_lfa1-uptim+4(2) } |.

    lv_csv_data = |{ ls_lfa1-lifnr }{ lv_separator
*} { lv_assid } { lv_separator
*} { '=TEXT("' && lv_assid && '","0")' } { lv_separator
}{ '''' && lv_assid } { lv_separator
}{ ls_lfa1-lifnr }{ lv_separator
}{ ls_lfa1-land1 }{ lv_separator
}{ ls_lfa1-name1 }{ lv_separator
}{ ls_lfa1-name2 }{ lv_separator
}{ ls_lfa1-name3 }{ lv_separator
}{ ls_lfa1-name4 }{ lv_separator
}{ ls_lfa1-ort01 }{ lv_separator
}{ ls_lfa1-ort02 }{ lv_separator
}{ ls_lfa1-pfach }{ lv_separator
}{ ls_lfa1-pstl2 }{ lv_separator
}{ ls_lfa1-pstlz }{ lv_separator
}{ ls_lfa1-regio }{ lv_separator
}{ ls_lfa1-sortl }{ lv_separator
}{ ls_lfa1-stras }{ lv_separator
}{ ls_lfa1-adrnr }{ lv_separator
}{ ls_lfa1-mcod1 }{ lv_separator
}{ ls_lfa1-mcod2 }{ lv_separator
}{ ls_lfa1-mcod3 }{ lv_separator
}{ ls_lfa1-anred }{ lv_separator
}{ ls_lfa1-bahns }{ lv_separator
}{ ls_lfa1-bbbnr }{ lv_separator
}{ ls_lfa1-bbsnr }{ lv_separator
}{ ls_lfa1-begru }{ lv_separator
}{ ls_lfa1-brsch }{ lv_separator
}{ ls_lfa1-bubkz }{ lv_separator
}{ ls_lfa1-datlt }{ lv_separator
}{ ls_lfa1-dtams }{ lv_separator
}{ ls_lfa1-dtaws }{ lv_separator
}{ lv_erdat } { lv_separator    "Created On
}{ ls_lfa1-ernam } { lv_separator
}{ ls_lfa1-esrnr } { lv_separator
}{ ls_lfa1-konzs } { lv_separator
}{ ls_lfa1-ktokk } { lv_separator
}{ ls_lfa1-kunnr } { lv_separator
}{ ls_lfa1-lnrza } { lv_separator
}{ ls_lfa1-loevm } { lv_separator
}{ ls_lfa1-sperr } { lv_separator
}{ ls_lfa1-sperm } { lv_separator
}{ LV_spras } { lv_separator          "Language Key
}{ ls_lfa1-stcd1 } { lv_separator
}{ ls_lfa1-stcd2 } { lv_separator
}{ ls_lfa1-stkza } { lv_separator
}{ ls_lfa1-stkzu } { lv_separator
}{ ls_lfa1-telbx } { lv_separator
}{ '''' && ls_lfa1-telf1 } { lv_separator "First telephone number 1
}{ ls_lfa1-telf2 } { lv_separator
}{ ls_lfa1-telfx } { lv_separator
}{ ls_lfa1-teltx } { lv_separator
}{ ls_lfa1-telx1 } { lv_separator
}{ ls_lfa1-xcpdk } { lv_separator
}{ ls_lfa1-xzemp } { lv_separator
}{ ls_lfa1-vbund } { lv_separator
}{ ls_lfa1-fiskn } { lv_separator
}{ ls_lfa1-stceg } { lv_separator
}{ ls_lfa1-stkzn } { lv_separator
}{ ls_lfa1-sperq } { lv_separator
}{ ls_lfa1-gbort } { lv_separator
}{ LV_gbdat } { lv_separator    "Date of Birth
}{ ls_lfa1-sexkz } { lv_separator
}{ ls_lfa1-kraus } { lv_separator
}{ ls_lfa1-revdb } { lv_separator
}{ ls_lfa1-qssys } { lv_separator
}{ ls_lfa1-ktock } { lv_separator
}{ ls_lfa1-pfort } { lv_separator
}{ ls_lfa1-werks } { lv_separator
}{ ls_lfa1-ltsna } { lv_separator
}{ ls_lfa1-werkr } { lv_separator
}{ ls_lfa1-plkal } { lv_separator
}{ ls_lfa1-duefl } { lv_separator
}{ ls_lfa1-txjcd } { lv_separator
}{ ls_lfa1-sperz } { lv_separator
}{ ls_lfa1-scacd } { lv_separator
}{ ls_lfa1-sfrgr } { lv_separator
}{ ls_lfa1-lzone } { lv_separator
}{ ls_lfa1-xlfza } { lv_separator
}{ ls_lfa1-dlgrp } { lv_separator
}{ ls_lfa1-fityp } { lv_separator
}{ ls_lfa1-stcdt } { lv_separator
}{ ls_lfa1-regss } { lv_separator
}{ ls_lfa1-actss } { lv_separator
}{ ls_lfa1-stcd3 } { lv_separator
}{ ls_lfa1-stcd4 } { lv_separator
}{ ls_lfa1-stcd5 } { lv_separator
}{ ls_lfa1-stcd6 } { lv_separator
}{ ls_lfa1-ipisp } { lv_separator
}{ ls_lfa1-taxbs } { lv_separator
}{ ls_lfa1-profs } { lv_separator
}{ ls_lfa1-stgdl } { lv_separator
}{ ls_lfa1-emnfr } { lv_separator
}{ ls_lfa1-lfurl } { lv_separator
}{ ls_lfa1-j_1kfrepre } { lv_separator
}{ ls_lfa1-j_1kftbus } { lv_separator
}{ ls_lfa1-j_1kftind } { lv_separator
}{ ls_lfa1-confs } { lv_separator
}{ LV_updat } { lv_separator            "Confirm.date
}{ lv_uptim } { lv_separator            "Confirm.time
}{ ls_lfa1-nodel } { lv_separator
}{ ls_lfa1-qssysdat } { lv_separator
}{ ls_lfa1-podkzb } { lv_separator
}{ ls_lfa1-fisku } { lv_separator
}{ ls_lfa1-stenr } { lv_separator
}{ ls_lfa1-carrier_conf } { lv_separator
}{ ls_lfa1-min_comp } { lv_separator
}{ ls_lfa1-term_li } { lv_separator
}{ ls_lfa1-crc_num } { lv_separator
}{ ls_lfa1-cvp_xblck } { lv_separator
}{ ls_lfa1-weora } { lv_separator
}{ ls_lfa1-rg } { lv_separator
}{ ls_lfa1-exp } { lv_separator
}{ ls_lfa1-uf } { lv_separator
}{ LV_rgdate } { lv_separator       "RG Issuing Date
}{ ls_lfa1-ric } { lv_separator
}{ ls_lfa1-rne } { lv_separator
}{ LV_rnedate } { lv_separator      "RNE Issuing Date
}{ ls_lfa1-cnae } { lv_separator
}{ ls_lfa1-legalnat } { lv_separator
}{ ls_lfa1-crtn } { lv_separator
}{ ls_lfa1-icmstaxpay } { lv_separator
}{ ls_lfa1-indtyp } { lv_separator
}{ ls_lfa1-tdt } { lv_separator
}{ ls_lfa1-comsize } { lv_separator
}{ ls_lfa1-decregpc } { lv_separator
}{ ls_lfa1-allowance_type } { lv_separator
}{ ls_lfa1-lfa1_eew_supp } { lv_separator
} { '00.00.0000' } { lv_separator                "'Last Changed On'.
}{ '000000000001' }{ lv_separator                "'Assignment ID'.
}{ LV_borgr_datun } { lv_separator
}{ ls_lfa1-borgr_yeaun } { lv_separator
}{ ls_lfa1-au_carrying_ent } { lv_separator
}{ ls_lfa1-au_ind_under_18 } { lv_separator
}{ ls_lfa1-au_payment_not_exceed_75 } { lv_separator
}{ ls_lfa1-au_wholly_inp_taxed } { lv_separator
}{ ls_lfa1-au_partner_without_gain } { lv_separator
}{ ls_lfa1-au_not_entitled_abn } { lv_separator
}{ ls_lfa1-au_payment_exempt } { lv_separator
}{ ls_lfa1-au_private_hobby } { lv_separator
}{ ls_lfa1-au_domestic_nature } { lv_separator
}{ ls_lfa1-addr2_street } { lv_separator
}{ ls_lfa1-addr2_house_num } { lv_separator
}{ ls_lfa1-addr2_post } { lv_separator
}{ ls_lfa1-addr2_city } { lv_separator
}{ ls_lfa1-addr2_country } { lv_separator
}{ ls_lfa1-categ } { lv_separator
}{ ls_lfa1-partner_name } { lv_separator
}{ ls_lfa1-partner_utr } { lv_separator
}{ ls_lfa1-status } { lv_separator
}{ ls_lfa1-vfnum } { lv_separator
}{ ls_lfa1-vfnid } { lv_separator
}{ ls_lfa1-crn } { lv_separator
}{ ls_lfa1-fr_occupation } { lv_separator
}{ ls_lfa1-j_1iexcd } { lv_separator
}{ ls_lfa1-j_1iexrn } { lv_separator
}{ ls_lfa1-j_1iexrg } { lv_separator
}{ ls_lfa1-j_1iexdi } { lv_separator
}{ ls_lfa1-j_1iexco } { lv_separator
}{ ls_lfa1-j_1icstno } { lv_separator
}{ ls_lfa1-j_1ilstno } { lv_separator
}{ ls_lfa1-j_1ipanno } { lv_separator
}{ ls_lfa1-j_1iexcive } { lv_separator
}{ ls_lfa1-j_1issist } { lv_separator
}{ ls_lfa1-j_1ivtyp } { lv_separator
}{ ls_lfa1-j_1ivencre } { lv_separator
}{ ls_lfa1-aedat } { lv_separator
}{ ls_lfa1-usnam } { lv_separator
}{ ls_lfa1-j_1isern } { lv_separator
}{ ls_lfa1-j_1ipanref } { lv_separator
}{ LV_j_1ipanvaldt } { lv_separator           "PAN Valid From Date
}{ ls_lfa1-j_1i_customs } { lv_separator
}{ ls_lfa1-j_1idedref } { lv_separator
}{ ls_lfa1-ven_class } { lv_separator
}{ ls_lfa1-j_sc_capital } { lv_separator
}{ ls_lfa1-j_sc_currency } { lv_separator
}{ ls_lfa1-entpub } { lv_separator
}{ ls_lfa1-escrit } { lv_separator
}{ ls_lfa1-dvalss } { lv_separator
}{ ls_lfa1-frmcss } { lv_separator
}{ ls_lfa1-codcae } { lv_separator
}{ ls_lfa1-ausdiv } { lv_separator
}{ ls_lfa1-transport_chain } { lv_separator
}{ ls_lfa1-staging_time } { lv_separator
}{ ls_lfa1-scheduling_type } { lv_separator
}{ ls_lfa1-submi_relevant } { lv_separator }|.
    APPEND lv_csv_data TO lt_csv_data.
    CLEAR: ls_lfa1.
  ENDLOOP.


ENDFORM.
*&---------------------------------------------------------------------*
*& Form dwld
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM dwld .
  DATA : lv_filename TYPE string,
         lv_path     TYPE string,
         lv_fullpath TYPE string,
         lv_result   TYPE i,
         lv_default  TYPE string,
         lv_fname    TYPE string.

  CALL METHOD cl_gui_frontend_services=>file_save_dialog
    EXPORTING
      window_title              = 'File Directory'     " Window Title
*     default_extension         = 'XLS'                " Default Extension
      default_file_name         = lv_csvname           "'data_file.csv'                " Default File Name
*     with_encoding             =
      file_filter               = '*.CSV'              "'Excel FILES (*.XLS)|*.XLS|EXCEL FILES (*.XLSX)|*.XLSX|'                " File Type Filter Table
*     initial_directory         =                      " Initial Directory
      prompt_on_overwrite       = 'X'
    CHANGING
      filename                  = lv_filename           " File Name to Save
      path                      = lv_path               " Path to File
      fullpath                  = lv_fullpath           " Path + File Name
      user_action               = lv_result             " User Action (C Class Const ACTION_OK, ACTION_OVERWRITE etc)
*     file_encoding             =
    EXCEPTIONS
      cntl_error                = 1                " Control error
      error_no_gui              = 2                " No GUI available
      not_supported_by_gui      = 3                " GUI does not support this
      invalid_default_file_name = 4                " Invalid default file name
      OTHERS                    = 5.

  IF sy-subrc <> 0.
    MESSAGE 'Error occurred while opening file save dialog.' TYPE 'E'.
    EXIT.
  ENDIF.

  lv_fname = lv_fullpath.
** Download the file
*  CALL FUNCTION 'GUI_DOWNLOAD'
*    EXPORTING
*      filename = lv_fname
*      filetype = 'ASC'  "'DAT'
*    TABLES
*      data_tab = lt_csv_data
*    EXCEPTIONS
*      OTHERS   = 1.

  CALL METHOD cl_gui_frontend_services=>gui_download
    EXPORTING
      filename     = lv_fname
      filetype     = 'DAT'
      codepage     = '4110'  " UTF-8 with BOM for Excel compatibility
      write_field_separator = 'X'
    CHANGING
      data_tab     =  lt_csv_data
    EXCEPTIONS
      OTHERS       = 1.

  IF sy-subrc = 0.
    MESSAGE 'Data downloaded successfully to' && lv_fname TYPE 'S'.
  ELSE.
    MESSAGE 'Error downloading data.' TYPE 'E'.
  ENDIF.

* Open the file
  CALL METHOD cl_gui_frontend_services=>execute
    EXPORTING
      document = lv_fname
    EXCEPTIONS
      OTHERS   = 1.
  IF sy-subrc = 0.
    WRITE: / 'File opened successfully.'.
  ELSE.
    WRITE: / 'Error opening file.'.
  ENDIF.



ENDFORM.
*&---------------------------------------------------------------------*
*& Form lfm1_data
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM lfm1_data .
* Select data from LFM1 table
*  SELECT * FROM lfm1 INTO CORRESPONDING FIELDS OF TABLE lt_lFM1.
  SELECT * FROM lfm1 INTO CORRESPONDING FIELDS OF TABLE lt_lFM1
    WHERE lifnr = so_lifnr.
  SORT lt_lfm1 BY lifnr.
* Check if any data is selected
  CLEAR : lv_csvname.
  IF lt_lfm1 IS INITIAL.
    lv_csvname = 'EXPORT_LFM1.csv'.
    MESSAGE 'Data not found in LFM1 table.' TYPE 'I' DISPLAY LIKE 'E'.  " Display message as error
    LEAVE PROGRAM.
  ELSE.
    lv_csvname = 'EXPORT_LFM1.csv'.
  ENDIF.

* Prepare the CSV header row
  DATA(lv_csv_data2) = |Source ID{ lv_separator
}Purch. organization{ lv_separator
}Assignment ID{ lv_separator
}Created on{ lv_separator
}Created by{ lv_separator
}Purch. block for purchasing organization{ lv_separator
}Delete flag for purchasing organization{ lv_separator
}ABC indicator{ lv_separator
}Order currency{ lv_separator
}Salesperson{ lv_separator
}Telephone{ lv_separator
}Minimum order value{ lv_separator
}Payment terms{ lv_separator
}Incoterms{ lv_separator
}Incoterms (Part 2){ lv_separator
}GR-Based Inv. Verif.{ lv_separator
}Acknowledgment Reqd{ lv_separator
}Schema Grp Supplier{ lv_separator
}Automatic PO{ lv_separator
}Mode of Transport{ lv_separator
}Customs office{ lv_separator
}Pricing Date Control{ lv_separator
}Purchasing Group{ lv_separator
}Eval. Receipt Sett.{ lv_separator
}Planned Deliv. Time{ lv_separator
}Planning Calendar{ lv_separator
}Planning cycle{ lv_separator
}Order entry: supplier{ lv_separator
}Supplier price marking{ lv_separator
}Rack jobbing{ lv_separator
}Incoterms Version{ lv_separator
}Incoterms Location 1{ lv_separator
}Incoterms Location 2{ lv_separator
}Origin Acceptance{ lv_separator
}Price determination{ lv_separator
}Qualifying for DKd{ lv_separator
}Subseq. sett. index{ lv_separator
}Doc. Index Active{ lv_separator
}Returns supplier{ lv_separator
}Sort criterion{ lv_separator
}Confirmation Control{ lv_separator
}Rounding Profile{ lv_separator
}Unit of Measure Grp{ lv_separator
}Supplier Service Level{ lv_separator
}LB restriction profile{ lv_separator
}Aut. ev. GRSetmt.Ret{ lv_separator
}Acc. with supplier{ lv_separator
}Release Creation Profile{ lv_separator
}PROACT control prof.{ lv_separator
}Settlement Mgmt.{ lv_separator
}Revaluation{ lv_separator
}Shipping Conditions{ lv_separator
}Service-Based Invoice Verification{ lv_separator
}Subseq. settlement{ lv_separator
}B.vol.comp./ag.nec.{ lv_separator
}Supplier RMA Requird{ lv_separator
}LFM1_EEW_PS{ lv_separator
}Last Changed On{ lv_separator
}Vendor{ lv_separator
}Assignment ID{ lv_separator
}Auto. debit creation{ lv_separator
}Settlement profile for automatic ERS{ lv_separator
}Absolute surcharge{ lv_separator
}Percentage handling surcharge{ lv_separator
}Minimum handling surcharge{ lv_separator
}Maximum handling surcharge{ lv_separator
}Customer/Supplier ID{ lv_separator
}VAS Determination Mode{ lv_separator
}Exchange Key{ lv_separator
}Sub-item pricing{ lv_separator
}Activity Profile{ lv_separator
}Transportation Chain{ lv_separator
}Staging Time{ lv_separator }|.
  APPEND lv_csv_data2 TO lt_csv_data.

* Loop through the data to create CSV rows
  LOOP AT lt_lfm1 INTO ls_lfm1.
    DATA(lv_erdat1) = |{ ls_lfm1-erdat+6(2) }.{ ls_lfm1-erdat+4(2) }.{ ls_lfm1-erdat+0(4) }|.

    lv_csv_data2 = |{ ' ' }{ lv_separator
} { ls_lfm1-ekorg }{ lv_separator
} { lv_assid }{ lv_separator
} { lv_erdat1 }{ lv_separator
} { ls_lfm1-ernam }{ lv_separator
} { ls_lfm1-sperm }{ lv_separator
} { ls_lfm1-loevm }{ lv_separator
} { ls_lfm1-lfabc }{ lv_separator
} { ls_lfm1-waers }{ lv_separator
} { ls_lfm1-verkf }{ lv_separator
} { ls_lfm1-telf1 }{ lv_separator
} { ls_lfm1-minbw }{ lv_separator
} { ls_lfm1-zterm }{ lv_separator
} { ls_lfm1-inco1 }{ lv_separator
} { ls_lfm1-inco2 }{ lv_separator
} { ls_lfm1-webre }{ lv_separator
} { ls_lfm1-kzabs }{ lv_separator
} { ls_lfm1-kalsk }{ lv_separator
} { ls_lfm1-kzaut }{ lv_separator
} { ls_lfm1-expvz }{ lv_separator
} { ls_lfm1-zolla }{ lv_separator
} { ls_lfm1-meprf }{ lv_separator
} { ls_lfm1-ekgrp }{ lv_separator
} { ls_lfm1-xersy }{ lv_separator
} { ls_lfm1-plifz }{ lv_separator
} { ls_lfm1-mrppp }{ lv_separator
} { ls_lfm1-lfrhy }{ lv_separator
} { ls_lfm1-libes }{ lv_separator
} { ls_lfm1-lipre }{ lv_separator
} { ls_lfm1-liser }{ lv_separator
} { ls_lfm1-incov }{ lv_separator
} { ls_lfm1-inco2_l }{ lv_separator
} { ls_lfm1-inco3_l }{ lv_separator
} { ls_lfm1-weora }{ lv_separator
} { ls_lfm1-prfre }{ lv_separator
} { ls_lfm1-nrgew }{ lv_separator
} { ls_lfm1-boind }{ lv_separator
} { ls_lfm1-blind }{ lv_separator
} { ls_lfm1-kzret }{ lv_separator
} { ls_lfm1-skrit }{ lv_separator
} { ls_lfm1-bstae }{ lv_separator
} { ls_lfm1-rdprf }{ lv_separator
} { ls_lfm1-megru }{ lv_separator
} { ls_lfm1-vensl }{ lv_separator
} { ls_lfm1-bopnr }{ lv_separator
} { ls_lfm1-xersr }{ lv_separator
} { ls_lfm1-eikto }{ lv_separator
} { ls_lfm1-abueb }{ lv_separator
} { ls_lfm1-paprf }{ lv_separator
} { ls_lfm1-agrel }{ lv_separator
} { ls_lfm1-xnbwy }{ lv_separator
} { ls_lfm1-vsbed }{ lv_separator
} { ls_lfm1-lebre }{ lv_separator
} { ls_lfm1-bolre }{ lv_separator
} { ls_lfm1-umsae }{ lv_separator
} { ls_lfm1-vendor_rma_req }{ lv_separator
} { ls_lfm1-lfm1_eew_ps }{ lv_separator
} { ' ' }{ lv_separator
} { ls_lfm1-lifnr }{ lv_separator
} { ' ' }{ lv_separator
} { ls_lfm1-aubel }{ lv_separator
} { ls_lfm1-valid_pro }{ lv_separator
} { ls_lfm1-hscabs }{ lv_separator
} { ls_lfm1-hscpe }{ lv_separator
} { ls_lfm1-hscmin }{ lv_separator
} { ls_lfm1-hscmax }{ lv_separator
} { ls_lfm1-fsh_sc_cid }{ lv_separator
} { ls_lfm1-fsh_vas_detc }{ lv_separator
} { ls_lfm1-j_1nboesl }{ lv_separator
} { ls_lfm1-upprs }{ lv_separator
} { ls_lfm1-activity_profil }{ lv_separator
} { ls_lfm1-transport_chain }{ lv_separator
} { ls_lfm1-staging_time }{ lv_separator }|.
    APPEND lv_csv_data2 TO lt_csv_data.
    CLEAR: ls_lfm1.
  ENDLOOP.

ENDFORM.
*&---------------------------------------------------------------------*
*& Form lfb1_data
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM lfb1_data .
* Select data from LFM1 table
  SELECT * FROM lfb1 INTO CORRESPONDING FIELDS OF TABLE lt_lFB1.
*  SELECT * FROM lfb1 INTO CORRESPONDING FIELDS OF TABLE lt_lFB1
*    WHERE lifnr = so_lifnr.
  SORT lt_lfb1 BY lifnr.
* Check if any data is selected
  CLEAR : lv_csvname.
  IF lt_lfB1 IS INITIAL.
    lv_csvname = 'EXPORT_LFB1.csv'.
    MESSAGE 'Data not found in LFB1 table.' TYPE 'I' DISPLAY LIKE 'E'.  " Display message as error
    LEAVE PROGRAM.
  ELSE.
    lv_csvname = 'EXPORT_LFB1.csv'.
  ENDIF.

* Prepare the CSV header row
  DATA(lv_csv_data3) = |Source ID{ lv_separator
}Company Code{ lv_separator
}Assignment ID{ lv_separator
}Personnel Number{ lv_separator
}Created on{ lv_separator
}Created by{ lv_separator
}Posting block for company code{ lv_separator
}Deletion flag for company code{ lv_separator
}Sort key{ lv_separator
}Reconciliation acct{ lv_separator
}Authorization Group{ lv_separator
}Interest indicator{ lv_separator
}Payment Methods{ lv_separator
}Clearing with cust.{ lv_separator
}Payment Block{ lv_separator
}Payment terms{ lv_separator
}Account with vendor{ lv_separator
}Clerk at vendor{ lv_separator
}Account Memo{ lv_separator
}Planning Group{ lv_separator
}Clerk Abbreviation{ lv_separator
}Head office{ lv_separator
}Alternative payee{ lv_separator
}Key Date of Last Int. Calc.{ lv_separator
}Interest Calc. Frequency{ lv_separator
}Date of Last Interest Calc.{ lv_separator
}Local Processing{ lv_separator
}Bill/Ex. Limit{ lv_separator
}Check Cashing Time{ lv_separator
}Check Double Invoice{ lv_separator
}Tolerance Group{ lv_separator
}House Bank{ lv_separator
}Individual Payment{ lv_separator
}Exemption Number{ lv_separator
}Valid Until{ lv_separator
}Withholding Tax Code{ lv_separator
}Subsidy Indicator{ lv_separator
}Minority Indicator{ lv_separator
}Previous Account No.{ lv_separator
}Grouping key{ lv_separator
}Grouping Key{ lv_separator
}Pmt Meth. Supplement{ lv_separator
}Recipient Type{ lv_separator
}Exemption Authority{ lv_separator
}WTax Country{ lv_separator
}Pmnt advice by EDI{ lv_separator
}Release Group{ lv_separator
}Tolerance Group{ lv_separator
}Acctg clerk's fax{ lv_separator
}Clrk's internet add.{ lv_separator
}Accts for Alt. Payee{ lv_separator
}Credit Memo Pyt Term{ lv_separator
}Activity Code GI Tax{ lv_separator
}Distribution Type{ lv_separator
}Account Statement{ lv_separator
}Certification Date{ lv_separator
}Confirm.Status f.CCd{ lv_separator
}Confirmation date{ lv_separator
}Confirmation time{ lv_separator
}CoCd deletion block{ lv_separator
}Acct.clerks tel.no.{ lv_separator
}Paymt Advice by XML{ lv_separator
}E-Mail for Avis{ lv_separator
}Business Purpose Completed Flag{ lv_separator
}main economic activity per CIIU code{ lv_separator
}Payment Clearing Group ID{ lv_separator
}LFB1_EEW_CC{ lv_separator
}Last Changed On{ lv_separator
}Vendor{ lv_separator
}Assignment ID{ lv_separator
}Industry{ lv_separator
}Amount for Payment Program{ lv_separator
}Foreign Shareholder{ lv_separator
}Share of Foreign Corporate Body{ lv_separator
}Notes{ lv_separator
}Shareholder is Active{ lv_separator
}Country Key{ lv_separator
}US Recipient GIIN{ lv_separator
}US Recipient Foreign Tax ID{ lv_separator
}US Recipient Date Of Birth{ lv_separator
}LOB Treaty Code{ lv_separator
}W8 Form Received Date{ lv_separator
}W9 Form Received Date{ lv_separator
}Second TIN Notice from IRS{ lv_separator
}Partnership Interest Indicator{ lv_separator
}Ledger expiration date{ lv_separator
}Future Withholding tax code{ lv_separator
}Valid until{ lv_separator
}Future Exemption number{ lv_separator
}Certification date  minimum wage{ lv_separator
}Subcontractor Type{ lv_separator
}Completion Date Of Inspection{ lv_separator
}Offset Method{ lv_separator
}Offset Percentage{ lv_separator
}Prepayment Relevance (Supplier Master){ lv_separator
}Assignment Test Group{ lv_separator }|.
  APPEND lv_csv_data3 TO lt_csv_data.
  LOOP AT lt_lfb1 INTO ls_lfb1.
    DATA(lv_erdat3) = |{ ls_lfb1-erdat+6(2) }.{ ls_lfb1-erdat+4(2) }.{ ls_lfb1-erdat+0(4) }|.
    DATA(lv_ZINDT) = |{ ls_lfb1-zindt+6(2) }.{ ls_lfb1-zindt+4(2) }.{ ls_lfb1-zindt+0(4) }|.
*    DATA(lv_KULTG) = |{ ls_lfb1-KULTG+0(2) }:{ ls_lfb1-KULTG+2(2) }:{ ls_lfb1-KULTG+4(2) } |.
    lv_csv_data3 = |{ ls_lfb1-lifnr }{ lv_separator
  } { ls_lfb1-bukrs }{ lv_separator
  } { '''' && lv_assid }{ lv_separator
  } { ls_lfb1-pernr }{ lv_separator
  } { lv_erdat3 }{ lv_separator
  } { ls_lfb1-ernam }{ lv_separator
  } { ls_lfb1-sperr }{ lv_separator
  } { ls_lfb1-loevm }{ lv_separator
  } { '''' && ls_lfb1-zuawa }{ lv_separator "Sort key
  } { ls_lfb1-akont }{ lv_separator
  } { ls_lfb1-begru }{ lv_separator
  } { ls_lfb1-vzskz }{ lv_separator
  } { ls_lfb1-zwels }{ lv_separator
  } { ls_lfb1-xverr }{ lv_separator
  } { ls_lfb1-zahls }{ lv_separator
  } { ls_lfb1-zterm }{ lv_separator
  } { ls_lfb1-eikto }{ lv_separator
  } { ls_lfb1-zsabe }{ lv_separator
  } { ls_lfb1-kverm }{ lv_separator
  } { ls_lfb1-fdgrv }{ lv_separator
  } { '''' && ls_lfb1-busab }{ lv_separator "Clerk Abbreviation
  } { ls_lfb1-lnrze }{ lv_separator
  } { ls_lfb1-lnrzb }{ lv_separator
  } { lv_zindt }{ lv_separator     "Last Key Date
  } { ls_lfb1-zinrt }{ lv_separator
  } { ls_lfb1-datlz }{ lv_separator
  } { ls_lfb1-xdezv }{ lv_separator
  } { ls_lfb1-webtr }{ lv_separator
  } { ls_lfb1-kultg }{ lv_separator    "Chk cashng time
  } { 'X' }{ lv_separator
  } { ls_lfb1-togru }{ lv_separator
  } { ls_lfb1-hbkid }{ lv_separator
  } { ls_lfb1-xpore }{ lv_separator
  } { ls_lfb1-qsznr }{ lv_separator
  } { ls_lfb1-qszdt }{ lv_separator
  } { ls_lfb1-qsskz }{ lv_separator
  } { ls_lfb1-blnkz }{ lv_separator
  } { ls_lfb1-mindk }{ lv_separator
  } { ls_lfb1-altkn }{ lv_separator
  } { ls_lfb1-zgrup }{ lv_separator
  } { ls_lfb1-mgrup }{ lv_separator
  } { ls_lfb1-uzawe }{ lv_separator
  } { ls_lfb1-qsrec }{ lv_separator
  } { ls_lfb1-qsbgr }{ lv_separator
  } { ls_lfb1-qland }{ lv_separator
  } { ls_lfb1-xedip }{ lv_separator
  } { ls_lfb1-frgrp }{ lv_separator
  } { ls_lfb1-togrr }{ lv_separator
  } { ls_lfb1-tlfxs }{ lv_separator
  } { ls_lfb1-intad }{ lv_separator
  } { ls_lfb1-xlfzb }{ lv_separator
  } { ls_lfb1-guzte }{ lv_separator
  } { ls_lfb1-gricd }{ lv_separator
  } { ls_lfb1-gridt }{ lv_separator
  } { ls_lfb1-xausz }{ lv_separator
  } { ls_lfb1-cerdt }{ lv_separator
  } { ls_lfb1-confs }{ lv_separator
  } { ls_lfb1-updat }{ lv_separator
  } { ls_lfb1-uptim }{ lv_separator
  } { ls_lfb1-nodel }{ lv_separator
  } { ls_lfb1-tlfns }{ lv_separator
  } { ls_lfb1-avsnd }{ lv_separator
  } { ls_lfb1-ad_hash }{ lv_separator
  } { ls_lfb1-cvp_xblck_b }{ lv_separator
  } { ls_lfb1-ciiucode }{ lv_separator
  } { ls_lfb1-paymentclearinggrpid }{ lv_separator
  } { ls_lfb1-lfb1_eew_cc }{ lv_separator
  } { ' ' }{ lv_separator
  } { ls_lfb1-lifnr }{ lv_separator
  } { ' ' }{ lv_separator
  } { ls_lfb1-brsch }{ lv_separator
  } { ls_lfb1-wrbtr }{ lv_separator
  } { ls_lfb1-forgn }{ lv_separator
  } { ls_lfb1-share_in_foreign }{ lv_separator
  } { ls_lfb1-notes }{ lv_separator
  } { ls_lfb1-active }{ lv_separator
  } { ls_lfb1-us_rec_country }{ lv_separator
  } { ls_lfb1-us_giin }{ lv_separator
  } { ls_lfb1-us_ftid }{ lv_separator
  } { ls_lfb1-us_rec_dob }{ lv_separator
  } { ls_lfb1-us_lob_code }{ lv_separator
  } { ls_lfb1-us_w8_recvdate }{ lv_separator
  } { ls_lfb1-us_w9_recvdate }{ lv_separator
  } { ls_lfb1-us_tin_notice }{ lv_separator
  } { ls_lfb1-us_partnership_ind }{ lv_separator
  } { ls_lfb1-zbokd }{ lv_separator
  } { ls_lfb1-zqsskz }{ lv_separator
  } { ls_lfb1-zqszdt }{ lv_separator
  } { ls_lfb1-zqsznr }{ lv_separator
  } { ls_lfb1-zmindat }{ lv_separator
  } { ls_lfb1-j_sc_subcontype }{ lv_separator
  } { ls_lfb1-j_sc_compdate }{ lv_separator
  } { ls_lfb1-j_sc_offsm }{ lv_separator
  } { ls_lfb1-j_sc_offsr }{ lv_separator
  } { ls_lfb1-prepay_relevant }{ lv_separator
  } { ls_lfb1-assign_test }{ lv_separator }|.
    APPEND lv_csv_data3 TO lt_csv_data.
    CLEAR: ls_lfb1.
  ENDLOOP.

ENDFORM.
**************************************************
**      Form  adrc_data
**************************************************
**       text
**************************************************
**  -->  p1        text
**  <--  p2        text
**************************************************
** Change-Log:
** Change Number:                   Change Date:
** Request/ChaRM ID:
** Organizer:                       Developer:
** Reason:
**
**************************************************
FORM adrc_data .
* Select data from adrc table.
  SELECT *
    INTO CORRESPONDING FIELDS OF TABLE @lt_adrc
    FROM lfa1 AS l
    INNER JOIN adrc AS a ON l~adrnr = a~addrnumber.
*                  WHERE lfa1~lifnr = 'Your_Vendor_Number'. " Optional filter for a specific vendor

  SORT lt_adrc ASCENDING .
* Check if any data is selected
  CLEAR : lv_csvname.
  IF lt_adrc IS INITIAL.
    lv_csvname = 'EXPORT_ADRC.csv'.
    MESSAGE 'Data not found in LFB1 table.' TYPE 'I' DISPLAY LIKE 'E'.  " Display message as error
    LEAVE PROGRAM.
  ELSE.
    lv_csvname = 'EXPORT_ADRC.csv'.
  ENDIF.

*  Prepare the csv header row
  DATA(lv_csv_data4) = |COMMENT{ lv_separator
}_ACTION_CODE{ lv_separator
}SOURCE_ID{ lv_separator
}SOURCE_ADDRNUMBER{ lv_separator
}DATE_FROM{ lv_separator
}NATION{ lv_separator
}ADDRNUMBER{ lv_separator
}DATE_TO{ lv_separator
}TITLE{ lv_separator
}NAME1{ lv_separator
}NAME2{ lv_separator
}NAME3{ lv_separator
}NAME4{ lv_separator
}NAME_TEXT{ lv_separator
}NAME_CO{ lv_separator
}CITY1{ lv_separator
}CITY2{ lv_separator
}CITY_CODE{ lv_separator
}CITYP_CODE{ lv_separator
}HOME_CITY{ lv_separator
}CITYH_CODE{ lv_separator
}CHCKSTATUS{ lv_separator
}REGIOGROUP{ lv_separator
}POST_CODE1{ lv_separator
}POST_CODE2{ lv_separator
}POST_CODE3{ lv_separator
}PCODE1_EXT{ lv_separator
}PCODE2_EXT{ lv_separator
}PCODE3_EXT{ lv_separator
}PO_BOX{ lv_separator
}DONT_USE_P{ lv_separator
}PO_BOX_NUM{ lv_separator
}PO_BOX_LOC{ lv_separator
}CITY_CODE2{ lv_separator
}PO_BOX_REG{ lv_separator
}PO_BOX_CTY{ lv_separator
}POSTALAREA{ lv_separator
}TRANSPZONE{ lv_separator
}STREET{ lv_separator
}DONT_USE_S{ lv_separator
}STREETCODE{ lv_separator
}STREETABBR{ lv_separator
}HOUSE_NUM1{ lv_separator
}HOUSE_NUM2{ lv_separator
}HOUSE_NUM3{ lv_separator
}STR_SUPPL1{ lv_separator
}STR_SUPPL2{ lv_separator
}STR_SUPPL3{ lv_separator
}LOCATION{ lv_separator
}BUILDING{ lv_separator
}FLOOR{ lv_separator
}ROOMNUMBER{ lv_separator
}COUNTRY{ lv_separator
}LANGU{ lv_separator
}REGION{ lv_separator
}ADDR_GROUP{ lv_separator
}FLAGGROUPS{ lv_separator
}PERS_ADDR{ lv_separator
}SORT1{ lv_separator
}SORT2{ lv_separator
}SORT_PHN{ lv_separator
}DEFLT_COMM{ lv_separator
}TEL_NUMBER{ lv_separator
}TEL_EXTENS{ lv_separator
}FAX_NUMBER{ lv_separator
}FAX_EXTENS{ lv_separator
}FLAGCOMM2{ lv_separator
}FLAGCOMM3{ lv_separator
}FLAGCOMM4{ lv_separator
}FLAGCOMM5{ lv_separator
}FLAGCOMM6{ lv_separator
}FLAGCOMM7{ lv_separator
}FLAGCOMM8{ lv_separator
}FLAGCOMM9{ lv_separator
}FLAGCOMM10{ lv_separator
}FLAGCOMM11{ lv_separator
}FLAGCOMM12{ lv_separator
}FLAGCOMM13{ lv_separator
}ADDRORIGIN{ lv_separator
}MC_NAME1{ lv_separator
}MC_CITY1{ lv_separator
}MC_STREET{ lv_separator
}EXTENSION1{ lv_separator
}EXTENSION2{ lv_separator
}TIME_ZONE{ lv_separator
}TAXJURCODE{ lv_separator
}ADDRESS_ID{ lv_separator
}LANGU_CREA{ lv_separator
}ADRC_UUID{ lv_separator
}UUID_BELATED{ lv_separator
}ID_CATEGORY{ lv_separator
}ADRC_ERR_STATUS{ lv_separator
}PO_BOX_LOBBY{ lv_separator
}DELI_SERV_TYPE{ lv_separator
}DELI_SERV_NUMBER{ lv_separator
}COUNTY_CODE{ lv_separator
}COUNTY{ lv_separator
}TOWNSHIP_CODE{ lv_separator
}TOWNSHIP{ lv_separator
}MC_COUNTY{ lv_separator
}MC_TOWNSHIP{ lv_separator
}XPCPT{ lv_separator
}SOURCE_RECENCY{ lv_separator
}DUNS{ lv_separator
}DUNSP4{ lv_separator }|.
  APPEND lv_csv_data4 TO lt_csv_data.
  LOOP AT lt_ADRC INTO ls_ADRC.
    DATA(lv_erdat3) = |{ ls_lfb1-erdat+6(2) }.{ ls_lfb1-erdat+4(2) }.{ ls_lfb1-erdat+0(4) }|.
    DATA(lv_ZINDT) = |{ ls_lfb1-zindt+6(2) }.{ ls_lfb1-zindt+4(2) }.{ ls_lfb1-zindt+0(4) }|.
*    DATA(lv_KULTG) = |{ ls_lfb1-KULTG+0(2) }:{ ls_lfb1-KULTG+2(2) }:{ ls_lfb1-KULTG+4(2) } |.
    lv_csv_data4 = |{ ' ' }{ lv_separator
}  { '' }{ lv_separator       "ls_adrc-ACTION_CODE
}  { ls_adrc-lifnr }{ lv_separator    "Source ID
}  { ls_adrc-include-addrnumber }{ lv_separator   "source_addrnumber s
}  { ls_adrc-include-date_from }{ lv_separator
}  { ls_adrc-include-nation }{ lv_separator
}  { ls_adrc-include-addrnumber }{ lv_separator
}  { ls_adrc-include-date_to }{ lv_separator
}  { ls_adrc-include-title }{ lv_separator
}  { ls_adrc-include-name1 }{ lv_separator
}  { ls_adrc-include-name2 }{ lv_separator
}  { ls_adrc-include-name3 }{ lv_separator
}  { ls_adrc-include-name4 }{ lv_separator
}  { ls_adrc-include-name_text }{ lv_separator
}  { ls_adrc-include-name_co }{ lv_separator
}  { ls_adrc-include-city1 }{ lv_separator
}  { ls_adrc-include-city2 }{ lv_separator
}  { ls_adrc-include-city_code }{ lv_separator
}  { ls_adrc-include-cityp_code }{ lv_separator
}  { ls_adrc-include-home_city }{ lv_separator
}  { ls_adrc-include-cityh_code }{ lv_separator
}  { ls_adrc-include-chckstatus }{ lv_separator
}  { ls_adrc-include-regiogroup }{ lv_separator
}  { ls_adrc-include-post_code1 }{ lv_separator
}  { ls_adrc-include-post_code2 }{ lv_separator
}  { ls_adrc-include-post_code3 }{ lv_separator
}  { ls_adrc-include-pcode1_ext }{ lv_separator
}  { ls_adrc-include-pcode2_ext }{ lv_separator
}  { ls_adrc-include-pcode3_ext }{ lv_separator
}  { ls_adrc-include-po_box }{ lv_separator
}  { ls_adrc-include-dont_use_p }{ lv_separator
}  { ls_adrc-include-po_box_num }{ lv_separator
}  { ls_adrc-include-po_box_loc }{ lv_separator
}  { ls_adrc-include-city_code2 }{ lv_separator
}  { ls_adrc-include-po_box_reg }{ lv_separator
}  { ls_adrc-include-po_box_cty }{ lv_separator
}  { ls_adrc-include-postalarea }{ lv_separator
}  { ls_adrc-include-transpzone }{ lv_separator
}  { ls_adrc-include-street }{ lv_separator
}  { ls_adrc-include-dont_use_s }{ lv_separator
}  { ls_adrc-include-streetcode }{ lv_separator
}  { ls_adrc-include-streetabbr }{ lv_separator
}  { ls_adrc-include-house_num1 }{ lv_separator
}  { ls_adrc-include-house_num2 }{ lv_separator
}  { ls_adrc-include-house_num3 }{ lv_separator
}  { ls_adrc-include-str_suppl1 }{ lv_separator
}  { ls_adrc-include-str_suppl2 }{ lv_separator
}  { ls_adrc-include-str_suppl3 }{ lv_separator
}  { ls_adrc-include-location }{ lv_separator
}  { ls_adrc-include-building }{ lv_separator
}  { ls_adrc-include-floor }{ lv_separator
}  { ls_adrc-include-roomnumber }{ lv_separator
}  { ls_adrc-include-country }{ lv_separator
}  { ls_adrc-include-langu }{ lv_separator
}  { ls_adrc-include-region }{ lv_separator
}  { ls_adrc-include-addr_group }{ lv_separator
}  { ls_adrc-include-flaggroups }{ lv_separator
}  { ls_adrc-include-pers_addr }{ lv_separator
}  { ls_adrc-include-sort1 }{ lv_separator
}  { ls_adrc-include-sort2 }{ lv_separator
}  { ls_adrc-include-sort_phn }{ lv_separator
}  { ls_adrc-include-deflt_comm }{ lv_separator
}  { ls_adrc-include-tel_number }{ lv_separator
}  { ls_adrc-include-tel_extens }{ lv_separator
}  { ls_adrc-include-fax_number }{ lv_separator
}  { ls_adrc-include-fax_extens }{ lv_separator
}  { ls_adrc-include-flagcomm2 }{ lv_separator
}  { ls_adrc-include-flagcomm3 }{ lv_separator
}  { ls_adrc-include-flagcomm4 }{ lv_separator
}  { ls_adrc-include-flagcomm5 }{ lv_separator
}  { ls_adrc-include-flagcomm6 }{ lv_separator
}  { ls_adrc-include-flagcomm7 }{ lv_separator
}  { ls_adrc-include-flagcomm8 }{ lv_separator
}  { ls_adrc-include-flagcomm9 }{ lv_separator
}  { ls_adrc-include-flagcomm10 }{ lv_separator
}  { ls_adrc-include-flagcomm11 }{ lv_separator
}  { ls_adrc-include-flagcomm12 }{ lv_separator
}  { ls_adrc-include-flagcomm13 }{ lv_separator
}  { ls_adrc-include-addrorigin }{ lv_separator
}  { ls_adrc-include-mc_name1 }{ lv_separator
}  { ls_adrc-include-mc_city1 }{ lv_separator
}  { ls_adrc-include-mc_street }{ lv_separator
}  { ls_adrc-include-extension1 }{ lv_separator
}  { ls_adrc-include-extension2 }{ lv_separator
}  { ls_adrc-include-time_zone }{ lv_separator
}  { ls_adrc-include-taxjurcode }{ lv_separator
}  { ls_adrc-include-address_id }{ lv_separator
}  { ls_adrc-include-langu_crea }{ lv_separator
}  { ls_adrc-include-adrc_uuid }{ lv_separator
}  { ls_adrc-include-uuid_belated }{ lv_separator
}  { ls_adrc-include-id_category }{ lv_separator
}  { ls_adrc-include-adrc_err_status }{ lv_separator
}  { ls_adrc-include-po_box_lobby }{ lv_separator
}  { ls_adrc-include-deli_serv_type }{ lv_separator
}  { ls_adrc-include-deli_serv_number }{ lv_separator
}  { ls_adrc-include-county_code }{ lv_separator
}  { ls_adrc-include-county }{ lv_separator
}  { ls_adrc-include-township_code }{ lv_separator
}  { ls_adrc-include-township }{ lv_separator
}  { ls_adrc-include-mc_county }{ lv_separator
}  { ls_adrc-include-mc_township }{ lv_separator
}  { ls_adrc-include-xpcpt }{ lv_separator
*}  { ls_adrc-source_recency }{ lv_separator
}  { ls_adrc-include-duns }{ lv_separator
}  { ls_adrc-include-dunsp4 }{ lv_separator }|.
    APPEND lv_csv_data4 TO lt_csv_data.
    CLEAR: ls_adrc.
  ENDLOOP.
ENDFORM.
