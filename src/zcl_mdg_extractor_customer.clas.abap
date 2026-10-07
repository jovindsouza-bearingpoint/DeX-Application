CLASS zcl_mdg_extractor_customer DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ty_kna1_t,
        _comment             TYPE zcomment_txt,
        _action_code         TYPE c LENGTH 10,
        source_id            TYPE kunnr,
        assignment_id        TYPE c LENGTH 50,
        kunnr                TYPE kna1-kunnr,
        land1                TYPE kna1-land1,
        name1                TYPE kna1-name1,
        name2                TYPE kna1-name2,
        ort01                TYPE kna1-ort01,
        pstlz                TYPE kna1-pstlz,
        regio                TYPE kna1-regio,
        sortl                TYPE kna1-sortl,
        stras                TYPE kna1-stras,
        telf1                TYPE kna1-telf1,
        telfx                TYPE kna1-telfx,
        xcpdk                TYPE kna1-xcpdk,
        adrnr                TYPE kna1-adrnr,
        mcod1                TYPE kna1-mcod1,
        mcod2                TYPE kna1-mcod2,
        mcod3                TYPE kna1-mcod3,
        anred                TYPE kna1-anred,
        aufsd                TYPE kna1-aufsd,
        bahne                TYPE kna1-bahne,
        bahns                TYPE kna1-bahns,
        bbbnr                TYPE kna1-bbbnr,
        bbsnr                TYPE kna1-bbsnr,
        begru                TYPE kna1-begru,
        brsch                TYPE kna1-brsch,
        bubkz                TYPE kna1-bubkz,
        datlt                TYPE kna1-datlt,
        erdat                TYPE char10,
        ernam                TYPE kna1-ernam,
        exabl                TYPE kna1-exabl,
        faksd                TYPE kna1-faksd,
        fiskn                TYPE kna1-fiskn,
        knazk                TYPE kna1-knazk,
        knrza                TYPE kna1-knrza,
        konzs                TYPE kna1-konzs,
        ktokd                TYPE kna1-ktokd,
        kukla                TYPE kna1-kukla,
        lifnr                TYPE kna1-kunnr,
        lifsd                TYPE kna1-lifsd,
        locco                TYPE kna1-locco,
        loevm                TYPE kna1-loevm,
        name3                TYPE kna1-name3,
        name4                TYPE kna1-name4,
        niels                TYPE kna1-niels,
        ort02                TYPE kna1-ort02,
        pfach                TYPE kna1-pfach,
        pstl2                TYPE kna1-pstl2,
        counc                TYPE kna1-counc,
        cityc                TYPE kna1-cityc,
        rpmkr                TYPE kna1-rpmkr,
        sperr                TYPE kna1-sperr,
        spras                TYPE kna1-spras,
        stcd1                TYPE kna1-stcd1,
        stcd2                TYPE kna1-stcd2,
        stkza                TYPE kna1-stkza,
        stkzu                TYPE kna1-stkzu,
        telbx                TYPE kna1-telbx,
        telf2                TYPE kna1-telf2,
        teltx                TYPE kna1-teltx,
        telx1                TYPE kna1-telx1,
        lzone                TYPE kna1-lzone,
        xzemp                TYPE kna1-xzemp,
        vbund                TYPE kna1-vbund,
        stceg                TYPE kna1-stceg,
        dear1                TYPE kna1-dear1,
        dear2                TYPE kna1-dear2,
        dear3                TYPE kna1-dear3,
        dear4                TYPE kna1-dear4,
        dear5                TYPE kna1-dear5,
        gform                TYPE kna1-gform,
        bran1                TYPE kna1-bran1,
        bran2                TYPE kna1-bran2,
        bran3                TYPE kna1-bran3,
        bran4                TYPE kna1-bran4,
        bran5                TYPE kna1-bran5,
        ekont                TYPE kna1-ekont,
        umsat                TYPE kna1-umsat,
        umjah                TYPE kna1-umjah,
        uwaer                TYPE kna1-uwaer,
        jmzah                TYPE kna1-jmzah,
        jmjah                TYPE kna1-jmjah,
        katr1                TYPE kna1-katr1,
        katr2                TYPE kna1-katr2,
        katr3                TYPE kna1-katr3,
        katr4                TYPE kna1-katr4,
        katr5                TYPE kna1-katr5,
        katr6                TYPE kna1-katr6,
        katr7                TYPE kna1-katr7,
        katr8                TYPE kna1-katr8,
        katr9                TYPE kna1-katr9,
        katr10               TYPE kna1-katr10,
        stkzn                TYPE kna1-stkzn,
        umsa1                TYPE kna1-umsa1,
        txjcd                TYPE kna1-txjcd,
        periv                TYPE kna1-periv,
        abrvw                TYPE kna1-abrvw,
        inspbydebi           TYPE kna1-inspbydebi,
        inspatdebi           TYPE kna1-inspatdebi,
        ktocd                TYPE kna1-ktocd,
        pfort                TYPE kna1-pfort,
        werks                TYPE kna1-werks,
        dtams                TYPE kna1-dtams,
        dtaws                TYPE kna1-dtaws,
        duefl                TYPE kna1-duefl,
        hzuor                TYPE kna1-hzuor,
        sperz                TYPE kna1-sperz,
        etikg                TYPE kna1-etikg,
        civve                TYPE kna1-civve,
        milve                TYPE kna1-milve,
        kdkg1                TYPE kna1-kdkg1,
        kdkg2                TYPE kna1-kdkg2,
        kdkg3                TYPE kna1-kdkg3,
        kdkg4                TYPE kna1-kdkg4,
        kdkg5                TYPE kna1-kdkg5,
        xknza                TYPE kna1-xknza,
        fityp                TYPE kna1-fityp,
        stcdt                TYPE kna1-stcdt,
        stcd3                TYPE kna1-stcd3,
        stcd4                TYPE kna1-stcd4,
        stcd5                TYPE kna1-stcd5,
        stcd6                TYPE kna1-stcd6,
        xicms                TYPE kna1-xicms,
        xxipi                TYPE kna1-xxipi,
        xsubt                TYPE kna1-xsubt,
        cfopc                TYPE kna1-cfopc,
        txlw1                TYPE kna1-txlw1,
        txlw2                TYPE kna1-txlw2,
        ccc01                TYPE kna1-ccc01,
        ccc02                TYPE kna1-ccc02,
        ccc03                TYPE kna1-ccc03,
        ccc04                TYPE kna1-ccc04,
        bonded_area_confirm  TYPE kna1-bonded_area_confirm,
        donate_mark          TYPE kna1-donate_mark,
        consolidate_invoice  TYPE kna1-consolidate_invoice,
        allowance_type       TYPE kna1-allowance_type,
        einvoice_mode        TYPE kna1-einvoice_mode,
        b2c_indicator        TYPE kna1-b2c_indicator,
        cassd                TYPE kna1-cassd,
        knurl                TYPE kna1-knurl,
        j_1kfrepre           TYPE kna1-j_1kfrepre,
        j_1kftbus            TYPE kna1-j_1kftbus,
        j_1kftind            TYPE kna1-j_1kftind,
        confs                TYPE kna1-confs,
        updat                TYPE kna1-updat,
        uptim                TYPE kna1-uptim,
        nodel                TYPE kna1-nodel,
        dear6                TYPE kna1-dear6,
        delivery_date_rule   TYPE kna1-delivery_date_rule,
        cvp_xblck            TYPE kna1-cvp_xblck,
        suframa              TYPE kna1-suframa,
        rg                   TYPE kna1-rg,
        exp                  TYPE kna1-exp,
        uf                   TYPE kna1-uf,
        rgdate               TYPE kna1-rgdate,
        ric                  TYPE kna1-ric,
        rne                  TYPE kna1-rne,
        rnedate              TYPE kna1-rnedate,
        cnae                 TYPE kna1-cnae,
        legalnat             TYPE kna1-legalnat,
        crtn                 TYPE kna1-crtn,
        icmstaxpay           TYPE kna1-icmstaxpay,
        indtyp               TYPE kna1-indtyp,
        tdt                  TYPE kna1-tdt,
        comsize              TYPE kna1-comsize,
        decregpc             TYPE kna1-decregpc,
        ph_biz_style         TYPE kna1-ph_biz_style,
        paytrsn              TYPE kna1-paytrsn,
        kna1_eew_cust        TYPE kna1-kna1_eew_cust,
        rule_exclusion       TYPE kna1-rule_exclusion,
        data_ctrlr1          TYPE kna1-data_ctrlr1,
        data_ctrlr2          TYPE kna1-data_ctrlr2,
        data_ctrlr3          TYPE kna1-data_ctrlr3,
        data_ctrlr4          TYPE kna1-data_ctrlr4,
        data_ctrlr5          TYPE kna1-data_ctrlr5,
        data_ctrlr6          TYPE kna1-data_ctrlr6,
        data_ctrlr7          TYPE kna1-data_ctrlr7,
        data_ctrlr8          TYPE kna1-data_ctrlr8,
        data_ctrlr9          TYPE kna1-data_ctrlr9,
        data_ctrlr10         TYPE kna1-data_ctrlr10,
        xdcset               TYPE kna1-xdcset,
        target_assignment_id TYPE kna1-kunnr,
        j_1iexcd             TYPE kna1-j_1iexcd,
        j_1iexrn             TYPE kna1-j_1iexrn,
        j_1iexrg             TYPE kna1-j_1iexrg,
        j_1iexdi             TYPE kna1-j_1iexdi,
        j_1iexco             TYPE kna1-j_1iexco,
        j_1icstno            TYPE kna1-j_1icstno,
        j_1ilstno            TYPE kna1-j_1ilstno,
        j_1ipanno            TYPE kna1-j_1ipanno,
        j_1iexcicu           TYPE kna1-j_1iexcicu,
        aedat                TYPE kna1-aedat,
        usnam                TYPE kna1-usnam,
        j_1isern             TYPE kna1-j_1isern,
        j_1ipanref           TYPE kna1-j_1ipanref,
        gst_tds              TYPE kna1-gst_tds,
        /vso/r_palhgt        TYPE kna1-/vso/r_palhgt,
        /vso/r_pal_ul        TYPE kna1-/vso/r_pal_ul,
        /vso/r_pk_mat        TYPE kna1-/vso/r_pk_mat,
        /vso/r_matpal        TYPE kna1-/vso/r_matpal,
        /vso/r_i_no_lyr      TYPE kna1-/vso/r_i_no_lyr,
        /vso/r_one_mat       TYPE kna1-/vso/r_one_mat,
        /vso/r_one_sort      TYPE kna1-/vso/r_one_sort,
      END OF ty_kna1_t .
    TYPES:
      ty_kna1 TYPE STANDARD TABLE OF ty_kna1_t WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_tab,
        targ_struc TYPE string,
        targ_field TYPE string,
        rule_typ   TYPE string,
        rule       TYPE string,
      END OF ty_tab .
    TYPES:
      ty_tab1 TYPE STANDARD TABLE OF ty_tab .
    TYPES:
      BEGIN OF ty_but000_str,
        _comment          TYPE zcomment_txt,
*        _action_code      TYPE c LENGTH 10,
        source_id         TYPE kunnr,
        partner           TYPE partner,
        type              TYPE bu_type,
        bpkind            TYPE bu_bpkind,
        bu_group          TYPE bu_group,
        bpext             TYPE bu_bpext,
        bu_sort1          TYPE bu_sort1,
        bu_sort2          TYPE bu_sort2,
        source            TYPE bu_source,
        title             TYPE ad_title,
        xdele             TYPE bu_xdele,
        xblck             TYPE bu_xblck,
        augrp             TYPE bu_augrp,
        title_let         TYPE bu_title_let,
        bu_logsys         TYPE logsys,
        contact           TYPE bu_contact,
        not_released      TYPE bu_xnot_released,
        not_lg_competent  TYPE bu_not_leg_competent,
        print_mode        TYPE bu_print_mode,
        bp_eew_dummy      TYPE dummy,
        /zfz/zfclid       TYPE c LENGTH 30,
        /zfz/zchny        TYPE c LENGTH 30,
        /zfz/zchcy        TYPE c LENGTH 30,
        /zfz/zchw         TYPE c LENGTH 30,
        /zfz/zvbund       TYPE c LENGTH 30,
        /zfz/zname1       TYPE ad_name1,
        /zfz/zname2       TYPE ad_name2,
        /zfz/zcity        TYPE c LENGTH 30,
        /zfz/zqstat_check TYPE c LENGTH 30,
        /zfz/zqstatus     TYPE c LENGTH 30,
        /zfz/zhcheck      TYPE c LENGTH 30,
        /zfz/zsales       TYPE c LENGTH 30,
        /zfz/zktokd       TYPE c LENGTH 30,
        /zfz/znatsec      TYPE c LENGTH 30,
        /zfz/zcomment     TYPE c LENGTH 30,
        /zfz/zhchange     TYPE c LENGTH 30,
        /zfz/znodeid      TYPE c LENGTH 30,
        /zfz/zfclidcorr   TYPE c LENGTH 30,
        /zfz/zcns         TYPE c LENGTH 30,
        /zfz/zshare_d     TYPE c LENGTH 30,
        /zfz/zshare       TYPE c LENGTH 30,
        /zfz/zxdele       TYPE c LENGTH 30,
        /zfz/zmteam       TYPE c LENGTH 30,
        /zfz/zoemgrp      TYPE c LENGTH 30,
        /zfz/zoem         TYPE c LENGTH 30,
        /zfz/zweblink     TYPE c LENGTH 30,
        /zfz/zmdmid       TYPE c LENGTH 30,
        /zfz/spras_local  TYPE c LENGTH 30,
        rate              TYPE rate,
        name_org1         TYPE bu_nameor1,
        name_org2         TYPE bu_nameor2,
        name_org3         TYPE bu_nameor3,
        name_org4         TYPE bu_nameor4,
        legal_enty        TYPE bu_nameor4,
        ind_sector        TYPE bu_legenty,
        legal_org         TYPE bu_indsect,
        found_dat         TYPE bu_legal_org,
        liquid_dat        TYPE bu_dc_not_req,
        location_1        TYPE bbbnr,
        location_2        TYPE bbsnr,
        location_3        TYPE bubkz,
        name_last         TYPE bu_namep_l,
        name_first        TYPE bu_namep_f,
        name_lst2         TYPE bu_namepl2,
        name_last2        TYPE bu_birthnm,
        namemiddle        TYPE bu_namemid,
        title_aca1        TYPE ad_title1,
        title_aca2        TYPE ad_title2,
        title_royl        TYPE ad_titles,
        prefix1           TYPE ad_prefix,
        prefix2           TYPE ad_prefix2,
        name1_text        TYPE bu_name1tx,
        nickname          TYPE bu_nicknam,
        initials          TYPE ad_inits,
        nameformat        TYPE ad_format,
        namcountry        TYPE ad_namctry,
        langu_corr        TYPE bu_langu_corr,
        xsexm             TYPE bu_xsexm,
        xsexf             TYPE bu_xsexf,
        birthpl           TYPE bu_birthpl,
        marst             TYPE bu_marst,
        emplo             TYPE bu_emplo,
        jobgr             TYPE bu_jobgr,
        natio             TYPE bu_natio,
        cntax             TYPE bu_cntax,
        cndsc             TYPE bu_cndsc,
        persnumber        TYPE ad_persnum,
        xsexu             TYPE bu_xsexu,
        xubname           TYPE bu_xubname,
        bu_langu          TYPE bu_langu,
        gender            TYPE bu_sexid,
        birthdt           TYPE bu_birthdt,
        deathdt           TYPE bu_deathdt,
        perno             TYPE bu_perno,
        children          TYPE bu_children,
        mem_house         TYPE bu_mem_house,
        birthdt_status    TYPE bu_birthdt_status,
        partgrptyp        TYPE bu_grptyp,
        name_grp1         TYPE bu_namegr1,
        name_grp2         TYPE bu_namegr2,
        mc_name1          TYPE bu_mcname1,
        mc_name2          TYPE bu_mcname2,
        crusr             TYPE bu_crusr,
        crdat             TYPE bu_crdat,
        crtim             TYPE bu_crtim,
        chusr             TYPE bu_chusr,
        chdat             TYPE bu_chdat,
        chtim             TYPE bu_chtim,
        partner_guid      TYPE bu_partner_guid,
        addrcomm          TYPE bu_addrcomm,
        td_switch         TYPE bu_td_switch,
        is_org_centre     TYPE bu_is_org_centre,
        db_key            TYPE sysuuid_x,
        valid_from        TYPE bu_bp_valid_from,
        valid_to          TYPE bu_bp_valid_to,
        natpers           TYPE stkzn,
        source_recency    TYPE kunnr,
        milve             TYPE milve,
        nuc_sec           TYPE nuc_sec,
        par_rel           TYPE bp_par_rel,
        bp_sort           TYPE bp_sort_ph,
        kbanks            TYPE banks,
        kbankl            TYPE bankk,
      END OF ty_but000_str .
    TYPES:
      ty_but000 TYPE STANDARD TABLE OF ty_but000_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_but020_str,
        _comment          TYPE zcomment_txt,
        _action_code      TYPE c LENGTH 10,
        source_id         TYPE kunnr,
        source_addrnumber TYPE ad_addrnum,
        partner           TYPE partner,
        addrnumber        TYPE ad_addrnum,
        xdfadr            TYPE bu_xdfadr,
        adext             TYPE bu_adext,
        nation            TYPE ad_nation,
        guid              TYPE sysuuid_c,
        move_addr         TYPE bu_move_addr,
        date_from         TYPE string,
*              date_from         TYPE bu_date_obsolete,
        address_guid      TYPE c LENGTH 20,
        addr_valid_from   TYPE bu_addr_valid_from,
        addr_valid_to     TYPE bu_addr_valid_to,
        addr_move_date    TYPE bu_addr_move_date,
        source_recency    TYPE c LENGTH 30,
      END OF ty_but020_str .
    TYPES:
      ty_but020 TYPE STANDARD TABLE OF ty_but020_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_but021_str ,
        _comment          TYPE zcomment_txt,
        _action_code      TYPE c LENGTH 10,
        source_id         TYPE kunnr,
        valid_to          TYPE string,
        adr_kind          TYPE bu_adrkind,
        source_addrnumber TYPE ad_addrnum,
        partner           TYPE partner,
        addrnumber        TYPE ad_addrnum,
        valid_from        TYPE bu_advw_valid_from,
        xdfadu            TYPE bu_xdfadu,
        source_recency    TYPE c LENGTH 30,
      END OF ty_but021_str .
    TYPES:
      ty_but021 TYPE STANDARD TABLE OF ty_but021_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_adrc_str,
        _comment          TYPE zcomment_txt,
        _action_code      TYPE c LENGTH 10,
        source_id         TYPE kunnr,
        source_addrnumber TYPE ad_addrnum,
        date_from         TYPE string,  "ad_date_fr,
        nation            TYPE ad_nation,
        addrnumber        TYPE ad_addrnum,
        date_to           TYPE char10,
        title             TYPE ad_title,
        name1             TYPE ad_name1,
        name2             TYPE ad_name2,
        name3             TYPE ad_name3,
        name4             TYPE ad_name4,
        name_text         TYPE ad_nametxt,
        name_co           TYPE ad_name_co,
        city1             TYPE ad_city1,
        city2             TYPE ad_city2,
        city_code         TYPE city_code,
        cityp_code        TYPE cityp_code,
        home_city         TYPE ad_city3,
        cityh_code        TYPE ad_cityhnm,
        chckstatus        TYPE ad_checkst,
        regiogroup        TYPE regiogroup,
        post_code1        TYPE ad_pstcd1,
        post_code2        TYPE ad_pstcd2,
        post_code3        TYPE ad_pstcd3,
        pcode1_ext        TYPE ad_pst1xt,
        pcode2_ext        TYPE ad_pst2xt,
        pcode3_ext        TYPE ad_pst3xt,
        po_box            TYPE ad_pobx,
        dont_use_p        TYPE ad_no_usep,
        po_box_num        TYPE ad_pobxnum,
        po_box_loc        TYPE ad_pobxloc,
        city_code2        TYPE ad_cit2num,
        po_box_reg        TYPE ad_pobxreg,
        po_box_cty        TYPE ad_pobxcty,
        postalarea        TYPE ad_pstlar,
        transpzone        TYPE lzone,
        street            TYPE ad_street,
        dont_use_s        TYPE ad_no_uses,
        streetcode        TYPE ad_strnum,
        streetabbr        TYPE ad_strabbr,
        house_num1        TYPE ad_hsnm1,
        house_num2        TYPE ad_hsnm2,
        house_num3        TYPE ad_hsnm3,
        str_suppl1        TYPE ad_strspp1,
        str_suppl2        TYPE ad_strspp2,
        str_suppl3        TYPE ad_strspp3,
        location          TYPE ad_lctn,
        building          TYPE ad_bldng,
        floor             TYPE ad_floor,
        roomnumber        TYPE ad_roomnum,
        country           TYPE land1,
        langu             TYPE spras,
        region            TYPE regio,
        addr_group        TYPE ad_group,
        flaggroups        TYPE ad_flggp,
        pers_addr         TYPE ad_prsaddr,
        sort1             TYPE ad_sort1,
        sort2             TYPE ad_sort2,
        sort_phn          TYPE ad_srtphn,
        deflt_comm        TYPE ad_comm,
        tel_number        TYPE ad_tlnmbr1,
        tel_extens        TYPE ad_tlxtns1,
        fax_number        TYPE ad_fxnmbr1,
        fax_extens        TYPE ad_fxxtns1,
        flagcomm2         TYPE ad_flgcm02,
        flagcomm3         TYPE ad_flgcm03,
        flagcomm4         TYPE ad_flgcm04,
        flagcomm5         TYPE ad_flgcm05,
        flagcomm6         TYPE ad_flgcm06,
        flagcomm7         TYPE ad_flgcm07,
        flagcomm8         TYPE ad_flgcm08,
        flagcomm9         TYPE ad_flgcm09,
        flagcomm10        TYPE ad_flgcm10,
        flagcomm11        TYPE ad_flgcm11,
        flagcomm12        TYPE ad_flgcm12,
        flagcomm13        TYPE ad_flgcm13,
        addrorigin        TYPE ad_origina,
        mc_name1          TYPE ad_mc_name,
        mc_city1          TYPE ad_mc_city,
        mc_street         TYPE ad_mc_strt,
        extension1        TYPE ad_extens1,
        extension2        TYPE ad_extens2,
        time_zone         TYPE ad_tzone,
        taxjurcode        TYPE ad_txjcd,
        address_id        TYPE ad_addr_id,
        langu_crea        TYPE ad_langucr,
        adrc_uuid         TYPE ad_uuid,
        uuid_belated      TYPE ad_uuid_belated,
        id_category       TYPE ad_id_category,
        adrc_err_status   TYPE ad_err_status,
        po_box_lobby      TYPE ad_po_box_lby,
        deli_serv_type    TYPE ad_delivery_service_type,
        deli_serv_number  TYPE ad_delivery_service_number,
        county_code       TYPE ad_cntynum,
        county            TYPE ad_county,
        township_code     TYPE ad_twshpnum,
        township          TYPE ad_township,
        mc_county         TYPE ad_mc_county,
        mc_township       TYPE ad_mc_twshp,
        xpcpt             TYPE ad_xpcpt,
        source_recency    TYPE c LENGTH 30,
        duns              TYPE ad_uuid_belated,
        dunsp4            TYPE ad_id_category,
      END OF ty_adrc_str .
    TYPES:
      ty_adrc TYPE STANDARD TABLE OF ty_adrc_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_adr2_str,
        _comment          TYPE zcomment_txt,
        _action_code      TYPE c LENGTH 10,
        source_id         TYPE kunnr,
        source_addrnumber TYPE ad_addrnum,
        date_from         TYPE string,  "ad_date_fr,
        consnumber        TYPE ad_consnum,
        addrnumber        TYPE ad_addrnum,
        country           TYPE ad_comctry,
        flgdefault        TYPE ad_flgdfnr,
        flg_nouse         TYPE ad_flnouse,
        home_flag         TYPE ad_flghome,
        tel_number        TYPE ad_tlnmbr,
        tel_extens        TYPE ad_tlxtns,
        telnr_long        TYPE ad_telnrlg,
        telnr_call        TYPE ad_telnrcl,
        dft_receiv        TYPE ad_flgsms,
        r3_user           TYPE ad_flgmob,
        valid_from        TYPE ad_valfrom,
        valid_to          TYPE ad_valto,
        source_recency    TYPE c LENGTH 30,
      END OF ty_adr2_str .
    TYPES:
      ty_adr2 TYPE STANDARD TABLE OF ty_adr2_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_adr6_str,
        __comment         TYPE zcomment_txt,
        _action_code      TYPE c LENGTH 10,
        source_id         TYPE kunnr,
        source_addrnumber TYPE ad_addrnum,
        date_from         TYPE string,  "ad_date_fr,
        consnumber        TYPE ad_consnum,
        addrnumber        TYPE kunnr,
        flgdefault        TYPE ad_flgdfad,
        flg_nouse         TYPE ad_flnouse,
        home_flag         TYPE ad_flghome,
        smtp_addr         TYPE ad_smtpadr,
        smtp_srch         TYPE ad_smtpad2,
        dft_receiv        TYPE ad_dftrcad,
        r3_user           TYPE ad_r3_user,
        encode            TYPE ad_encode,
        tnef              TYPE ad_tnef6,
        valid_from        TYPE ad_valfrom,
        valid_to          TYPE ad_valto,
        source_recency    TYPE c LENGTH 30,
      END OF ty_adr6_str .
    TYPES:
      ty_adr6 TYPE STANDARD TABLE OF ty_adr6_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_but0bk_str,
        _comment       TYPE zcomment_txt,
        _action_code   TYPE c LENGTH 10,
        source_id      TYPE kunnr,
        bkvid          TYPE bu_bkvid,
        partner        TYPE partner,
        banks          TYPE banks,
        bankl          TYPE bankl,
        bankn          TYPE bankn,
        bkont          TYPE bkont,
        bkref          TYPE bkref,
        koinh          TYPE bu_koinh,
        bkext          TYPE bu_bkext,
        xezer          TYPE bu_xezer,
        accname        TYPE bu_bankaccname,
        move_bkvid     TYPE bu_move_bkvid,
        protect        TYPE bu_protected,
        alias_is_used  TYPE bu_alias_is_used,
        bk_valid_from  TYPE kovon,  "bu_bk_valid_from,
        bk_valid_to    TYPE kobis, "bu_bk_valid_to,
        bk_move_date   TYPE bu_bk_move_date,
        bp_bank_guid   TYPE bu_bp_bank_guid,
        iban           TYPE bu_iban,
        bank_guid      TYPE bu_bank_guid,
        account_id     TYPE bu_account_id,
        check_digit    TYPE bu_account_check,
        account_type   TYPE bu_account_type,
        bp_eew_but0bk  TYPE dummy,
        source_recency TYPE c LENGTH 30,
      END OF ty_but0bk_str .
    TYPES:
      ty_but0bk TYPE STANDARD TABLE OF ty_but0bk_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_assignment,
        _comment             TYPE zcomment_txt,
        _action_code         TYPE c LENGTH 10,
        source_id            TYPE kunnr,
        assignment_id        TYPE char20,  "Adjust length/type as per requirement
        assignment_cat       TYPE char10,  "Category
        object_id            TYPE char20,
        standard             TYPE char1,   "Flag (Y/N)
        reason_id            TYPE char10,
        addrno               TYPE char10,
        source_addrnumber    TYPE char10,
        source_recency       TYPE char10,
        target_assignment_id TYPE char20,
      END OF ty_assignment .
    TYPES:
      ty_asst TYPE STANDARD TABLE OF ty_assignment WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_KNBW_str,
        _comment             TYPE zcomment_txt,
        _action_code         TYPE c LENGTH 10,
        source_id            TYPE kunnr,
        bukrs                TYPE bukrs,
        witht                TYPE witht,
        assignment_id        TYPE c LENGTH 25,
        kunnr                TYPE kunnr,
        wt_subjct            TYPE wt_subjct,
        qsrec                TYPE qsrec,
        wt_wtstcd            TYPE wt_wtstcd,
        wt_withcd            TYPE wt_withcd,
        wt_exnr              TYPE wt_exnr,
        wt_exrt              TYPE wt_exrt,
        wt_exdf              TYPE wt_exdf,
        wt_exdt              TYPE wt_exdt,
        wt_wtexrs            TYPE wt_wtexrs,
        source_recency       TYPE c LENGTH 30,
        target_assignment_id TYPE c LENGTH 25,
      END OF ty_KNBW_str .
    TYPES:
      ty_knbw TYPE STANDARD TABLE OF ty_KNBW_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_knb1_str,
        _comment             TYPE zcomment_txt,
        _action_code         TYPE c LENGTH 10,
        source_id            TYPE kunnr,
        bukrs                TYPE bukrs,
        assignment_id        TYPE c LENGTH 25,
        kunnr                TYPE kunnr,
        pernr                TYPE pernr,
        knb1_eew_cc          TYPE knb1_eew_cc,
        erdat                TYPE char10,
        ernam                TYPE ernam,
        sperr                TYPE sperr,
        loevm                TYPE loevm,
        zuawa                TYPE dzuawa,
        busab                TYPE busab,
        akont                TYPE akont,
        begru                TYPE begru,
        knrze                TYPE knrze,
        knrzb                TYPE knrzb,
        zamim                TYPE dzamim,
        zamiv                TYPE dzamiv,
        zamir                TYPE dzamir,
        zamib                TYPE dzamib,
        zamio                TYPE dzamio,
        zwels                TYPE dzwels,
        xverr                TYPE xverr_knb1,
        zahls                TYPE dzahls,
        zterm                TYPE dzterm,
        wakon                TYPE wakon,
        vzskz                TYPE vzskz,
        zindt                TYPE dzindt,
        zinrt                TYPE dzinrt,
        eikto                TYPE eikto,
        zsabe                TYPE dzsabe,
        kverm                TYPE kverm,
        fdgrv                TYPE fdgrv,
        vrbkz                TYPE vrbkz,
        vlibb                TYPE vlibb,
        vrszl                TYPE vrszl,
        vrspr                TYPE vrspr,
        vrsnr                TYPE vrsnr,
        verdt                TYPE verdt,
        perkz                TYPE perkz,
        xdezv                TYPE xdezv,
        xausz                TYPE xausz,
        webtr                TYPE webtr,
        remit                TYPE remit,
        datlz                TYPE datlz,
        xzver                TYPE xzver,
        togru                TYPE togru,
        kultg                TYPE kultg,
        hbkid                TYPE hbkid,
        xpore                TYPE xpore,
        blnkz                TYPE blnkz,
        altkn                TYPE altkn,
        zgrup                TYPE dzgrup,
        urlid                TYPE urlid,
        mgrup                TYPE mgrup,
        lockb                TYPE lockb,
        uzawe                TYPE uzawe,
        ekvbd                TYPE ekvbd,
        sregl                TYPE sregl,
        xedip                TYPE xedip,
        frgrp                TYPE frgrp,
        vrsdg                TYPE vrsdg,
        tlfxs                TYPE tlfxs,
        intad                TYPE intad,
        xknzb                TYPE xknzb,
        guzte                TYPE guzte,
        gricd                TYPE j_1agicd_d,
        gridt                TYPE j_1adtyp_d,
        wbrsl                TYPE wbrsl,
        confs                TYPE confs_b,
        updat                TYPE updat,
        uptim                TYPE uptim,
        nodel                TYPE nodel,
        tlfns                TYPE tlfns,
        cession_kz           TYPE cession_kz,
        avsnd                TYPE avsnd,
        ad_hash              TYPE adhash,
        qland                TYPE qland,
        cvp_xblck_b          TYPE cvp_xblck,
        ciiucode             TYPE ciiucode,
        paymentclearinggrpid TYPE far_payment_clearing_group,
        paytrsn              TYPE farp_payt_rsn,
        source_recency       TYPE c LENGTH 30,
        target_assignment_id TYPE c LENGTH 25,
      END OF ty_knb1_str .
    TYPES:
      ty_knb1 TYPE STANDARD TABLE OF ty_knb1_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_knb5_str,
        _comment             TYPE zcomment_txt,
        _action_code         TYPE c LENGTH 10,
        source_id            TYPE kunnr,
        bukrs                TYPE bukrs,
        maber                TYPE maber,
        assignment_id        TYPE c LENGTH 25,
        kunnr                TYPE kunnr,
        mahna                TYPE mahna,
        mansp                TYPE mansp,
        madat                TYPE char10,
        mahns                TYPE mahns,
        knrma                TYPE knrma,
        gmvdt                TYPE gmvdt,
        busab                TYPE busab,
        source_recency       TYPE c LENGTH 30,
        target_assignment_id TYPE c LENGTH 25,
      END OF ty_knb5_str .
    TYPES:
      ty_knb5 TYPE STANDARD TABLE OF ty_knb5_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_knvv_str ,
        _comment             TYPE zcomment_txt,
        _action_code         TYPE c LENGTH 10,
        source_id            TYPE kunnr,
        vkorg                TYPE vkorg,
        vtweg                TYPE vtweg,
        spart                TYPE spart,
        assignment_id        TYPE c LENGTH 25,
        kunnr                TYPE kunnr,
        ernam                TYPE ernam,
        erdat                TYPE char10,
        begru                TYPE begru,
        loevm                TYPE loevm,
        versg                TYPE versg,
        aufsd                TYPE aufsd,
        kalks                TYPE kalks,
        kdgrp                TYPE kdgrp,
        bzirk                TYPE bzirk,
        konda                TYPE konda,
        pltyp                TYPE pltyp,
        awahr                TYPE awahr,
        inco1                TYPE inco1,
        inco2                TYPE inco2,
        lifsd                TYPE lifsd_v,
        autlf                TYPE autlf,
        antlf                TYPE antlf,
        kztlf                TYPE kztlf,
        kzazu                TYPE kzazu,
        chspl                TYPE chspl,
        lprio                TYPE lprio,
        eikto                TYPE eikto,
        vsbed                TYPE vsbed,
        faksd                TYPE faksd_v,
        mrnkz                TYPE mrnkz,
        perfk                TYPE perfk,
        perrl                TYPE perrl,
        kvakz                TYPE kvakz,
        kvawt                TYPE kvawt,
        waers                TYPE waers,
        klabc                TYPE klabc,
        ktgrd                TYPE ktgrd,
        zterm                TYPE dzterm,
        vwerk                TYPE vwerk,
        vkgrp                TYPE vkgrp,
        vkbur                TYPE vkbur,
        vsort                TYPE vsort,
        kvgr1                TYPE kvgr1,
        kvgr2                TYPE kvgr2,
        kvgr3                TYPE kvgr3,
        kvgr4                TYPE kvgr4,
        kvgr5                TYPE kvgr5,
        bokre                TYPE bokre,
        boidt                TYPE Char10,
        kurst                TYPE kurst,
        prfre                TYPE prfre,
        prat1                TYPE prat1,
        prat2                TYPE prat2,
        prat3                TYPE prat3,
        prat4                TYPE prat4,
        prat5                TYPE prat5,
        prat6                TYPE prat6,
        prat7                TYPE prat7,
        prat8                TYPE prat8,
        prat9                TYPE prat9,
        prata                TYPE prata,
        kabss                TYPE kabssch_cm,
        kkber                TYPE kkber,
        cassd                TYPE cassd_v,
        rdoff                TYPE rdoff,
        agrel                TYPE agrel,
        megru                TYPE megru,
        uebto                TYPE uebto,
        untto                TYPE untto,
        uebtk                TYPE uebtk,
        pvksm                TYPE pvksm,
        podkz                TYPE podkz,
        podtg                TYPE podtg,
        blind                TYPE blind,
        carrier_notif        TYPE /spe/carrier_notif,
        cvp_xblck_v          TYPE cvp_xblck,
        incov                TYPE incov,
        inco2_l              TYPE inco2_l,
        inco3_l              TYPE inco3_l,
        knvv_eew_contact     TYPE knvv_eew_contact,
        status_obj_guid      TYPE guid,
        billplan_proc        TYPE crmt_billplan_proc,
        source_recency       TYPE c LENGTH 20,
        target_assignment_id TYPE c LENGTH 30,
        fsh_kvgr6            TYPE fsh_kvgr6,
        fsh_kvgr7            TYPE fsh_kvgr7,
        fsh_kvgr8            TYPE fsh_kvgr8,
        fsh_kvgr9            TYPE fsh_kvgr9,
        fsh_kvgr10           TYPE fsh_kvgr10,
        fsh_grreg            TYPE fsh_grreg,
        fsh_resgy            TYPE fsh_resgy,
        fsh_sc_cid           TYPE fsh_sc_cid,
        fsh_vas_detc         TYPE fsh_vas_detc,
        fsh_vas_cg           TYPE fsh_vas_cg,
        fsh_grsgy            TYPE fsh_grsgy,
        fsh_ss               TYPE fsh_ss,
        fsh_frate            TYPE fsh_frate,
        fsh_frate_agg_level  TYPE fsh_frate_agg_level,
        fsh_msocdc           TYPE fsh_msocdc,
        fsh_msopid           TYPE fsh_msopid,
        rfm_psst_rule        TYPE rfm_psst_rule,
        rfm_psst_exclude     TYPE rfm_psst_exclude,
        /bev1/emlgpfand      TYPE c LENGTH 29,
        /bev1/emlgforts      TYPE c LENGTH 29,
        j_1nboesl            TYPE c LENGTH 29,
      END OF ty_knvv_str .
    TYPES:
      ty_knvv TYPE STANDARD TABLE OF ty_knvv_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_knvp_str,
        _comment             TYPE zcomment_txt,
        _action_code         TYPE c LENGTH 10,
        source_id            TYPE c LENGTH 20,
        vkorg                TYPE vkorg,
        vtweg                TYPE vtweg,
        spart                TYPE spart,
        parvw                TYPE parvw,
        parza                TYPE parza,
        assignment_id        TYPE c LENGTH 29,
        kunnr                TYPE kunnr,
        kunn2                TYPE kunn2,
        lifnr                TYPE lifnr,
        pernr                TYPE pernr,
        parnr                TYPE parnr,
        knref                TYPE knref,
        defpa                TYPE defpa,
        adrnr                TYPE adrnr,
        source_recency       TYPE c LENGTH 20,
        target_assignment_id TYPE c LENGTH 30,
      END OF ty_knvp_str .
    TYPES:
      ty_knvp TYPE STANDARD TABLE OF ty_knvp_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_tax_str,
        _comment       TYPE zcomment_txt,
        _action_code   TYPE c LENGTH 10,
        source_id      TYPE kunnr,
        taxtype        TYPE bptaxtype,
        partner        TYPE partner,
        taxnum         TYPE bptaxnum,
        taxnumxl       TYPE bptaxnumxl,
        source_recency TYPE c LENGTH 30,
      END OF ty_tax_str .
    TYPES:
      ty_tax TYPE STANDARD TABLE OF ty_tax_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_knvi_str,
        _comment             TYPE  zcomment_txt,
        _action_code         TYPE  c LENGTH 10,
        source_id            TYPE  kunnr,
        aland                TYPE  aland,
        tatyp                TYPE  tatyp,
        assignment_id        TYPE  c LENGTH 29,
        kunnr                TYPE  kunnr,
        taxkd                TYPE  takld,
        source_recency       TYPE  c LENGTH 30,
        target_assignment_id TYPE  c LENGTH 29,
      END OF ty_knvi_str .
    TYPES:
      ty_knvi TYPE STANDARD TABLE OF ty_knvi_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_knva_str,
        _comment             TYPE  zcomment_txt,
        _action_code         TYPE  c LENGTH 10,
        source_id            TYPE  kunnr,
        ablad                TYPE  ablad,
        assignment_id        TYPE  c LENGTH 50,
        kunnr                TYPE  kunnr,
        lfdnr                TYPE  lfdnr,
        knfak                TYPE  knfak,
        wanid                TYPE  wanid,
        tpqua                TYPE  tpqua,
        tpgrp                TYPE  tpgrp,
        stzkl                TYPE  stzkl,
        stzzu                TYPE  stzzu,
        moab1                TYPE  wamoab1,
        mobi1                TYPE  wamobi1,
        moab2                TYPE  wamoab2,
        mobi2                TYPE  wamobi2,
        diab1                TYPE  wadiab1,
        dibi1                TYPE  wadibi1,
        diab2                TYPE  wadiab2,
        dibi2                TYPE  wamibi2,
        miab1                TYPE  wadoab1,
        mibi1                TYPE  wadobi1,
        miab2                TYPE  wadoab2,
        mibi2                TYPE  wadibi2,
        doab1                TYPE  wadoab1,
        dobi1                TYPE  wadobi1,
        doab2                TYPE  wadoab2,
        dobi2                TYPE  wadobi2,
        frab1                TYPE  wafrab1,
        frbi1                TYPE  wafrbi1,
        frab2                TYPE  wafrab2,
        frbi2                TYPE  wafrbi2,
        saab1                TYPE  wasaab1,
        sabi1                TYPE  wasabi1,
        saab2                TYPE  wasaab2,
        sabi2                TYPE  wasabi2,
        soab1                TYPE  wasoab1,
        sobi1                TYPE  wasobi1,
        soab2                TYPE  wasoab2,
        sobi2                TYPE  wasobi2,
        defab                TYPE  defab,
        target_assignment_id TYPE  c LENGTH 30,
        source_recency       TYPE  c LENGTH 29,
      END OF ty_knva_str .
    TYPES:
      ty_knva TYPE STANDARD TABLE OF ty_knva_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_BUT0ID_str,
        _comment        TYPE  zcomment_txt,
        _action_code    TYPE  c LENGTH 10,
        source_id       TYPE  kunnr,
        type            TYPE  bu_id_type,
        idnumber        TYPE  bu_id_number,
        partner         TYPE  bu_partner,
        institute       TYPE  bu_id_institute,
        entry_date      TYPE  bu_id_entry_date,
        valid_date_from TYPE  bu_id_valid_date_from,
        valid_date_to   TYPE  bu_id_valid_date_to,
        country         TYPE  bu_idcountry,
        region          TYPE  region,
        idnumber_guid   TYPE  bu_id_guid,
        bp_eew_but0id   TYPE  dummy,
        source_recency  TYPE  c LENGTH 29,
      END OF ty_BUT0ID_str .
    TYPES:
      ty_BUT0ID TYPE STANDARD TABLE OF ty_BUT0ID_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_BUT0IS_str,
        _comment       TYPE  zcomment_txt,
        _action_code   TYPE  c LENGTH 10,
        source_id      TYPE  kunnr,
        istype         TYPE  bu_istype,
        ind_sector     TYPE  bu_ind_sector,
        partner        TYPE  bu_partner,
        isdef          TYPE  bu_isdef,
        bp_eew_but0is  TYPE  dummy,
        source_recency TYPE  c LENGTH 29,
      END OF ty_BUT0IS_str .
    TYPES:
      ty_BUT0IS TYPE STANDARD TABLE OF ty_BUT0IS_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_BUT100_str,
        _comment       TYPE  zcomment_txt,
        _action_code   TYPE  c LENGTH 10,
        source_id      TYPE  kunnr,
        rltyp          TYPE bu_role,
        dfval          TYPE char20,
        partner        TYPE bu_partner,
        valid_from     TYPE char10,
        valid_to       TYPE char10,
        source_recency TYPE kunnr,
        role           TYPE bp_role,
        authority      TYPE begru,
      END OF ty_BUT100_str .
    TYPES:
      ty_BUT100 TYPE STANDARD TABLE OF ty_but100_str WITH DEFAULT KEY .

    DATA mt_bukrs TYPE ytt_bukrs .
    DATA mt_kunnr TYPE ytt_kunnr .
    DATA mt_vkorg TYPE ytt_vkorg .
    DATA md_file TYPE string .
    DATA mt_kna1 TYPE ty_kna1 .

    METHODS constructor
      IMPORTING
        !it_bukrs     TYPE ytt_bukrs
        !it_kunnr     TYPE ytt_kunnr
        !it_vkorg     TYPE ytt_vkorg
        !id_file      TYPE string
        !ip_appt_file TYPE rlgrap-filename .
    METHODS get_kna1
      RETURNING
        VALUE(rt_kna1) TYPE ty_kna1 .
    METHODS add_sheet_to_xlsx
      IMPORTING
        !iv_sheetname      TYPE zexcel_sheet_title OPTIONAL
        !iv_is_this_sheet1 TYPE flag
        !iv_cell_a1        TYPE char30 OPTIONAL
        !it_data           TYPE table
        !io_excel          TYPE REF TO zcl_excel
        !it_addtl_cols     TYPE table OPTIONAL .
    METHODS download_xlsx
      IMPORTING
        !io_excel     TYPE REF TO zcl_excel
      RETURNING
        VALUE(return) TYPE REF TO zcx_excel .
    METHODS build_excel .
    METHODS get_mapping
      IMPORTING
        !ip_file    TYPE string
      EXPORTING
        !it_tab     TYPE ty_tab1
      CHANGING
        !it_adrc    TYPE ty_adrc
        !it_kna1    TYPE ty_kna1
        !it_but000  TYPE ty_but000
        !it_knb5    TYPE ty_knb5
        !it_knvv    TYPE ty_knvv
        !it_knvp    TYPE ty_knvp
        !it_knbw    TYPE ty_knbw
        !it_knvi    TYPE ty_knvi
        !it_knb1    TYPE ty_knb1
        !it_but100  TYPE ty_but100
        !it_but020  TYPE ty_but020
        !it_adr2    TYPE ty_adr2
        !it_adr6    TYPE ty_adr6
        !it_but0bk  TYPE ty_but0bk
        !it_but0is  TYPE ty_but0is
        !it_knva    TYPE ty_knva
        !it_kna1ass TYPE ty_asst
        !it_tax     TYPE ty_tax .
    METHODS seprate_data
      IMPORTING
        !iv_table TYPE STANDARD TABLE
      CHANGING
        !ct_table TYPE STANDARD TABLE .
    METHODS get_but020
      RETURNING
        VALUE(rt_but020) TYPE ty_but020 .
    METHODS get_but000
      RETURNING
        VALUE(rt_but000) TYPE ty_but000 .
    METHODS get_but021
      RETURNING
        VALUE(rt_but021) TYPE ty_but021 .
    METHODS get_adrc
      RETURNING
        VALUE(rt_adrc) TYPE ty_adrc .
    METHODS get_adr2
      RETURNING
        VALUE(rt_adr2) TYPE ty_adr2 .
    METHODS get_adr6
      RETURNING
        VALUE(rt_adr6) TYPE ty_adr6 .
    METHODS get_but0bk
      RETURNING
        VALUE(rt_but0bk) TYPE ty_but0bk .
    METHODS get_kna1_ass
      RETURNING
        VALUE(rt_asst) TYPE ty_asst .
    METHODS get_knbw
      RETURNING
        VALUE(rt_knbw) TYPE ty_knbw .
    METHODS get_knb1
      RETURNING
        VALUE(rt_knb1) TYPE ty_knb1 .
    METHODS get_knb5
      RETURNING
        VALUE(rt_knb5) TYPE ty_knb5 .
    METHODS get_knvv
      RETURNING
        VALUE(rt_knvv) TYPE ty_knvv .
    METHODS get_knvp
      RETURNING
        VALUE(rt_knvp) TYPE ty_knvp .
    METHODS get_tax_data
      IMPORTING
        !it_tab       TYPE ty_kna1
      RETURNING
        VALUE(rt_tax) TYPE ty_tax .
    METHODS get_knvi
      RETURNING
        VALUE(rt_knvi) TYPE ty_knvi .
    METHODS get_knva
      RETURNING
        VALUE(rt_knva) TYPE ty_knva .
    METHODS get_but0id
      RETURNING
        VALUE(rt_but0id) TYPE ty_but0id .
    METHODS get_but0is
      RETURNING
        VALUE(rt_but0is) TYPE ty_but0is .
    METHODS get_but100
      RETURNING
        VALUE(rt_but100) TYPE ty_but100 .
    METHODS add_sheet_to_xlsxv2
      IMPORTING
        !iv_sheetname      TYPE zexcel_sheet_title OPTIONAL
        !iv_is_this_sheet1 TYPE flag
        !iv_cell_a1        TYPE char30 OPTIONAL
        !it_data           TYPE table
        !io_excel          TYPE REF TO zcl_excel
        !it_addtl_cols     TYPE table OPTIONAL .
    METHODS get_mapping_data
      IMPORTING
        !ip_file    TYPE string
      EXPORTING
        !it_tab     TYPE ty_tab1
      CHANGING
        !it_adrc    TYPE ty_adrc
        !it_kna1    TYPE ty_kna1
        !it_but000  TYPE ty_but000
        !it_knb5    TYPE ty_knb5
        !it_knvv    TYPE ty_knvv
        !it_knvp    TYPE ty_knvp
        !it_knbw    TYPE ty_knbw
        !it_knvi    TYPE ty_knvi
        !it_knb1    TYPE ty_knb1
        !it_but100  TYPE ty_but100
        !it_but020  TYPE ty_but020
        !it_adr2    TYPE ty_adr2
        !it_adr6    TYPE ty_adr6
        !it_but0bk  TYPE ty_but0bk
        !it_but0is  TYPE ty_but0is
        !it_knva    TYPE ty_knva
        !it_kna1ass TYPE ty_asst
        !it_tax     TYPE ty_tax .
  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA mt_appt_file TYPE rlgrap-filename .
ENDCLASS.



CLASS zcl_mdg_extractor_customer IMPLEMENTATION.


  METHOD add_sheet_to_xlsx.
    DATA: lo_worksheet              TYPE REF TO zcl_excel_worksheet,
          lt_field_catalog          TYPE zexcel_t_fieldcatalog,
          lt_field_catalog1         TYPE zexcel_t_fieldcatalog,
          ls_field_catalog          TYPE zexcel_s_fieldcatalog,
          ls_table_settings         TYPE zexcel_s_table_settings,
          ls_table_settings_out     TYPE zexcel_s_table_settings,
          lo_style_bold_border      TYPE REF TO zcl_excel_style,
          lv_style_bold_border_guid TYPE        zexcel_cell_style,
          lv_style_filled           TYPE REF TO zcl_excel_style,
          lo_border_dark            TYPE REF TO zcl_excel_style_border,
          index                     TYPE syindex.
    DATA: comp_tab TYPE cl_abap_structdescr=>component_table,
          comp     LIKE LINE OF comp_tab.

    FIELD-SYMBOLS: <fs>       TYPE any,<fs_field> TYPE any.

    " Create: Bold Style, Centered, BlackCellBorder
    CREATE OBJECT lo_border_dark.
    lo_border_dark->border_color-rgb = zcl_excel_style_color=>c_black.
    lo_border_dark->border_style = zcl_excel_style_border=>c_border_thin.
    lo_style_bold_border = io_excel->add_new_style( ).
    lo_style_bold_border->font->bold = abap_true.
    lo_style_bold_border->font->italic = abap_false.
    lo_style_bold_border->font->color-rgb = zcl_excel_style_color=>c_black.
    lo_style_bold_border->alignment->horizontal = zcl_excel_style_alignment=>c_horizontal_center.
    lo_style_bold_border->borders->allborders = lo_border_dark.
    lv_style_bold_border_guid = lo_style_bold_border->get_guid( ).

    lv_style_filled                 = io_excel->add_new_style( ).
    lv_style_filled->fill->filltype = zcl_excel_style_fill=>c_fill_solid.
*  lv_style_filled->fill->fgcolor-theme  = zcl_excel_style_color=>c_darkyellow.
    lv_style_filled->fill->fgcolor-rgb  = zcl_excel_style_color=>c_yellow.


*    lv_style_add_cols
    IF iv_is_this_sheet1 = 'Y'.
      lo_worksheet = io_excel->get_active_worksheet( ).
    ELSE.
      lo_worksheet = io_excel->add_new_worksheet( ).
    ENDIF.
    lo_worksheet->set_title( ip_title = iv_sheetname ).

    "Build FieldCatalog using reference to IT_DATA
    lt_field_catalog = zcl_excel_common=>get_fieldcatalog( ip_table = it_data ).

    CLEAR index.
    DELETE lt_field_catalog WHERE fieldname = 'MANDT'.
    DELETE lt_field_catalog WHERE fieldname = 'CLIENT'.

    "Additional Columns displayed before the Table Fields: Col1,2,3,etc
    LOOP AT it_addtl_cols ASSIGNING <fs>.
      ASSIGN COMPONENT sy-index OF STRUCTURE <fs> TO <fs_field>.
      index = index + 1.
      comp-name = <fs>.
      comp-type = cl_abap_elemdescr=>get_c( 40 ).
      APPEND comp TO comp_tab.
      lo_worksheet->set_cell( ip_row = 2 ip_column = index ip_style = lv_style_filled  ip_value = <fs_field> ). "2
      lo_worksheet->set_cell( ip_row = 1 ip_column = index ip_style = lv_style_bold_border_guid ip_value = <fs_field> ).  "3
    ENDLOOP.


    "Write Technical Fieldnames into XLSX Row2
*    LOOP AT lt_field_catalog INTO ls_field_catalog.
*      index = index + 1.
*      lo_worksheet->set_cell( ip_row = 1 ip_column = index ip_style = lv_style_bold_border_guid ip_value = ls_field_catalog-fieldname ).  "2
*    ENDLOOP.

    "Tabular Data starts from D3:
    "     Row3 will have FieldDescriptionText,
    "     Row4 onwards TableData is shown in XLSX
*    ls_table_settings-top_left_column = 'D'.
*    ls_table_settings-top_left_column = 'B'.
*    ls_table_settings-top_left_row = '2'.

    "Bind ITab data to Excel in given sheet
    TRY.
        CALL METHOD lo_worksheet->bind_tablev2
          EXPORTING
            ip_table          = it_data   "Row4 Onwards
            it_field_catalog  = lt_field_catalog "Row3 for FieldDescriptionText
            is_table_settings = ls_table_settings
          IMPORTING
            es_table_settings = ls_table_settings_out.
      CATCH zcx_excel.
    ENDTRY.
  ENDMETHOD.


  METHOD add_sheet_to_xlsxv2.
    DATA: lo_worksheet              TYPE REF TO zcl_excel_worksheet,
          lt_field_catalog          TYPE zexcel_t_fieldcatalog,
          lt_field_catalog1         TYPE zexcel_t_fieldcatalog,
          ls_field_catalog          TYPE zexcel_s_fieldcatalog,
          ls_table_settings         TYPE zexcel_s_table_settings,
          ls_table_settings_out     TYPE zexcel_s_table_settings,
          lo_style_bold_border      TYPE REF TO zcl_excel_style,
          lv_style_bold_border_guid TYPE        zexcel_cell_style,
          lv_style_filled           TYPE REF TO zcl_excel_style,
          lo_border_dark            TYPE REF TO zcl_excel_style_border,
          index                     TYPE syindex.
    DATA: comp_tab TYPE cl_abap_structdescr=>component_table,
          comp     LIKE LINE OF comp_tab.

    FIELD-SYMBOLS: <fs>       TYPE any,<fs_field> TYPE any.

    " Create: Bold Style, Centered, BlackCellBorder
    CREATE OBJECT lo_border_dark.
    lo_border_dark->border_color-rgb = zcl_excel_style_color=>c_black.
    lo_border_dark->border_style = zcl_excel_style_border=>c_border_thin.
    lo_style_bold_border = io_excel->add_new_style( ).
    lo_style_bold_border->font->bold = abap_true.
    lo_style_bold_border->font->italic = abap_false.
    lo_style_bold_border->font->color-rgb = zcl_excel_style_color=>c_black.
    lo_style_bold_border->alignment->horizontal = zcl_excel_style_alignment=>c_horizontal_center.
    lo_style_bold_border->borders->allborders = lo_border_dark.
    lv_style_bold_border_guid = lo_style_bold_border->get_guid( ).

    lv_style_filled                 = io_excel->add_new_style( ).
    lv_style_filled->fill->filltype = zcl_excel_style_fill=>c_fill_solid.
*  lv_style_filled->fill->fgcolor-theme  = zcl_excel_style_color=>c_darkyellow.
    lv_style_filled->fill->fgcolor-rgb  = zcl_excel_style_color=>c_yellow.


*    lv_style_add_cols
    IF iv_is_this_sheet1 = 'Y'.
      lo_worksheet = io_excel->get_active_worksheet( ).
    ELSE.
      lo_worksheet = io_excel->add_new_worksheet( ).
    ENDIF.
    lo_worksheet->set_title( ip_title = iv_sheetname ).

    "Build FieldCatalog using reference to IT_DATA
    lt_field_catalog = zcl_excel_common=>get_fieldcatalog( ip_table = it_data ).

    CLEAR index.
    DELETE lt_field_catalog WHERE fieldname = 'MANDT'.
    DELETE lt_field_catalog WHERE fieldname = 'CLIENT'.

    "Additional Columns displayed before the Table Fields: Col1,2,3,etc
    LOOP AT it_addtl_cols ASSIGNING <fs>.
      ASSIGN COMPONENT sy-index OF STRUCTURE <fs> TO <fs_field>.
      index = index + 1.
      comp-name = <fs>.
      comp-type = cl_abap_elemdescr=>get_c( 40 ).
      APPEND comp TO comp_tab.
      lo_worksheet->set_cell( ip_row = 2 ip_column = index ip_style = lv_style_filled  ip_value = <fs_field> ). "2
      lo_worksheet->set_cell( ip_row = 1 ip_column = index ip_style = lv_style_bold_border_guid ip_value = <fs_field> ).  "3
    ENDLOOP.


    "Write Technical Fieldnames into XLSX Row2
*    LOOP AT lt_field_catalog INTO ls_field_catalog.
*      index = index + 1.
*      lo_worksheet->set_cell( ip_row = 1 ip_column = index ip_style = lv_style_bold_border_guid ip_value = ls_field_catalog-fieldname ).  "2
*    ENDLOOP.

    "Tabular Data starts from D3:
    "     Row3 will have FieldDescriptionText,
    "     Row4 onwards TableData is shown in XLSX
*    ls_table_settings-top_left_column = 'D'.
*    ls_table_settings-top_left_column = 'B'.
*    ls_table_settings-top_left_row = '2'.

    "Bind ITab data to Excel in given sheet
    TRY.
        CALL METHOD lo_worksheet->bind_tablev2
          EXPORTING
            ip_table          = it_data   "Row4 Onwards
            it_field_catalog  = lt_field_catalog "Row3 for FieldDescriptionText
            is_table_settings = ls_table_settings
          IMPORTING
            es_table_settings = ls_table_settings_out.
      CATCH zcx_excel.
    ENDTRY.
  ENDMETHOD.


  METHOD build_excel.
    TYPES: BEGIN OF ty_addtl_cols,
             fieldname TYPE char40,
             dummy1    TYPE char40,
             dummy2    TYPE char40,
           END OF ty_addtl_cols.

    DATA: lo_excel TYPE REF TO zcl_excel,
          lo_error TYPE REF TO zcx_excel,
          lt_cols  TYPE STANDARD TABLE OF ty_addtl_cols,
          lt_tab   TYPE ty_tab1.

    DATA(tt_kna1) = me->get_kna1( ).
    DATA(tt_knvv) = me->get_knvv( ).
    DATA(tt_knb1) = me->get_knb1( ).
    DATA(tt_knbw) = me->get_knbw( ).
    DATA(tt_knb5) = me->get_knb5( ).
    DATA(tt_adrc) = me->get_adrc( ).
    DATA(tt_adr2) = me->get_adr2( ).
    DATA(tt_adr6) = me->get_adr6( ).
    DATA(tt_BUT0ID) = me->get_BUT0ID( ).
    DATA(tt_BUT0IS) = me->get_BUT0IS( ).
    DATA(tt_knvp) = me->get_knvp( ).
    DATA(tt_but000) = me->get_but000( ).
    DATA(tt_but100) = me->get_but100( ).
    DATA(tt_tax_data) = me->get_tax_data( it_tab = tt_kna1 ).
    DATA(tt_but0bk) = me->get_but0bk( ).
    DATA(tt_but020) = me->get_but020( ).
    DATA(tt_but021) = me->get_but021( ).
    DATA(tt_asst) = me->get_kna1_ass( ).
    DATA(tt_knvi) = me->get_knvi( ).
    DATA(tt_knva) = me->get_knva( ).

    IF md_file IS NOT INITIAL.
      CALL METHOD me->get_mapping_data
        EXPORTING
          ip_file    = md_file
        IMPORTING
          it_tab     = lt_tab
        CHANGING
          it_adrc    = tt_adrc
          it_kna1    = tt_kna1
          it_but000  = tt_but000
          it_knb5    = tt_knb5
          it_knvv    = tt_knvv
          it_knvp    = tt_knvp
          it_knbw    = tt_knbw
          it_knvi    = tt_knvi
          it_knb1    = tt_knb1
          it_but100  = tt_but100
          it_but020  = tt_but020
          it_adr2    = tt_adr2
          it_adr6    = tt_adr6
          it_but0bk  = tt_but0bk
          it_but0is  = tt_but0is
          it_knva    = tt_knva
          it_kna1ass = tt_asst
          it_tax     = tt_tax_data.

*      CALL METHOD me->get_mapping
*        EXPORTING
*          ip_file    = md_file
*        IMPORTING
*          it_tab     = lt_tab
*        CHANGING
*          it_adrc    = tt_adrc
*          it_kna1    = tt_kna1
*          it_but000  = tt_but000
*          it_knb5    = tt_knb5
*          it_knvv    = tt_knvv
*          it_knvp    = tt_knvp
*          it_knbw    = tt_knbw
*          it_knvi    = tt_knvi
*          it_knb1    = tt_knb1
*          it_but100  = tt_but100
*          it_but020  = tt_but020
*          it_adr2    = tt_adr2
*          it_adr6    = tt_adr6
*          it_but0bk  = tt_but0bk
*          it_but0is  = tt_but0is
*          it_knva    = tt_knva
*          it_kna1ass = tt_asst
*          it_tax     = tt_tax_data.
    ENDIF.

    "Step1: Creates EXCEL Object
    CREATE OBJECT lo_excel.

    "Step2: Add Sheet1
    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'BUT000 - General'
        iv_is_this_sheet1 = 'Y'
        iv_cell_a1        = 'BUT000 - General'
        it_data           = tt_but000
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'BUT100 - Role'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'BUT100 - Role'
        it_data           = tt_but100
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'BUT020 - Technical Link Table f'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'BUT020 - Technical Table'
        it_data           = tt_but020
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'BUT021_FS - Address Usage'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'BUT021_FS - Address Usage'
        it_data           = tt_but021
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'ADRC-Address Data'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'ADRC-Address Data'
        it_data           = tt_adrc
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'ADR2-Phone'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'ADR2-Phone'
        it_data           = tt_adr2
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'BUT0ID - Identifier'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'BUT0ID - Identifier'
        it_data           = tt_but0id
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'BUT0IS - Industry'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'BUT0IS - Industry'
        it_data           = tt_but0is
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'ADR6-E-Mail'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'ADR6-E-Mail'
        it_data           = tt_adr6
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'BUT0BK - Bank Account'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'BUT0BK - Bank Account'
        it_data           = tt_but0bk
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'KNA1 - Customer General'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'KNA1 - Customer General'
        it_data           = tt_KNA1
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

*    "Step2: Add Sheet3
    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'KNB1 - Company Code (Customer)'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'KNB1 - Company Code (Customer)'
        it_data           = tt_knb1
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'KNB5 - Dunning (Customer)'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'KNB5 - Dunning (Customer)l'
        it_data           = tt_knb5
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.
*
    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'KNBW-Withholding Tax'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'KNBW-Withholding Tax'
        it_data           = tt_knbw
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.
*
    "Step2:Add Sheet2
    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'KNVV - Sales Area Data'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'KNVV - Sales Area Data'
        it_data           = tt_knvv
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'KNVI - Tax Indicator'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'KNVI - Tax Indicator'
        it_data           = tt_knvi
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'KNVP - Partner Function'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'KNVP - Partner Function'
        it_data           = tt_knvp
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'KNVA - Unloading Points'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'KNVA - Unloading Points'
        it_data           = tt_knva
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'DFKKBPTAXNUM - Tax Number'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'DFKKBPTAXNUM - Tax Number'
        it_data           = tt_tax_data
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'KNA1_ASSGMNT - Additional ERP V'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'KNA1_ASSGMNT - Additional ERP'
        it_data           = tt_asst
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.


*    CALL METHOD me->add_sheet_to_xlsx
*      EXPORTING
*        iv_sheetname      = 'kna1-KTOKK'
*        iv_is_this_sheet1 = 'N'
*        iv_cell_a1        = 'kna1-KTOKK'
*        it_data           = tt_lktokk
*        io_excel          = lo_excel
*        it_addtl_cols     = lt_cols.

    DATA: lv_xstring TYPE xstring,
          lt_binary  TYPE STANDARD TABLE OF raw255,
          lv_file    TYPE string.
    IF mt_appt_file IS NOT INITIAL.
      DATA:
        lo_writer  TYPE REF TO zif_excel_writer.

      "Create XLSX write
      CREATE OBJECT lo_writer TYPE zcl_excel_writer_2007.

      "Generate complete XLSX to XSTRING
      lv_xstring = lo_writer->write_file( io_excel = lo_excel  ).

      "AL11 physical path
      lv_file = '.MDG_customer_master.xlsx'.

*      CONCATENATE mt_appt_file lv_file
*            INTO lv_file SEPARATED BY '/'.

      OPEN DATASET lv_file FOR OUTPUT IN BINARY MODE.

      IF sy-subrc EQ 0.
        TRANSFER lv_xstring TO lv_file.
        CLOSE DATASET lv_file.
        WRITE / lv_file.
*      RETURN.
      ENDIF.
    ENDIF.
    "Step3: Move data to XLSX and display
    CALL METHOD me->download_xlsx
      EXPORTING
        io_excel = lo_excel
      RECEIVING
        return   = lo_error.
  ENDMETHOD.


  METHOD constructor.
    mt_bukrs = it_bukrs.
    mt_kunnr = it_kunnr.
    mt_vkorg = it_vkorg.
    md_file =  id_file.
    mt_appt_file = ip_appt_file.
  ENDMETHOD.


  METHOD download_xlsx.
    DATA:
      "cl_output TYPE REF TO lcl_output,
      cl_writer TYPE REF TO zif_excel_writer,
      cl_error  TYPE REF TO zcx_excel.
    DATA : iv_info_msg TYPE abap_bool.
    DATA: xdata     TYPE xstring,
          t_rawdata TYPE solix_tab,           " Will be used for downloading or open directly
          bytecount TYPE i.                   " Will be used for downloading or open directly

    DATA:error       TYPE REF TO i_oi_error,
         t_errors    TYPE STANDARD TABLE OF REF TO i_oi_error WITH NON-UNIQUE DEFAULT KEY,
         cl_control  TYPE REF TO i_oi_container_control, "OIContainerCtrl
         cl_document TYPE REF TO i_oi_document_proxy.   "Office Dokument

    TRY.
*    CREATE OBJECT cl_output.
        CREATE OBJECT cl_writer TYPE zcl_excel_writer_2007.
        xdata = cl_writer->write_file( io_excel ).

        t_rawdata = cl_bcs_convert=>xstring_to_solix( iv_xstring  = xdata ).
        bytecount = xstrlen( xdata ).

        c_oi_container_control_creator=>get_container_control( IMPORTING control = cl_control
          error   = error ).
        APPEND error TO t_errors.

        cl_control->init_control( EXPORTING  inplace_enabled     = 'X'
          no_flush            = 'X'
          r3_application_name = sy-cprog
          parent              = cl_gui_container=>screen0
        IMPORTING  error               = error
        EXCEPTIONS OTHERS              = 2 ).
        APPEND error TO t_errors.

        cl_control->get_document_proxy( EXPORTING document_type  = 'Excel.Sheet'                " EXCEL
        no_flush       = ' '
        IMPORTING document_proxy = cl_document
          error          = error ).
        APPEND error TO t_errors.
* Errorhandling should be inserted here

        cl_document->open_document_from_table( EXPORTING document_size    = bytecount
          document_table   = t_rawdata
          open_inplace     = 'X' ).

        WRITE: '.'.  " To create an output.  That way screen0 will exist
      CATCH zcx_excel INTO cl_error.
        IF iv_info_msg = abap_true.
          MESSAGE cl_error TYPE 'I' DISPLAY LIKE 'E'.
        ELSE.
          RAISE EXCEPTION cl_error.
        ENDIF.
    ENDTRY.
  ENDMETHOD.


  METHOD get_adr2.

*    DATA(tt_kna1) = me->get_kna1( ).

    IF mt_kna1 IS NOT INITIAL.
* Select data from adr2 table
      SELECT
        kna1~kunnr         AS source_id
        kna1~adrnr         AS source_addrnumber
*        adr2~date_from        ,
        adr2~consnumber
        adr2~addrnumber
        adr2~country
        adr2~flgdefault
        adr2~flg_nouse
        adr2~home_flag
        adr2~tel_number
        adr2~tel_extens
        adr2~telnr_long
        adr2~telnr_call
        adr2~dft_receiv
        adr2~r3_user
        adr2~valid_from
        adr2~valid_to
        INTO CORRESPONDING FIELDS OF TABLE rt_adr2
         FROM kna1
         INNER JOIN adr2
           ON adr2~addrnumber = kna1~adrnr
                  FOR ALL ENTRIES IN mt_kna1
         WHERE kna1~kunnr = mt_kna1-source_id. "LIFNR
    ELSE.
*      MESSAGE 'No data found in kna1 .' TYPE 'S' DISPLAY LIKE 'I'.
    ENDIF.
* Check if any data is selected
*    IF rt_adr2 IS INITIAL.
*      MESSAGE 'Data not found in ADR2 table..' TYPE 'I' DISPLAY LIKE 'I'.  " Display message as error
*    ENDIF.
    SORT rt_adr2 BY addrnumber.
    FIELD-SYMBOLS <fs_adr2> TYPE ty_adr2_str.
    LOOP AT rt_adr2 ASSIGNING <fs_adr2>.
      <fs_adr2>-date_from = '00010101'.
    ENDLOOP.
  ENDMETHOD.


  METHOD get_adr6.
*    DATA(tt_kna1) = me->get_kna1( ).

    IF mt_kna1 IS NOT INITIAL.
* Select data from adr6 table
      SELECT
        kna1~kunnr         AS source_id
        kna1~adrnr         AS source_addrnumber
*        adr6~date_from      ,
        adr6~consnumber
*        adr6~addrnumber     ,
        adr6~flgdefault
        adr6~flg_nouse
        adr6~home_flag
        adr6~smtp_addr
        adr6~smtp_srch
        adr6~dft_receiv
        adr6~r3_user
        adr6~encode
        adr6~tnef
        adr6~valid_from
        adr6~valid_to
        INTO CORRESPONDING FIELDS OF TABLE rt_adr6
        FROM kna1
        INNER JOIN adr6
          ON adr6~addrnumber = kna1~adrnr
        FOR ALL ENTRIES IN mt_kna1
        WHERE kna1~kunnr = mt_kna1-source_id.
    ENDIF.
    SORT Rt_adr6 BY addrnumber.
    FIELD-SYMBOLS <fs_adr6> TYPE ty_adr6_str.
    LOOP AT rt_adr6 ASSIGNING <fs_adr6>.
      <fs_adr6>-date_from = '00010101'.
    ENDLOOP.
  ENDMETHOD.


  METHOD get_adrc.

    DATA:lv_date_c TYPE char10,
         ls_adrc   TYPE ty_adrc_str.
    TYPES: BEGIN OF ty_adrc,
             lifnr            TYPE lifnr,
             adrnr            TYPE ad_addrnum,
             nation           TYPE adrc-nation,
             date_to          TYPE adrc-date_to,
             title            TYPE adrc-title,
             name1            TYPE adrc-name1,
             name2            TYPE adrc-name2,
             name3            TYPE adrc-name3,
             name4            TYPE adrc-name4,
             name_text        TYPE adrc-name_text,
             name_co          TYPE adrc-name_co,
             city1            TYPE adrc-city1,
             city2            TYPE adrc-city2,
             city_code        TYPE adrc-city_code,
             cityp_code       TYPE adrc-cityp_code,
             home_city        TYPE adrc-home_city,
             cityh_code       TYPE adrc-cityh_code,
             chckstatus       TYPE adrc-chckstatus,
             regiogroup       TYPE adrc-regiogroup,
             post_code1       TYPE adrc-post_code1,
             post_code2       TYPE adrc-post_code2,
             post_code3       TYPE adrc-post_code3,
             pcode1_ext       TYPE adrc-pcode1_ext,
             pcode2_ext       TYPE adrc-pcode2_ext,
             pcode3_ext       TYPE adrc-pcode3_ext,
             po_box           TYPE adrc-po_box,
             dont_use_p       TYPE adrc-dont_use_p,
             po_box_num       TYPE adrc-po_box_num,
             po_box_loc       TYPE adrc-po_box_loc,
             city_code2       TYPE adrc-city_code2,
             po_box_reg       TYPE adrc-po_box_reg,
             po_box_cty       TYPE adrc-po_box_cty,
             postalarea       TYPE adrc-postalarea,
             transpzone       TYPE adrc-transpzone,
             street           TYPE adrc-street,
             dont_use_s       TYPE adrc-dont_use_s,
             streetcode       TYPE adrc-streetcode,
             streetabbr       TYPE adrc-streetabbr,
             house_num1       TYPE adrc-house_num1,
             house_num2       TYPE adrc-house_num2,
             house_num3       TYPE adrc-house_num3,
             str_suppl1       TYPE adrc-str_suppl1,
             str_suppl2       TYPE adrc-str_suppl2,
             str_suppl3       TYPE adrc-str_suppl3,
             location         TYPE adrc-location,
             building         TYPE adrc-building,
             floor            TYPE adrc-floor,
             roomnumber       TYPE adrc-roomnumber,
             country          TYPE adrc-country,
             langu            TYPE adrc-langu,
             region           TYPE adrc-region,
             addr_group       TYPE adrc-addr_group,
             flaggroups       TYPE adrc-flaggroups,
             pers_addr        TYPE adrc-pers_addr,
             sort1            TYPE adrc-sort1,
             sort2            TYPE adrc-sort2,
             sort_phn         TYPE adrc-sort_phn,
             deflt_comm       TYPE adrc-deflt_comm,
             tel_number       TYPE adrc-tel_number,
             tel_extens       TYPE adrc-tel_extens,
             fax_number       TYPE adrc-fax_number,
             fax_extens       TYPE adrc-fax_extens,
             flagcomm2        TYPE adrc-flagcomm2,
             flagcomm3        TYPE adrc-flagcomm3,
             flagcomm4        TYPE adrc-flagcomm4,
             flagcomm5        TYPE adrc-flagcomm5,
             flagcomm6        TYPE adrc-flagcomm6,
             flagcomm7        TYPE adrc-flagcomm7,
             flagcomm8        TYPE adrc-flagcomm8,
             flagcomm9        TYPE adrc-flagcomm9,
             flagcomm10       TYPE adrc-flagcomm10,
             flagcomm11       TYPE adrc-flagcomm11,
             flagcomm12       TYPE adrc-flagcomm12,
             flagcomm13       TYPE adrc-flagcomm13,
             addrorigin       TYPE adrc-addrorigin,
             mc_name1         TYPE adrc-mc_name1,
             mc_city1         TYPE adrc-mc_city1,
             mc_street        TYPE adrc-mc_street,
             extension1       TYPE adrc-extension1,
             extension2       TYPE adrc-extension2,
             time_zone        TYPE adrc-time_zone,
             taxjurcode       TYPE adrc-taxjurcode,
             address_id       TYPE adrc-address_id,
             langu_crea       TYPE adrc-langu_crea,
             adrc_uuid        TYPE adrc-adrc_uuid,
             uuid_belated     TYPE adrc-uuid_belated,
             id_category      TYPE adrc-id_category,
             adrc_err_status  TYPE adrc-adrc_err_status,
             po_box_lobby     TYPE adrc-po_box_lobby,
             deli_serv_type   TYPE adrc-deli_serv_type,
             deli_serv_number TYPE adrc-deli_serv_number,
             county_code      TYPE adrc-county_code,
             county           TYPE adrc-county,
             township_code    TYPE adrc-township_code,
             township         TYPE adrc-township,
             mc_county        TYPE adrc-mc_county,
             mc_township      TYPE adrc-mc_township,
             xpcpt            TYPE adrc-xpcpt,
             duns             TYPE adrc-duns,
             dunsp4           TYPE adrc-dunsp4,
           END OF ty_adrc.
    DATA: lwt_adrc TYPE STANDARD TABLE OF ty_adrc.
*    DATA(tt_kna1) = me->get_kna1( ).
* Select data from adrc table
    IF mt_kna1 IS NOT INITIAL.
      SELECT
         kna1~kunnr         AS source_id
         kna1~adrnr         AS source_addrnumber
         adrc~nation
         adrc~date_to
         adrc~title
         adrc~name1
         adrc~name2
         adrc~name3
         adrc~name4
         adrc~name_text
         adrc~name_co
         adrc~city1
         adrc~city2
         adrc~city_code
         adrc~cityp_code
         adrc~home_city
         adrc~cityh_code
         adrc~chckstatus
         adrc~regiogroup
         adrc~post_code1
         adrc~post_code2
         adrc~post_code3
         adrc~pcode1_ext
         adrc~pcode2_ext
         adrc~pcode3_ext
         adrc~po_box
         adrc~dont_use_p
         adrc~po_box_num
         adrc~po_box_loc
         adrc~city_code2
         adrc~po_box_reg
         adrc~po_box_cty
         adrc~postalarea
         adrc~transpzone
         adrc~street
         adrc~dont_use_s
         adrc~streetcode
         adrc~streetabbr
         adrc~house_num1
         adrc~house_num2
         adrc~house_num3
         adrc~str_suppl1
         adrc~str_suppl2
         adrc~str_suppl3
         adrc~location
         adrc~building
         adrc~floor
         adrc~roomnumber
         adrc~country
         adrc~langu
         adrc~region
         adrc~addr_group
         adrc~flaggroups
         adrc~pers_addr
         adrc~sort1
         adrc~sort2
         adrc~sort_phn
         adrc~deflt_comm
         adrc~tel_number
         adrc~tel_extens
         adrc~fax_number
         adrc~fax_extens
         adrc~flagcomm2
         adrc~flagcomm3
         adrc~flagcomm4
         adrc~flagcomm5
         adrc~flagcomm6
         adrc~flagcomm7
         adrc~flagcomm8
         adrc~flagcomm9
         adrc~flagcomm10
         adrc~flagcomm11
         adrc~flagcomm12
         adrc~flagcomm13
         adrc~addrorigin
         adrc~mc_name1
         adrc~mc_city1
         adrc~mc_street
         adrc~extension1
         adrc~extension2
         adrc~time_zone
         adrc~taxjurcode
         adrc~address_id
         adrc~langu_crea
         adrc~adrc_uuid
         adrc~uuid_belated
         adrc~id_category
         adrc~adrc_err_status
         adrc~po_box_lobby
         adrc~deli_serv_type
         adrc~deli_serv_number
         adrc~county_code
         adrc~county
         adrc~township_code
         adrc~township
         adrc~mc_county
         adrc~mc_township
         adrc~xpcpt
         adrc~duns
         adrc~dunsp4
          INTO TABLE lwt_adrc
          FROM kna1
          INNER JOIN adrc
            ON adrc~addrnumber = kna1~adrnr
          FOR ALL ENTRIES IN mt_kna1
          WHERE kna1~kunnr = mt_kna1-source_id.
    ENDIF.
    SORT rt_adrc BY addrnumber.
    FIELD-SYMBOLS <fs_adrc> TYPE ty_adrc.
    " Now convert date to timestamp
    LOOP AT lwt_adrc  ASSIGNING <fs_adrc>.
      ls_adrc = CORRESPONDING #( <fs_adrc> ).
      ls_adrc-date_from = '00010101'.
      lv_date_c = |{ <fs_adrc>-date_to DATE = USER }|.
      ls_adrc-date_to = lv_date_c.

      APPEND ls_adrc TO rt_adrc.
      CLEAR: lv_date_c,ls_adrc.
    ENDLOOP.
  ENDMETHOD.


  METHOD get_but000.
*    DATA(tt_kna1) = me->get_kna1( ).
    TYPES: BEGIN OF ty_data,
             source_id TYPE kna1-kunnr,     " aliased
             natpers   TYPE but000-natpers,
             name_org1 TYPE but000-name_org1,
             name_org2 TYPE but000-name_org2,
             name_org3 TYPE but000-name_org3,
             name_org4 TYPE but000-name_org4,
             name1     TYPE adrc-name1,
             name2     TYPE adrc-name2,
             name3     TYPE adrc-name3,
             name4     TYPE adrc-name4,
             city1     TYPE adrc-city1,
           END OF ty_data.
    DATA lt_data TYPE TABLE OF ty_data.
    FIELD-SYMBOLS <fs_but000> TYPE ty_data.
    IF mt_kna1 IS NOT INITIAL.
      SELECT
       kna1~kunnr AS source_id
       but000~natpers
       but000~name_org1
       but000~name_org2
       but000~name_org3
       but000~name_org4
       adrc~name1
       adrc~name2
       adrc~name3
       adrc~name4
       adrc~city1
       INTO TABLE lt_data
      FROM kna1
      LEFT OUTER JOIN but000 ON but000~partner = kna1~kunnr
      LEFT OUTER JOIN adrc ON adrc~addrnumber = kna1~adrnr
       AND adrc~nation = ' '
      FOR ALL ENTRIES IN mt_kna1
      WHERE kna1~kunnr = mt_kna1-kunnr .

*      SELECT kna1~kunnr       AS source_id,
*             but000~natpers   AS natpers,
*        CASE
*          WHEN but000~name_org1 IS NOT INITIAL
*              THEN but000~name_org1
*          ELSE adrc~name1
*        END AS /zfz/zname1,
*
*        CASE
*          WHEN but000~name_org2 IS NOT INITIAL
*              THEN but000~name_org2
*          ELSE adrc~name2
*        END AS /zfz/zname2,
*
*        adrc~city1 AS /zfz/zcity,
*
*        CASE
*          WHEN but000~name_org1 IS NOT INITIAL
*              THEN but000~name_org1
*          ELSE adrc~name1
*        END AS name_org1,
*
*        CASE
*          WHEN but000~name_org2 IS NOT INITIAL
*              THEN but000~name_org2
*          ELSE adrc~name2
*        END AS name_org2,
*
*        CASE
*          WHEN but000~name_org3 IS NOT INITIAL
*              THEN but000~name_org3
*          ELSE adrc~name3
*        END AS name_org3 ,
*
*        CASE
*          WHEN but000~name_org4 IS NOT INITIAL
*              THEN but000~name_org4
*          ELSE adrc~name4
*        END AS name_org4
*        FROM kna1
*        LEFT OUTER JOIN but000
*              ON kna1~kunnr = but000~partner
*        LEFT OUTER JOIN adrc
*              ON adrc~addrnumber = kna1~adrnr
*        WHERE kna1~kunnr = @mt_kunnr
*           AND adrc~nation = ' '
*          INTO CORRESPONDING FIELDS OF TABLE @rt_but000.
    ELSE.
      MESSAGE 'No data found in but000.' TYPE 'S' DISPLAY LIKE 'E'..
    ENDIF.
*    SORT rt_but000 BY source_id.
    SORT lt_data BY source_id.
    DATA ls_but000 LIKE LINE OF rt_but000.
*    LOOP AT rt_but000 ASSIGNING FIELD-SYMBOL(<fs_but000>).
*      <fs_but000>-type = '2'.
*      <fs_but000>-bu_group = 'Z120'.
    LOOP AT lt_data ASSIGNING <fs_but000>.
      CLEAR ls_but000.

      ls_but000-type = '2'.
      ls_but000-bu_group = 'Z120'.

      ls_but000-source_id = <fs_but000>-source_id.
      ls_but000-natpers   = <fs_but000>-natpers.
      ls_but000-/zfz/zcity = <fs_but000>-city1.

      IF <fs_but000>-name_org1 IS NOT INITIAL.
        ls_but000-/zfz/zname1 = <fs_but000>-name_org1.
        ls_but000-name_org1   = <fs_but000>-name_org1.
      ELSE.
        ls_but000-/zfz/zname1 = <fs_but000>-name1.
        ls_but000-name_org1   = <fs_but000>-name1.
      ENDIF.

      IF <fs_but000>-name_org2 IS NOT INITIAL.
        ls_but000-/zfz/zname2 = <fs_but000>-name_org2.
        ls_but000-name_org2   = <fs_but000>-name_org2.
      ELSE.
        ls_but000-/zfz/zname2 = <fs_but000>-name2.
        ls_but000-name_org2   = <fs_but000>-name2.
      ENDIF.

      IF <fs_but000>-name_org3 IS NOT INITIAL.
        ls_but000-name_org3 = <fs_but000>-name_org3.
      ELSE.
        ls_but000-name_org3 = <fs_but000>-name3.
      ENDIF.

      IF <fs_but000>-name_org4 IS NOT INITIAL.
        ls_but000-name_org4 = <fs_but000>-name_org4.
      ELSE.
        ls_but000-name_org4 = <fs_but000>-name4.
      ENDIF.

      APPEND ls_but000 TO rt_but000.
    ENDLOOP.
  ENDMETHOD.


  METHOD get_but020.
*    DATA(tt_kna1) = me->get_kna1( ).
    TYPES: BEGIN OF ty_adrc,
             kunnr      TYPE kna1-kunnr,
             addrnumber TYPE kna1-adrnr,
           END OF ty_adrc.
    FIELD-SYMBOLS <fs_but020> TYPE  ty_adrc.
    DATA: gt_but020 TYPE STANDARD TABLE OF ty_adrc.
* Select data from adrc table
    IF mt_kna1 IS NOT INITIAL.
      SELECT kna1~kunnr
           adrc~addrnumber
          INTO TABLE gt_but020
      FROM adrc
      INNER JOIN kna1
         ON adrc~addrnumber = kna1~adrnr
          FOR ALL ENTRIES IN mt_kna1
            WHERE addrnumber = mt_kna1-adrnr
              AND kna1~kunnr = mt_kna1-source_id
               AND adrc~nation = ' '.
    ENDIF.
    DATA: lv_valid_from TYPE char14.
    CONCATENATE sy-datum '000000' INTO lv_valid_from.
*    CONCATENATE sy-datum '000000' INTO DATA(lv_valid_from).
    LOOP AT gt_but020 ASSIGNING <fs_but020>.
      APPEND VALUE ty_but020_str(
          source_id         = <fs_but020>-kunnr
          source_addrnumber = <fs_but020>-addrnumber
          date_from         = '00010101'
          addr_valid_from   = lv_valid_from
          addr_valid_to     = '99991231000000'
      ) TO rt_but020.
    ENDLOOP.

  ENDMETHOD.


  METHOD get_but021.

*    DATA(tt_kna1) = me->get_kna1( ).
    TYPES: BEGIN OF ty_gt_but021,
             kunnr      TYPE kna1-kunnr,
             addrnumber TYPE adrc-addrnumber,
           END OF ty_gt_but021.

    DATA: gt_but021     TYPE STANDARD TABLE OF ty_gt_but021,
          gs_but021     TYPE ty_gt_but021,
          lv_valid_from TYPE char14.
    FIELD-SYMBOLS <fs_but021> TYPE ty_gt_but021.

    IF mt_kna1 IS NOT INITIAL.
      SELECT
           kna1~kunnr
           adrc~addrnumber
            INTO TABLE gt_but021
      FROM adrc
      INNER JOIN kna1 ON adrc~addrnumber = kna1~adrnr
          FOR ALL ENTRIES IN mt_kna1
            WHERE addrnumber = mt_kna1-adrnr
              AND kna1~kunnr = mt_kna1-source_id
              AND adrc~nation = ' '.
*          INTO CORRESPONDING FIELDS OF lt_but021.

    ENDIF.
    CONCATENATE sy-datum '000000' INTO lv_valid_from.
*    CONCATENATE sy-datum '000000' INTO DATA(lv_valid_from).

    LOOP AT gt_but021 ASSIGNING <fs_but021>.
      APPEND VALUE ty_but021_str(
          source_id         = <fs_but021>-kunnr
          valid_to          = '99991231000000'
          adr_kind          = 'XXDEFAULT'
          source_addrnumber = <fs_but021>-addrnumber
          valid_from        = lv_valid_from
      ) TO rt_but021.
    ENDLOOP.

  ENDMETHOD.


  METHOD get_but0bk.
*    DATA(tt_kna1) = me->get_kna1( ).
    IF mt_kna1 IS NOT INITIAL.
      SELECT
       a~kunnr AS source_id
       a~banks
       a~bankl
       a~bankn
       a~bkont
       a~bkref
       a~koinh
       a~ebpp_accname
       a~kovon AS bk_valid_from
       a~kobis AS bk_valid_to
       b~iban
      INTO CORRESPONDING FIELDS OF TABLE rt_but0bk
      FROM knbk AS a
      LEFT OUTER JOIN tiban AS b
        ON  a~banks = b~banks
        AND a~bankl = b~bankl
        AND a~bankn = b~bankn
        AND a~bkont = b~bkont
     FOR ALL ENTRIES IN mt_kna1
    WHERE a~kunnr = mt_kna1-source_id .
    ENDIF.
  ENDMETHOD.


  METHOD get_but0id.
    DATA: ls_but0id TYPE ty_BUT0ID_str,
          gt_but0id TYPE TABLE OF  but0id.
    FIELD-SYMBOLS <fs_but0id> TYPE but0id.
    IF mt_kna1 IS NOT INITIAL.
      SELECT * FROM but0id INTO TABLE gt_but0id
        FOR ALL ENTRIES IN mt_kna1
        WHERE partner =  mt_kna1-kunnr.
    ENDIF.
    LOOP AT gt_BUT0ID ASSIGNING <fs_BUT0ID>.
      ls_but0id = CORRESPONDING #( <fs_BUT0ID> ). " Copies fields with same name
      ls_but0id-source_id      = <fs_BUT0ID>-partner.
      APPEND ls_but0id TO rt_but0id.
      CLEAR: <fs_BUT0ID>-partner.
    ENDLOOP.

    SORT rt_BUT0ID BY source_id.
  ENDMETHOD.


  METHOD get_but0is.
    DATA: ls_but0is TYPE ty_but0is_str,
          gt_but0is TYPE TABLE OF  but0is.
    FIELD-SYMBOLS <fs_but0is> TYPE but0is.

    IF mt_kna1 IS NOT INITIAL.
      SELECT * FROM but0is INTO TABLE gt_but0is
        FOR ALL ENTRIES IN mt_kna1
        WHERE partner = mt_kna1-kunnr.
    ENDIF.
    LOOP AT gt_but0is ASSIGNING <fs_but0is>.
      ls_BUT0IS = CORRESPONDING #( <fs_but0is> ). " Copies fields with same name
      ls_BUT0IS-source_id      = <fs_but0is>-partner.
      APPEND ls_but0is TO rt_but0is.
      CLEAR: <fs_but0is>-partner.
    ENDLOOP.

    SORT rt_BUT0IS BY source_id.
  ENDMETHOD.


  METHOD get_but100.
    DATA: ls_but100  TYPE ty_but100_str.

    TYPES: BEGIN OF ty_but100,
             kunnr      TYPE kna1-kunnr,
             partner    TYPE but100-partner,
             rltyp      TYPE but100-rltyp,
             dfval      TYPE but100-dfval,
             valid_from TYPE but100-valid_from,
             valid_to   TYPE but100-valid_to,
             role       TYPE but100-role,
             authority  TYPE but100-authority,
           END OF ty_but100.

    DATA:  gt_but100 TYPE TABLE OF ty_but100.

    FIELD-SYMBOLS <fs_but100> TYPE ty_but100.

*    DATA(tt_kna1) = me->get_kna1( ).
*    IF mt_kna1 IS NOT INITIAL.
*      SELECT
*         CASE
*          WHEN but100~partner IS NOT INITIAL
*              THEN but100~partner
*          ELSE kna1~kunnr
*        END AS partner,
*          rltyp,
*          dfval,
*          valid_from,
*          valid_to,
*          role,
*          authority
*        FROM kna1
*        LEFT OUTER JOIN but100 ON kna1~kunnr = but100~partner
*        WHERE kna1~kunnr IN @mt_kunnr
*        INTO TABLE @DATA(gt_but100).
*    ENDIF.
*    LOOP AT gt_but100 ASSIGNING FIELD-SYMBOL(<fs_but100>).
*      ls_but100 = CORRESPONDING #( <fs_but100> ). " Copies fields with same name
*      ls_but100-source_id      = <fs_but100>-partner.
*      APPEND ls_but100 TO rt_but100.
*      CLEAR: <fs_but100>-partner.
*    ENDLOOP.
*
*    SORT rt_but100 BY source_id.

    IF mt_kna1 IS NOT INITIAL.

      SELECT
             kna1~kunnr
             but100~partner
             but100~rltyp
             but100~dfval
             but100~valid_from
             but100~valid_to
             but100~role
             but100~authority
        INTO TABLE gt_but100
                FROM kna1
        LEFT OUTER JOIN but100
          ON but100~partner = kna1~kunnr
        FOR ALL ENTRIES IN mt_kna1
        WHERE kna1~kunnr = mt_kna1-kunnr.        .

      LOOP AT gt_but100 ASSIGNING <fs_but100>.

        CLEAR ls_but100.
*        ls_but100 = CORRESPONDING #( <fs_but100> ).
        MOVE-CORRESPONDING <fs_but100> TO ls_but100.
        " If BUT100 exists use PARTNER, otherwise use KUNNR
        IF <fs_but100>-partner IS NOT INITIAL.
          ls_but100-source_id = <fs_but100>-partner.
        ELSE.
          ls_but100-source_id = <fs_but100>-kunnr.
        ENDIF.

        APPEND ls_but100 TO rt_but100.
      ENDLOOP.
    ENDIF.

    SORT rt_but100 BY source_id.
  ENDMETHOD.


  METHOD get_kna1.
    DATA:lv_date_c TYPE char10,
         ls_kna1   TYPE ty_kna1_t.
    IF ( mt_kunnr IS INITIAL AND mt_bukrs IS INITIAL AND mt_vkorg IS INITIAL ) OR ( mt_kunnr IS NOT INITIAL AND mt_bukrs IS INITIAL AND mt_vkorg IS INITIAL ).

      SELECT * FROM kna1 INTO TABLE @DATA(gt_kna1)
        WHERE kunnr IN @mt_kunnr.

    ELSEIF   mt_bukrs IS NOT INITIAL AND mt_vkorg IS NOT INITIAL AND mt_kunnr IS NOT INITIAL.

      SELECT
            kna1~kunnr               ,
            kna1~land1               ,
            kna1~name1               ,
            kna1~name2               ,
            kna1~ort01               ,
            kna1~pstlz               ,
            kna1~regio               ,
            kna1~sortl               ,
            kna1~stras               ,
            kna1~telf1               ,
            kna1~telfx               ,
            kna1~xcpdk               ,
            kna1~adrnr               ,
            kna1~mcod1               ,
            kna1~mcod2               ,
            kna1~mcod3               ,
            kna1~anred               ,
            kna1~aufsd               ,
            kna1~bahne               ,
            kna1~bahns               ,
            kna1~bbbnr               ,
            kna1~bbsnr               ,
            kna1~begru               ,
            kna1~brsch               ,
            kna1~bubkz               ,
            kna1~datlt               ,
            kna1~erdat               ,
            kna1~ernam               ,
            kna1~exabl               ,
            kna1~faksd               ,
            kna1~fiskn               ,
            kna1~knazk               ,
            kna1~knrza               ,
            kna1~konzs               ,
            kna1~ktokd               ,
            kna1~kukla               ,
            kna1~lifnr               ,
            kna1~lifsd               ,
            kna1~locco               ,
            kna1~loevm               ,
            kna1~name3               ,
            kna1~name4               ,
            kna1~niels               ,
            kna1~ort02               ,
            kna1~pfach               ,
            kna1~pstl2               ,
            kna1~counc               ,
            kna1~cityc               ,
            kna1~rpmkr               ,
            kna1~sperr               ,
            kna1~spras               ,
            kna1~stcd1               ,
            kna1~stcd2               ,
            kna1~stkza               ,
            kna1~stkzu               ,
            kna1~telbx               ,
            kna1~telf2               ,
            kna1~teltx               ,
            kna1~telx1               ,
            kna1~lzone               ,
            kna1~xzemp               ,
            kna1~vbund               ,
            kna1~stceg               ,
            kna1~dear1               ,
            kna1~dear2               ,
            kna1~dear3               ,
            kna1~dear4               ,
            kna1~dear5               ,
            kna1~gform               ,
            kna1~bran1               ,
            kna1~bran2               ,
            kna1~bran3               ,
            kna1~bran4               ,
            kna1~bran5               ,
            kna1~ekont               ,
            kna1~umsat               ,
            kna1~umjah               ,
            kna1~uwaer               ,
            kna1~jmzah               ,
            kna1~jmjah               ,
            kna1~katr1               ,
            kna1~katr2               ,
            kna1~katr3               ,
            kna1~katr4               ,
            kna1~katr5               ,
            kna1~katr6               ,
            kna1~katr7               ,
            kna1~katr8               ,
            kna1~katr9               ,
            kna1~katr10              ,
            kna1~stkzn               ,
            kna1~umsa1               ,
            kna1~txjcd               ,
            kna1~periv               ,
            kna1~abrvw               ,
            kna1~inspbydebi          ,
            kna1~inspatdebi          ,
            kna1~ktocd               ,
            kna1~pfort               ,
            kna1~werks               ,
            kna1~dtams               ,
            kna1~dtaws               ,
            kna1~duefl               ,
            kna1~hzuor               ,
            kna1~sperz               ,
            kna1~etikg               ,
            kna1~civve               ,
            kna1~milve               ,
            kna1~kdkg1               ,
            kna1~kdkg2               ,
            kna1~kdkg3               ,
            kna1~kdkg4               ,
            kna1~kdkg5               ,
            kna1~xknza               ,
            kna1~fityp               ,
            kna1~stcdt               ,
            kna1~stcd3               ,
            kna1~stcd4               ,
            kna1~stcd5               ,
            kna1~stcd6               ,
            kna1~xicms               ,
            kna1~xxipi               ,
            kna1~xsubt               ,
            kna1~cfopc               ,
            kna1~txlw1               ,
            kna1~txlw2               ,
            kna1~ccc01               ,
            kna1~ccc02               ,
            kna1~ccc03               ,
            kna1~ccc04               ,
            kna1~bonded_area_confirm ,
            kna1~donate_mark         ,
            kna1~consolidate_invoice ,
            kna1~allowance_type      ,
            kna1~einvoice_mode       ,
            kna1~b2c_indicator       ,
            kna1~cassd               ,
            kna1~knurl               ,
            kna1~j_1kfrepre          ,
            kna1~j_1kftbus           ,
            kna1~j_1kftind           ,
            kna1~confs               ,
            kna1~updat               ,
            kna1~uptim               ,
            kna1~nodel               ,
            kna1~dear6               ,
            kna1~delivery_date_rule  ,
            kna1~cvp_xblck           ,
            kna1~suframa             ,
            kna1~rg                  ,
            kna1~exp                 ,
            kna1~uf                  ,
            kna1~rgdate              ,
            kna1~ric                 ,
            kna1~rne                 ,
            kna1~rnedate             ,
            kna1~cnae                ,
            kna1~legalnat            ,
            kna1~crtn                ,
            kna1~icmstaxpay          ,
            kna1~indtyp              ,
            kna1~tdt                 ,
            kna1~comsize             ,
            kna1~decregpc            ,
            kna1~ph_biz_style        ,
            kna1~paytrsn             ,
            kna1~kna1_eew_cust       ,
            kna1~rule_exclusion      ,
            kna1~data_ctrlr1         ,
            kna1~data_ctrlr2         ,
            kna1~data_ctrlr3         ,
            kna1~data_ctrlr4         ,
            kna1~data_ctrlr5         ,
            kna1~data_ctrlr6         ,
            kna1~data_ctrlr7         ,
            kna1~data_ctrlr8         ,
            kna1~data_ctrlr9         ,
            kna1~data_ctrlr10        ,
            kna1~xdcset              ,
            kna1~j_1iexcd            ,
            kna1~j_1iexrn            ,
            kna1~j_1iexrg            ,
            kna1~j_1iexdi            ,
            kna1~j_1iexco            ,
            kna1~j_1icstno           ,
            kna1~j_1ilstno           ,
            kna1~j_1ipanno           ,
            kna1~j_1iexcicu          ,
            kna1~aedat               ,
            kna1~usnam               ,
            kna1~j_1isern            ,
            kna1~j_1ipanref          ,
            kna1~gst_tds             ,
            kna1~/vso/r_palhgt       ,
            kna1~/vso/r_pal_ul       ,
            kna1~/vso/r_pk_mat       ,
            kna1~/vso/r_matpal       ,
            kna1~/vso/r_i_no_lyr     ,
            kna1~/vso/r_one_mat      ,
            kna1~/vso/r_one_sort
        FROM kna1
         INNER JOIN knb1 ON knb1~kunnr = kna1~kunnr
         INNER JOIN knvv ON knvv~kunnr = kna1~kunnr
         INTO CORRESPONDING FIELDS OF TABLE @gt_kna1
          WHERE kna1~kunnr IN @mt_kunnr AND
            ( knb1~bukrs IN @mt_bukrs
            OR knvv~vkorg IN @mt_vkorg ) .

      SORT gt_kna1 BY kunnr.
      DELETE gt_kna1 WHERE kunnr NOT IN mt_kunnr.

    ELSEIF  mt_bukrs IS NOT INITIAL AND mt_vkorg IS NOT INITIAL AND mt_kunnr IS INITIAL.

      DATA: lt_kunnr TYPE STANDARD TABLE OF kna1-kunnr.

      SELECT kunnr
        FROM knb1
        INTO TABLE @lt_kunnr
        WHERE bukrs IN @mt_bukrs.

      SELECT kunnr
        FROM knvv
        APPENDING TABLE @lt_kunnr
        WHERE vkorg IN @mt_vkorg.

      SORT lt_kunnr.
      DELETE ADJACENT DUPLICATES FROM lt_kunnr.

      SELECT *
        FROM kna1
        INTO TABLE @gt_kna1
        FOR ALL ENTRIES IN @lt_kunnr
        WHERE kunnr = @lt_kunnr-table_line.

    ELSEIF mt_bukrs IS NOT INITIAL AND mt_vkorg IS INITIAL.

      SELECT
      kna1~kunnr               ,
      kna1~land1               ,
      kna1~name1               ,
      kna1~name2               ,
      kna1~ort01               ,
      kna1~pstlz               ,
      kna1~regio               ,
      kna1~sortl               ,
      kna1~stras               ,
      kna1~telf1               ,
      kna1~telfx               ,
      kna1~xcpdk               ,
      kna1~adrnr               ,
      kna1~mcod1               ,
      kna1~mcod2               ,
      kna1~mcod3               ,
      kna1~anred               ,
      kna1~aufsd               ,
      kna1~bahne               ,
      kna1~bahns               ,
      kna1~bbbnr               ,
      kna1~bbsnr               ,
      kna1~begru               ,
      kna1~brsch               ,
      kna1~bubkz               ,
      kna1~datlt               ,
      kna1~erdat               ,
      kna1~ernam               ,
      kna1~exabl               ,
      kna1~faksd               ,
      kna1~fiskn               ,
      kna1~knazk               ,
      kna1~knrza               ,
      kna1~konzs               ,
      kna1~ktokd               ,
      kna1~kukla               ,
      kna1~lifnr               ,
      kna1~lifsd               ,
      kna1~locco               ,
      kna1~loevm               ,
      kna1~name3               ,
      kna1~name4               ,
      kna1~niels               ,
      kna1~ort02               ,
      kna1~pfach               ,
      kna1~pstl2               ,
      kna1~counc               ,
      kna1~cityc               ,
      kna1~rpmkr               ,
      kna1~sperr               ,
      kna1~spras               ,
      kna1~stcd1               ,
      kna1~stcd2               ,
      kna1~stkza               ,
      kna1~stkzu               ,
      kna1~telbx               ,
      kna1~telf2               ,
      kna1~teltx               ,
      kna1~telx1               ,
      kna1~lzone               ,
      kna1~xzemp               ,
      kna1~vbund               ,
      kna1~stceg               ,
      kna1~dear1               ,
      kna1~dear2               ,
      kna1~dear3               ,
      kna1~dear4               ,
      kna1~dear5               ,
      kna1~gform               ,
      kna1~bran1               ,
      kna1~bran2               ,
      kna1~bran3               ,
      kna1~bran4               ,
      kna1~bran5               ,
      kna1~ekont               ,
      kna1~umsat               ,
      kna1~umjah               ,
      kna1~uwaer               ,
      kna1~jmzah               ,
      kna1~jmjah               ,
      kna1~katr1               ,
      kna1~katr2               ,
      kna1~katr3               ,
      kna1~katr4               ,
      kna1~katr5               ,
      kna1~katr6               ,
      kna1~katr7               ,
      kna1~katr8               ,
      kna1~katr9               ,
      kna1~katr10              ,
      kna1~stkzn               ,
      kna1~umsa1               ,
      kna1~txjcd               ,
      kna1~periv               ,
      kna1~abrvw               ,
      kna1~inspbydebi          ,
      kna1~inspatdebi          ,
      kna1~ktocd               ,
      kna1~pfort               ,
      kna1~werks               ,
      kna1~dtams               ,
      kna1~dtaws               ,
      kna1~duefl               ,
      kna1~hzuor               ,
      kna1~sperz               ,
      kna1~etikg               ,
      kna1~civve               ,
      kna1~milve               ,
      kna1~kdkg1               ,
      kna1~kdkg2               ,
      kna1~kdkg3               ,
      kna1~kdkg4               ,
      kna1~kdkg5               ,
      kna1~xknza               ,
      kna1~fityp               ,
      kna1~stcdt               ,
      kna1~stcd3               ,
      kna1~stcd4               ,
      kna1~stcd5               ,
      kna1~stcd6               ,
      kna1~xicms               ,
      kna1~xxipi               ,
      kna1~xsubt               ,
      kna1~cfopc               ,
      kna1~txlw1               ,
      kna1~txlw2               ,
      kna1~ccc01               ,
      kna1~ccc02               ,
      kna1~ccc03               ,
      kna1~ccc04               ,
      kna1~bonded_area_confirm ,
      kna1~donate_mark         ,
      kna1~consolidate_invoice ,
      kna1~allowance_type      ,
      kna1~einvoice_mode       ,
      kna1~b2c_indicator       ,
      kna1~cassd               ,
      kna1~knurl               ,
      kna1~j_1kfrepre          ,
      kna1~j_1kftbus           ,
      kna1~j_1kftind           ,
      kna1~confs               ,
      kna1~updat               ,
      kna1~uptim               ,
      kna1~nodel               ,
      kna1~dear6               ,
      kna1~delivery_date_rule  ,
      kna1~cvp_xblck           ,
      kna1~suframa             ,
      kna1~rg                  ,
      kna1~exp                 ,
      kna1~uf                  ,
      kna1~rgdate              ,
      kna1~ric                 ,
      kna1~rne                 ,
      kna1~rnedate             ,
      kna1~cnae                ,
      kna1~legalnat            ,
      kna1~crtn                ,
      kna1~icmstaxpay          ,
      kna1~indtyp              ,
      kna1~tdt                 ,
      kna1~comsize             ,
      kna1~decregpc            ,
      kna1~ph_biz_style        ,
      kna1~paytrsn             ,
      kna1~kna1_eew_cust       ,
      kna1~rule_exclusion      ,
      kna1~data_ctrlr1         ,
      kna1~data_ctrlr2         ,
      kna1~data_ctrlr3         ,
      kna1~data_ctrlr4         ,
      kna1~data_ctrlr5         ,
      kna1~data_ctrlr6         ,
      kna1~data_ctrlr7         ,
      kna1~data_ctrlr8         ,
      kna1~data_ctrlr9         ,
      kna1~data_ctrlr10        ,
      kna1~xdcset              ,
      kna1~j_1iexcd            ,
      kna1~j_1iexrn            ,
      kna1~j_1iexrg            ,
      kna1~j_1iexdi            ,
      kna1~j_1iexco            ,
      kna1~j_1icstno           ,
      kna1~j_1ilstno           ,
      kna1~j_1ipanno           ,
      kna1~j_1iexcicu          ,
      kna1~aedat               ,
      kna1~usnam               ,
      kna1~j_1isern            ,
      kna1~j_1ipanref          ,
      kna1~gst_tds             ,
      kna1~/vso/r_palhgt       ,
      kna1~/vso/r_pal_ul       ,
      kna1~/vso/r_pk_mat       ,
      kna1~/vso/r_matpal       ,
      kna1~/vso/r_i_no_lyr     ,
      kna1~/vso/r_one_mat      ,
      kna1~/vso/r_one_sort
  FROM kna1
   INNER JOIN knb1 ON knb1~kunnr = kna1~kunnr
   INTO CORRESPONDING FIELDS OF TABLE @gt_kna1
    WHERE kna1~kunnr IN @mt_kunnr
      AND knb1~bukrs IN @mt_bukrs.

    ELSEIF mt_vkorg IS NOT INITIAL  AND mt_bukrs IS INITIAL.

      SELECT
      kna1~kunnr               ,
      kna1~land1               ,
      kna1~name1               ,
      kna1~name2               ,
      kna1~ort01               ,
      kna1~pstlz               ,
      kna1~regio               ,
      kna1~sortl               ,
      kna1~stras               ,
      kna1~telf1               ,
      kna1~telfx               ,
      kna1~xcpdk               ,
      kna1~adrnr               ,
      kna1~mcod1               ,
      kna1~mcod2               ,
      kna1~mcod3               ,
      kna1~anred               ,
      kna1~aufsd               ,
      kna1~bahne               ,
      kna1~bahns               ,
      kna1~bbbnr               ,
      kna1~bbsnr               ,
      kna1~begru               ,
      kna1~brsch               ,
      kna1~bubkz               ,
      kna1~datlt               ,
      kna1~erdat               ,
      kna1~ernam               ,
      kna1~exabl               ,
      kna1~faksd               ,
      kna1~fiskn               ,
      kna1~knazk               ,
      kna1~knrza               ,
      kna1~konzs               ,
      kna1~ktokd               ,
      kna1~kukla               ,
      kna1~lifnr               ,
      kna1~lifsd               ,
      kna1~locco               ,
      kna1~loevm               ,
      kna1~name3               ,
      kna1~name4               ,
      kna1~niels               ,
      kna1~ort02               ,
      kna1~pfach               ,
      kna1~pstl2               ,
      kna1~counc               ,
      kna1~cityc               ,
      kna1~rpmkr               ,
      kna1~sperr               ,
      kna1~spras               ,
      kna1~stcd1               ,
      kna1~stcd2               ,
      kna1~stkza               ,
      kna1~stkzu               ,
      kna1~telbx               ,
      kna1~telf2               ,
      kna1~teltx               ,
      kna1~telx1               ,
      kna1~lzone               ,
      kna1~xzemp               ,
      kna1~vbund               ,
      kna1~stceg               ,
      kna1~dear1               ,
      kna1~dear2               ,
      kna1~dear3               ,
      kna1~dear4               ,
      kna1~dear5               ,
      kna1~gform               ,
      kna1~bran1               ,
      kna1~bran2               ,
      kna1~bran3               ,
      kna1~bran4               ,
      kna1~bran5               ,
      kna1~ekont               ,
      kna1~umsat               ,
      kna1~umjah               ,
      kna1~uwaer               ,
      kna1~jmzah               ,
      kna1~jmjah               ,
      kna1~katr1               ,
      kna1~katr2               ,
      kna1~katr3               ,
      kna1~katr4               ,
      kna1~katr5               ,
      kna1~katr6               ,
      kna1~katr7               ,
      kna1~katr8               ,
      kna1~katr9               ,
      kna1~katr10              ,
      kna1~stkzn               ,
      kna1~umsa1               ,
      kna1~txjcd               ,
      kna1~periv               ,
      kna1~abrvw               ,
      kna1~inspbydebi          ,
      kna1~inspatdebi          ,
      kna1~ktocd               ,
      kna1~pfort               ,
      kna1~werks               ,
      kna1~dtams               ,
      kna1~dtaws               ,
      kna1~duefl               ,
      kna1~hzuor               ,
      kna1~sperz               ,
      kna1~etikg               ,
      kna1~civve               ,
      kna1~milve               ,
      kna1~kdkg1               ,
      kna1~kdkg2               ,
      kna1~kdkg3               ,
      kna1~kdkg4               ,
      kna1~kdkg5               ,
      kna1~xknza               ,
      kna1~fityp               ,
      kna1~stcdt               ,
      kna1~stcd3               ,
      kna1~stcd4               ,
      kna1~stcd5               ,
      kna1~stcd6               ,
      kna1~xicms               ,
      kna1~xxipi               ,
      kna1~xsubt               ,
      kna1~cfopc               ,
      kna1~txlw1               ,
      kna1~txlw2               ,
      kna1~ccc01               ,
      kna1~ccc02               ,
      kna1~ccc03               ,
      kna1~ccc04               ,
      kna1~bonded_area_confirm ,
      kna1~donate_mark         ,
      kna1~consolidate_invoice ,
      kna1~allowance_type      ,
      kna1~einvoice_mode       ,
      kna1~b2c_indicator       ,
      kna1~cassd               ,
      kna1~knurl               ,
      kna1~j_1kfrepre          ,
      kna1~j_1kftbus           ,
      kna1~j_1kftind           ,
      kna1~confs               ,
      kna1~updat               ,
      kna1~uptim               ,
      kna1~nodel               ,
      kna1~dear6               ,
      kna1~delivery_date_rule  ,
      kna1~cvp_xblck           ,
      kna1~suframa             ,
      kna1~rg                  ,
      kna1~exp                 ,
      kna1~uf                  ,
      kna1~rgdate              ,
      kna1~ric                 ,
      kna1~rne                 ,
      kna1~rnedate             ,
      kna1~cnae                ,
      kna1~legalnat            ,
      kna1~crtn                ,
      kna1~icmstaxpay          ,
      kna1~indtyp              ,
      kna1~tdt                 ,
      kna1~comsize             ,
      kna1~decregpc            ,
      kna1~ph_biz_style        ,
      kna1~paytrsn             ,
      kna1~kna1_eew_cust       ,
      kna1~rule_exclusion      ,
      kna1~data_ctrlr1         ,
      kna1~data_ctrlr2         ,
      kna1~data_ctrlr3         ,
      kna1~data_ctrlr4         ,
      kna1~data_ctrlr5         ,
      kna1~data_ctrlr6         ,
      kna1~data_ctrlr7         ,
      kna1~data_ctrlr8         ,
      kna1~data_ctrlr9         ,
      kna1~data_ctrlr10        ,
      kna1~xdcset              ,
      kna1~j_1iexcd            ,
      kna1~j_1iexrn            ,
      kna1~j_1iexrg            ,
      kna1~j_1iexdi            ,
      kna1~j_1iexco            ,
      kna1~j_1icstno           ,
      kna1~j_1ilstno           ,
      kna1~j_1ipanno           ,
      kna1~j_1iexcicu          ,
      kna1~aedat               ,
      kna1~usnam               ,
      kna1~j_1isern            ,
      kna1~j_1ipanref          ,
      kna1~gst_tds             ,
      kna1~/vso/r_palhgt       ,
      kna1~/vso/r_pal_ul       ,
      kna1~/vso/r_pk_mat       ,
      kna1~/vso/r_matpal       ,
      kna1~/vso/r_i_no_lyr     ,
      kna1~/vso/r_one_mat      ,
      kna1~/vso/r_one_sort
  FROM kna1
   INNER JOIN knvv ON knvv~kunnr = kna1~kunnr
   INTO CORRESPONDING FIELDS OF TABLE @gt_kna1
    WHERE kna1~kunnr IN @mt_kunnr
      AND knvv~vkorg IN @mt_vkorg.
    ELSE.
      MESSAGE 'No Data found' TYPE 'I'.
    ENDIF.

    LOOP AT gt_kna1 ASSIGNING FIELD-SYMBOL(<fs_kna1>).
      ls_kna1 = CORRESPONDING #( <fs_kna1> ). " Copies fields with same name
      " Now set custom fields
      ls_kna1-source_id      = <fs_kna1>-kunnr.
      ls_kna1-assignment_id  = '0000000002'.
      " Format the date for Excel output
      lv_date_c = |{ <fs_kna1>-erdat DATE = USER }|.
      ls_kna1-erdat = lv_date_c.
      APPEND ls_kna1 TO rt_kna1.
      CLEAR: <fs_kna1>-kunnr, lv_date_c,ls_kna1.
    ENDLOOP.
* Check if any data is selected
    SORT rt_kna1 BY source_id.
    mt_kna1 = rt_kna1.
  ENDMETHOD.


  METHOD get_kna1_ass.
*    DATA(tt_kna1) = me->get_kna1( ).
    IF mt_kna1 IS NOT INITIAL.
      LOOP AT mt_kna1 ASSIGNING FIELD-SYMBOL(<fs_kna1>).
        APPEND VALUE ty_assignment(
            source_id            = <fs_kna1>-source_id
            assignment_id        = '0000000002'
            assignment_cat       = 'CUST'
            standard             = 'x'
        ) TO rt_asst.
      ENDLOOP.
    ENDIF.
  ENDMETHOD.


  METHOD get_knb1.
    DATA:lv_date_c TYPE char10,
         ls_knb1   TYPE ty_knb1_str.

    IF mt_kna1 IS NOT INITIAL.
      IF mt_bukrs IS NOT INITIAL.
        SELECT * FROM knb1 INTO TABLE @DATA(lwt_knb1)
   WHERE kunnr IN @mt_kunnr
     AND bukrs IN @mt_bukrs.
      ELSE.
        SELECT * FROM knb1 INTO TABLE @lwt_knb1
          FOR ALL ENTRIES IN @mt_kna1
   WHERE kunnr =  @mt_kna1-kunnr.
      ENDIF.
    ENDIF.

    LOOP AT lwt_knb1 ASSIGNING FIELD-SYMBOL(<fs_knb1>).
      ls_knb1 = CORRESPONDING #( <fs_knb1> ).
      ls_knb1-source_id = <fs_knb1>-kunnr.
      ls_knb1-assignment_id = '0000000002'.
      lv_date_c = |{ <fs_knb1>-erdat DATE = USER }|.
      ls_knb1-erdat = lv_date_c.
      APPEND ls_knb1 TO rt_knb1.
      CLEAR: lv_date_c, ls_knb1.
    ENDLOOP.

    SORT rt_knb1 BY kunnr.

  ENDMETHOD.


  METHOD get_knb5.
    DATA:lv_date_c TYPE char10,
         ls_knb5   TYPE ty_knb5_str.

    IF mt_kna1 IS NOT INITIAL.
      IF mt_bukrs IS NOT INITIAL.
        SELECT * FROM knb5 INTO TABLE @DATA(lwt_knb5)
   WHERE kunnr IN @mt_kunnr
     AND bukrs IN @mt_bukrs.
      ELSE.
        SELECT * FROM knb5 INTO TABLE @lwt_knb5
          FOR ALL ENTRIES IN @mt_kna1
   WHERE kunnr = @mt_kna1-kunnr.
      ENDIF.
    ENDIF.




    LOOP AT lwt_knb5 ASSIGNING FIELD-SYMBOL(<fs_knb5>).
      ls_knb5 = CORRESPONDING #( <fs_knb5> ).
      ls_knb5-source_id = <fs_knb5>-kunnr.
      ls_knb5-assignment_id = '0000000002'.
      lv_date_c = |{ <fs_knb5>-madat DATE = USER }|.
      ls_knb5-madat = lv_date_c.
      APPEND ls_knb5 TO rt_knb5.
      CLEAR: lv_date_c, ls_knb5.
    ENDLOOP.
    SORT rt_knb5 BY kunnr.
  ENDMETHOD.


  METHOD get_knbw.

    IF mt_bukrs IS NOT INITIAL.
      SELECT * FROM knbw INTO CORRESPONDING FIELDS OF TABLE rt_knbw
     WHERE kunnr IN mt_KUNNR
       AND bukrs IN mt_bukrs.

    ELSE.
      IF mt_kna1 IS NOT INITIAL.
        SELECT * FROM knbw INTO CORRESPONDING FIELDS OF TABLE rt_knbw
           FOR ALL ENTRIES IN mt_kna1
           WHERE kunnr = mt_Kna1-kunnr
             AND bukrs IN mt_bukrs.
      ENDIF.
    ENDIF.

    LOOP AT rt_KNBW ASSIGNING FIELD-SYMBOL(<fs_knbw>).
      <fs_knbw>-source_id = <fs_knbw>-kunnr.
      <fs_knbw>-assignment_id = '0000000002'.
    ENDLOOP.

    SORT rt_KNBW BY kunnr.
  ENDMETHOD.


  METHOD get_knva.
    DATA: ls_knva  TYPE ty_knva_str.
    IF mt_kna1 IS NOT INITIAL.
      SELECT * FROM knva INTO TABLE @DATA(gt_knva)
        FOR ALL ENTRIES IN @mt_kna1
        WHERE kunnr = @mt_kna1-kunnr.
    ENDIF.
    LOOP AT gt_knva ASSIGNING FIELD-SYMBOL(<fs_knva>).
      ls_knva = CORRESPONDING #( <fs_knva> ). " Copies fields with same name
      ls_knva-source_id      = <fs_knva>-kunnr.
      ls_knva-assignment_id  = '0000000002'.
      APPEND ls_knva TO rt_knva.
      CLEAR: <fs_knva>-kunnr.
    ENDLOOP.

    SORT rt_knva BY source_id.
  ENDMETHOD.


  METHOD get_knvi.
    DATA: ls_knvi  TYPE ty_knvi_str.
    IF mt_kna1 IS NOT INITIAL.
      SELECT * FROM knvi INTO TABLE @DATA(gt_knvi)
        FOR ALL ENTRIES IN @mt_kna1
        WHERE kunnr = @mt_kna1-kunnr.
    ENDIF.
    LOOP AT gt_knvi ASSIGNING FIELD-SYMBOL(<fs_knvi>).
      ls_knvi = CORRESPONDING #( <fs_knvi> ). " Copies fields with same name
      ls_knvi-source_id      = <fs_knvi>-kunnr.
      ls_knvi-assignment_id  = '0000000002'.
      APPEND ls_knvi TO rt_knvi.
      CLEAR: <fs_knvi>-kunnr.
    ENDLOOP.

    SORT rt_knvi BY source_id.
  ENDMETHOD.


  METHOD get_knvp.
    DATA: ls_knvp   TYPE ty_knvp_str.
    DATA(tt_knvv) = me->get_knvv( ).
    IF  tt_knvv IS NOT INITIAL. "mt_kna1 IS NOT INITIAL and
      SELECT * FROM knvp INTO TABLE @DATA(gt_knvp)
        FOR ALL ENTRIES IN @tt_knvv   "@mt_kna1
        WHERE kunnr = @tt_knvv-kunnr.  "@mt_kna1-kunnr.
    ENDIF.
    LOOP AT gt_knvp ASSIGNING FIELD-SYMBOL(<fs_knvp>).
      ls_knvp = CORRESPONDING #( <fs_knvp> ). " Copies fields with same name
      ls_knvp-source_id      = <fs_knvp>-kunnr.
      ls_knvp-assignment_id  = '0000000002'.
      APPEND ls_knvp TO rt_knvp.
      CLEAR: <fs_knvp>-kunnr.
    ENDLOOP.

    SORT rt_knvp BY source_id.
  ENDMETHOD.


  METHOD get_knvv.
    DATA:lv_date_c TYPE char10,
         ls_knvv   TYPE ty_knvv_str.

    IF mt_kna1 IS NOT INITIAL.
      IF mt_vkorg IS NOT INITIAL.
        SELECT * FROM knvv INTO TABLE @DATA(gt_knvv)
         WHERE kunnr IN @mt_kunnr
           AND vkorg IN @mt_vkorg.
      ELSE.
        SELECT * FROM knvv INTO TABLE @gt_knvv
            FOR ALL ENTRIES IN @mt_kna1
             WHERE kunnr = @mt_kna1-kunnr
               AND vkorg IN @mt_vkorg.
      ENDIF.
    ENDIF.

*    SELECT * FROM knvv INTO TABLE @DATA(gt_knvv)
*      WHERE kunnr IN @mt_kunnr.

    LOOP AT gt_knvv ASSIGNING FIELD-SYMBOL(<fs_knvv>).
      ls_knvv = CORRESPONDING #( <fs_knvv> ). " Copies fields with same name
      ls_knvv-source_id      = <fs_knvv>-kunnr.
      ls_knvv-assignment_id  = '0000000002'.
      lv_date_c = |{ <fs_knvv>-erdat DATE = USER }|.
      ls_knvv-erdat = lv_date_c.
      ls_knvv-boidt = |{ <fs_knvv>-boidt DATE = USER }|.
      APPEND ls_knvv TO rt_knvv.
      CLEAR: <fs_knvv>-kunnr, lv_date_c,ls_knvv.
    ENDLOOP.

    SORT rt_knvv BY source_id.
  ENDMETHOD.


  METHOD get_mapping.
    TYPES: BEGIN OF ty_record,
             line TYPE x255, "binary line for file read
           END OF ty_record,

           BEGIN OF ty_tab,
             targ_struc TYPE string,
             targ_field TYPE string,
             rule_typ   TYPE string,
             rule       TYPE string,
           END OF ty_tab,

           BEGIN OF ty_sheet,
             source TYPE string,
             target TYPE string,
           END OF ty_sheet,

           BEGIN OF ty_kna1_t,
             o_waers TYPE waers,
             n_waers TYPE waers,
           END OF ty_kna1_t.


    DATA: ip_file1         TYPE string,
          gv_filelength    TYPE i,
          gv_headerxstring TYPE xstring,
          gv_rc            TYPE i,
          c_fname          TYPE string,
          lv_woksheetname  TYPE string.

    DATA: lv_filetable TYPE filetable,
          lt_records   TYPE STANDARD TABLE OF ty_record,
          gt_tab       TYPE STANDARD TABLE OF ty_tab,  "example – replace with your structure
          gs_tab       TYPE ty_tab,
          gt_sheet     TYPE STANDARD TABLE OF ty_sheet,
          gt_pntdet    TYPE STANDARD TABLE OF string,
          gt_purorg    TYPE STANDARD TABLE OF string,
          gt_docdet    TYPE STANDARD TABLE OF string,
          gt_waers     TYPE TABLE OF ty_kna1_t.

* Object references
    DATA: lo_excel_ref TYPE REF TO cl_fdt_xl_spreadsheet,
          lo_data_ref  TYPE REF TO data.

    FIELD-SYMBOLS: <lt_tab1>   TYPE STANDARD TABLE,
                   <lt_sheet1> TYPE STANDARD TABLE,
                   <lt_tab2>   TYPE STANDARD TABLE,
                   <lt_tab15>  TYPE STANDARD TABLE,
                   <lt_tab16>  TYPE STANDARD TABLE.

    TYPES: BEGIN OF ty_dynmap,
             field_name TYPE string,
             old_value  TYPE string,
             new_value  TYPE string,
           END OF ty_dynmap.

    DATA: gt_dynmap TYPE STANDARD TABLE OF ty_dynmap.

    "--------------------------------------------------------
    " Upload file
    "--------------------------------------------------------
    IF ip_file IS NOT INITIAL.
      CALL FUNCTION 'GUI_UPLOAD'
        EXPORTING
          filename   = ip_file    "File path
          filetype   = 'BIN'
        IMPORTING
          filelength = gv_filelength
          header     = gv_headerxstring
        TABLES
          data_tab   = lt_records
        EXCEPTIONS
          OTHERS     = 1.

      IF sy-subrc <> 0.
        MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
                WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
        RETURN.
      ENDIF.

      "--------------------------------------------------------
      " Convert binary to xstring
      "--------------------------------------------------------
      CALL FUNCTION 'SCMS_BINARY_TO_XSTRING'
        EXPORTING
          input_length = gv_filelength
        IMPORTING
          buffer       = gv_headerxstring
        TABLES
          binary_tab   = lt_records
        EXCEPTIONS
          OTHERS       = 1.

      IF sy-subrc <> 0.
        MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
                WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
        RETURN.
      ENDIF.

      "--------------------------------------------------------
      " Create Excel object from file
      "--------------------------------------------------------
      TRY.
          lo_excel_ref = NEW cl_fdt_xl_spreadsheet(
                            document_name = ip_file
                            xdocument     = gv_headerxstring ).

        CATCH cx_fdt_excel_core INTO DATA(lx_excel).
          MESSAGE lx_excel->get_text( ) TYPE 'E'.
      ENDTRY.

      IF lo_excel_ref IS BOUND.

        " Get worksheet names
        lo_excel_ref->if_fdt_doc_spreadsheet~get_worksheet_names(
          IMPORTING
            worksheet_names = DATA(lt_worksheets) ).

        IF NOT lt_worksheets IS INITIAL.

          "----------------------------------------------------
          " Example 1: Company/Plant MAPPING
          "----------------------------------------------------
          READ TABLE lt_worksheets INTO lv_woksheetname WITH KEY table_line = 'Overview'.
*            READ TABLE lt_worksheets INTO lv_woksheetname INDEX 1.
          IF sy-subrc = 0.
            lo_data_ref =
              lo_excel_ref->if_fdt_doc_spreadsheet~get_itab_from_worksheet( lv_woksheetname ).   "Pass the worksheet name to get the data of that sheet
            ASSIGN lo_data_ref->* TO <lt_tab1>.
            IF <lt_tab1> IS ASSIGNED.

*              APPEND LINES OF <lt_tab1> TO gt_tab.
              FIELD-SYMBOLS: <fs_tab1> TYPE any.

              LOOP AT <lt_tab1> ASSIGNING <fs_tab1>.

                ASSIGN COMPONENT 'K' OF STRUCTURE <fs_tab1> TO FIELD-SYMBOL(<f_k>).
                ASSIGN COMPONENT 'L' OF STRUCTURE <fs_tab1> TO FIELD-SYMBOL(<f_l>).
                ASSIGN COMPONENT 'N' OF STRUCTURE <fs_tab1> TO FIELD-SYMBOL(<f_n>).
                ASSIGN COMPONENT 'O' OF STRUCTURE <fs_tab1> TO FIELD-SYMBOL(<f_o>).

                IF sy-subrc = 0.

                  gs_tab-targ_struc = <f_k>.
                  gs_tab-targ_field = <f_l>.
                  gs_tab-rule_typ   = <f_n>.
                  gs_tab-rule       = <f_o>.

                  APPEND gs_tab TO gt_tab.

                ENDIF.

              ENDLOOP.
*              APPEND LINES OF <lt_tab1> TO it_tab.
              DELETE gt_tab WHERE targ_struc = ''.
              DELETE gt_tab WHERE targ_struc = 'Target Structure'.
              APPEND LINES OF gt_tab TO it_tab.

*              LOOP AT gt_tab ASSIGNING FIELD-SYMBOL(<fs_tab>).
              LOOP AT gt_tab ASSIGNING FIELD-SYMBOL(<fs_tab>) WHERE rule_typ = 'MAPPING' OR rule_typ = 'FIXED VALUE' OR rule_typ = 'EMPTY'.

                IF <fs_tab>-rule_typ = 'MAPPING'.

                  lo_data_ref =
                             lo_excel_ref->if_fdt_doc_spreadsheet~get_itab_from_worksheet( <fs_tab>-rule ). "Pass the worksheet name to get the data of that sheet

                  ASSIGN lo_data_ref->* TO <lt_sheet1>.

*                APPEND LINES OF <lt_sheet1> TO gt_sheet.


                  CLEAR gt_dynmap.

                  CALL METHOD me->seprate_data
                    EXPORTING
                      iv_table = <lt_sheet1>
                    CHANGING
                      ct_table = gt_dynmap.

                ENDIF.

                FIELD-SYMBOLS: <fs_field> TYPE any.

                DATA: lr_table TYPE REF TO data.

                FIELD-SYMBOLS <lt_any> TYPE STANDARD TABLE.

                CASE <fs_tab>-targ_struc.
                  WHEN 'KNA1'.
                    LOOP AT it_kna1 ASSIGNING FIELD-SYMBOL(<fs_kna1>).
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING FIELD-SYMBOL(<fs_map>).

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_kna1> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED AND <fs_tab>-rule_typ = 'MAPPING'.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.

                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_kna1> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_kna1> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.
                  WHEN 'BUT000'.
                    LOOP AT it_but000 ASSIGNING FIELD-SYMBOL(<fs_but000>).
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_but000> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED AND <fs_tab>-rule_typ = 'MAPPING'.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.
                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_but000> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_but000> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.
                  WHEN 'BUT100'.
                    LOOP AT it_but100 ASSIGNING FIELD-SYMBOL(<fs_but100>).
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_but100> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED AND <fs_tab>-rule_typ = 'MAPPING'.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.
                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_but100> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_but100> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.
                  WHEN 'BUT020'.
                    LOOP AT it_but020 ASSIGNING FIELD-SYMBOL(<fs_but020>).
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_but020> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED AND <fs_tab>-rule_typ = 'MAPPING'.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.
                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_but020> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_but020> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.

                  WHEN 'ADR2'.
                    LOOP AT it_adr2 ASSIGNING FIELD-SYMBOL(<fs_adr2>).
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_adr2> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED AND <fs_tab>-rule_typ = 'MAPPING'.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.
                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_adr2> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_adr2> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.

                  WHEN 'ADR6'.
                    LOOP AT it_adr6 ASSIGNING FIELD-SYMBOL(<fs_adr6>).
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_adr6> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED AND <fs_tab>-rule_typ = 'MAPPING'.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.
                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_adr6> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_adr6> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.
                  WHEN 'BUT0BK'.
                    LOOP AT it_but0bk ASSIGNING FIELD-SYMBOL(<fs_but0bk>).
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_but0bk> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED AND <fs_tab>-rule_typ = 'MAPPING'.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.
                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_but0bk> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_but0bk> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.
                  WHEN 'BUT0IS'.
                    LOOP AT it_but0is ASSIGNING FIELD-SYMBOL(<fs_but0is>).
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_but0is> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED AND <fs_tab>-rule_typ = 'MAPPING'.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.
                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_but0is> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_but0is> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.
                  WHEN 'KNB5'.
                    LOOP AT it_knb5 ASSIGNING FIELD-SYMBOL(<fs_knb5>).
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.
                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_knb5> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.
                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_knb5> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_knb5> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.
                  WHEN 'KNBW'.
                    LOOP AT it_knbw ASSIGNING FIELD-SYMBOL(<fs_knbw>).
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_knbw> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.
                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_knbw> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_knbw> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.
                  WHEN 'KNVI'.
                    LOOP AT it_knvi ASSIGNING FIELD-SYMBOL(<fs_knvi>).
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_knvi> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.
                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_knvi> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_knvi> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.
                  WHEN 'KNB1'.
                    LOOP AT it_knb1 ASSIGNING FIELD-SYMBOL(<fs_knb1>).
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.
                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_knb1> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.
                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_knb1> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_knb1> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.
                  WHEN 'KNVV'.
                    LOOP AT it_knvv ASSIGNING FIELD-SYMBOL(<fs_knvv>).
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.
                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_knvv> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.
                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_knvv> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_knvv> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.
                  WHEN 'KNVP'.
                    LOOP AT it_knvp ASSIGNING FIELD-SYMBOL(<fs_knvp>).
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.
                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_knvp> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.
                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_knvp> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_knvp> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.
                  WHEN 'KNVA'.
                    LOOP AT it_knva ASSIGNING FIELD-SYMBOL(<fs_knva>).
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.
                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_knva> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.
                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_knva> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_knva> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.
                  WHEN 'ADRC'.
                    LOOP AT it_adrc ASSIGNING FIELD-SYMBOL(<fs_adrc>).
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.
                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_adrc> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.
                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_adrc> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_adrc> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.
                  WHEN 'KNA1_ASSGMNT'.
                    LOOP AT it_kna1ass ASSIGNING FIELD-SYMBOL(<fs_kna1ass>).
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.
                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_kna1ass> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.
                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_kna1ass> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_kna1ass> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.
                  WHEN 'DFKKBPTAXNUM'.
                    LOOP AT it_tax ASSIGNING FIELD-SYMBOL(<fs_tax>).
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.
                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_tax> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.
                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_tax> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_tax> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.
                  WHEN OTHERS.
                    " Handle unknown target structure types
                    CONTINUE.
                ENDCASE.
              ENDLOOP.
            ENDIF.
          ELSE.
            MESSAGE 'Please check the file' TYPE 'E'.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.

  ENDMETHOD.


  METHOD get_tax_data.

    DATA : ls_tax TYPE ty_tax_str.


    LOOP AT it_tab ASSIGNING FIELD-SYMBOL(<fs_tab>).

      CLEAR ls_tax.

      IF <fs_tab>-stceg IS NOT INITIAL.
        CLEAR ls_tax.
        DATA(postfix) = 0.  "if its VAT registration number, the tax category will be country + 0. ex: DE+0=DE0.
        ls_tax-source_id = <fs_tab>-source_id.
        ls_tax-taxtype = |{ <fs_tab>-land1 }{ postfix }|.
        ls_tax-taxnum = <fs_tab>-stceg.
        APPEND ls_tax TO rt_tax.
      ENDIF.

      IF <fs_tab>-stcd1 IS NOT INITIAL.
        CLEAR ls_tax.
        postfix = 1. "if its tax number 1, the tax category will be country + 1. ex: DE+1=DE1.
        ls_tax-source_id = <fs_tab>-source_id.
        ls_tax-taxtype = |{ <fs_tab>-land1 }{ postfix }|.
        ls_tax-taxnum = <fs_tab>-stcd1.
        APPEND ls_tax TO rt_tax.
      ENDIF.

      IF <fs_tab>-stcd2 IS NOT INITIAL.
        CLEAR ls_tax.
        postfix = 2.
        ls_tax-source_id = <fs_tab>-source_id.
        ls_tax-taxtype = |{ <fs_tab>-land1 }{ postfix }|.
        ls_tax-taxnum = <fs_tab>-stcd2.
        APPEND ls_tax TO rt_tax.
      ENDIF.

      IF <fs_tab>-stcd3 IS NOT INITIAL.
        CLEAR ls_tax.
        postfix  = 3.
        ls_tax-source_id = <fs_tab>-source_id.
        ls_tax-taxtype = |{ <fs_tab>-land1 }{ postfix }|.
        ls_tax-taxnum = <fs_tab>-stcd3.
        APPEND ls_tax TO rt_tax.
      ENDIF.

      IF <fs_tab>-stcd4 IS NOT INITIAL.
        CLEAR ls_tax.
        postfix = 4.
        ls_tax-source_id = <fs_tab>-source_id.
        ls_tax-taxtype = |{ <fs_tab>-land1 }{ postfix }|.
        ls_tax-taxnum = <fs_tab>-stcd4.
        APPEND ls_tax TO rt_tax.
      ENDIF.

      IF <fs_tab>-stcd5 IS NOT INITIAL.
        CLEAR ls_tax.
        postfix = 5.
        ls_tax-source_id = <fs_tab>-source_id.
        ls_tax-taxtype = |{ <fs_tab>-land1 }{ postfix }|.

        IF <fs_tab>-land1 = 'CN'.
          ls_tax-taxnumxl = <fs_tab>-stcd5.
        ELSE.
          ls_tax-taxnum = <fs_tab>-stcd5.
        ENDIF.
        APPEND ls_tax TO rt_tax.
      ENDIF.

      IF <fs_tab>-stcd6 IS NOT INITIAL.
        CLEAR ls_tax.
        postfix = 6.
        ls_tax-source_id = <fs_tab>-source_id.
        ls_tax-taxtype = |{ <fs_tab>-land1 }{ postfix }|.
        ls_tax-taxnum = <fs_tab>-stcd6.
        APPEND ls_tax TO rt_tax.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.


  METHOD seprate_data.

    DATA : lv_flag      TYPE boolean,
           l_param1     TYPE syst-msgv1,
           l_param2     TYPE syst-msgv1,
           lv_skip      TYPE i,
           lv_empty     TYPE boole_d,
           lv_empty_tmp TYPE boole_d.

    DATA: lo_struct TYPE REF TO cl_abap_structdescr,
          lo_table  TYPE REF TO cl_abap_tabledescr,
          lr_type   TYPE REF TO cl_abap_typedescr.

    FIELD-SYMBOLS: <ls_data> TYPE any,
                   <fs_data> TYPE any,
                   <fs_comp> TYPE any.

    DATA : lt_field TYPE cl_abap_structdescr=>component_table,
           lt_comp  TYPE cl_abap_structdescr=>component_table.


*--  find out number of columns dynamically from table
    lo_table ?= cl_abap_structdescr=>describe_by_data( ct_table ).
    lo_struct ?= lo_table->get_table_line_type( ).
    lt_field = lo_struct->get_components( ).
*    IF iv_table IS ASSIGNED.
    LOOP AT iv_table ASSIGNING  <ls_data> FROM 2.
      IF <ls_data> IS INITIAL.
        EXIT.
      ENDIF.
      lv_empty = abap_true.
      APPEND INITIAL LINE TO ct_table ASSIGNING FIELD-SYMBOL(<ls_context>).
      lv_flag = abap_true.
      l_param1 = sy-tabix.
      CONDENSE l_param1 NO-GAPS.
      WHILE lv_flag = abap_true.
        lv_empty_tmp = abap_false.
        ASSIGN COMPONENT sy-index OF STRUCTURE <ls_data> TO <fs_comp> .
        IF <fs_comp> IS NOT ASSIGNED.
          lv_flag = abap_false.
          EXIT.
        ELSE.
          IF <fs_comp> IS INITIAL.
            lv_empty_tmp = abap_true.
          ENDIF.
          READ TABLE lt_field ASSIGNING FIELD-SYMBOL(<ls_field>) INDEX sy-index .
          IF sy-subrc = 0.
            ASSIGN COMPONENT <ls_field>-name OF STRUCTURE <ls_context> TO FIELD-SYMBOL(<ls_value>).
            l_param2 = <ls_field>-name.
            CONDENSE l_param2 NO-GAPS.
            lr_type ?= <ls_field>-type.
            IF <fs_comp> IS NOT INITIAL.
              <ls_value> = <fs_comp>.
            ENDIF.
          ENDIF.
        ENDIF.
        UNASSIGN <fs_comp>.
      ENDWHILE.
    ENDLOOP .

  ENDMETHOD.


  METHOD get_mapping_data.
    DATA:
      lo_mapping TYPE REF TO zcl_mapping_file,
      lt_tables  TYPE zcl_mapping_file=>tt_table_ref.

    FIELD-SYMBOLS: <lt_table> TYPE STANDARD TABLE.

    "----------------------------------------------------------
    " Pass internal tables to generic mapping class
    "----------------------------------------------------------
    APPEND VALUE #(
      targ_struc = 'KNA1'
      table_ref  = REF #( it_kna1 )
    ) TO lt_tables.


    APPEND VALUE #(
      targ_struc = 'BUT000'
      table_ref  = REF #( it_but000 )
    ) TO lt_tables.


    APPEND VALUE #(
      targ_struc = 'BUT100'
      table_ref  = REF #( it_but100 )
    ) TO lt_tables.


    APPEND VALUE #(
      targ_struc = 'BUT020'
      table_ref  = REF #( it_but020 )
    ) TO lt_tables.


    APPEND VALUE #(
      targ_struc = 'ADR2'
      table_ref  = REF #( it_adr2 )
    ) TO lt_tables.


    APPEND VALUE #(
      targ_struc = 'ARC6'
      table_ref  = REF #( it_adr6 )
    ) TO lt_tables.


    APPEND VALUE #(
      targ_struc = 'BUT0BK'
      table_ref  = REF #( it_but0bk )
    ) TO lt_tables.


    APPEND VALUE #(
      targ_struc = 'BUT0IS'
      table_ref  = REF #( it_but0is )
    ) TO lt_tables.


    APPEND VALUE #(
      targ_struc = 'KNB5'
      table_ref  = REF #( it_knb5 )
    ) TO lt_tables.


    APPEND VALUE #(
      targ_struc = 'KNBW'
      table_ref  = REF #( it_knbw )
    ) TO lt_tables.


    APPEND VALUE #(
      targ_struc = 'KNV1'
      table_ref  = REF #( it_knvi )
    ) TO lt_tables.


    APPEND VALUE #(
      targ_struc = 'KNB1'
      table_ref  = REF #( it_knb1 )
    ) TO lt_tables.


    APPEND VALUE #(
      targ_struc = 'KNVV'
      table_ref  = REF #( it_knvv )
    ) TO lt_tables.


    APPEND VALUE #(
      targ_struc = 'KNVP'
      table_ref  = REF #( it_knvv )
    ) TO lt_tables.


    APPEND VALUE #(
      targ_struc = 'KNVA'
      table_ref  = REF #( it_knva )
    ) TO lt_tables.


    APPEND VALUE #(
      targ_struc = 'ADRC'
      table_ref  = REF #( it_adrc )
    ) TO lt_tables.


    APPEND VALUE #(
          targ_struc = 'KNA1_ASSGMNT'
          table_ref  = REF #( it_kna1ass )
        ) TO lt_tables.

    APPEND VALUE #(
          targ_struc = 'DFKKBPTAXNUM'
          table_ref  = REF #( it_tax )
        ) TO lt_tables.

    "----------------------------------------------------------
    " Create generic mapping class
    "----------------------------------------------------------
    CREATE OBJECT lo_mapping.


    "----------------------------------------------------------
    " Call reusable mapping method
    "----------------------------------------------------------
    lo_mapping->get_mapping(
      EXPORTING
        iv_file    = ip_file
      IMPORTING
        et_mapping = it_tab
      CHANGING
        ct_tables  = lt_tables ).
  ENDMETHOD.
ENDCLASS.
