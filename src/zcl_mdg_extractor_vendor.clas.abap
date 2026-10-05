*  FINAL
CLASS zcl_mdg_extractor_vendor DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES:
      so_lifnr_range TYPE RANGE OF lfa1-lifnr .
    TYPES:
      so_ekorg_range TYPE RANGE OF t024e-ekorg .
    TYPES:
      so_bukrs_range TYPE RANGE OF t001-bukrs .
    TYPES:
*    BEGIN OF ty_lfa1_t.
*    TYPES:
*      _comment      TYPE zcomment_txt,
*      _action_code  TYPE c LENGTH 10,
*      source_id     TYPE lifnr,
*      assignment_id TYPE c LENGTH 50.
*      INCLUDE       TYPE lfa1.
*    TYPES: END OF ty_lfa1_t .
      BEGIN OF ty_lfa1_t,
        _comment                 TYPE zcomment_txt,
        _action_code             TYPE c LENGTH 10,
        source_id                TYPE lifnr,
        assignment_id            TYPE c LENGTH 50,
        lifnr                    TYPE lfa1-lifnr,
        land1                    TYPE lfa1-land1,
        name1                    TYPE lfa1-name1,
        name2                    TYPE lfa1-name2,
        name3                    TYPE lfa1-name3,
        name4                    TYPE lfa1-name4,
        ort01                    TYPE lfa1-ort01,
        ort02                    TYPE lfa1-ort02,
        pfach                    TYPE lfa1-pfach,
        pstl2                    TYPE lfa1-pstl2,
        pstlz                    TYPE lfa1-pstlz,
        regio                    TYPE lfa1-regio,
        sortl                    TYPE lfa1-sortl,
        stras                    TYPE lfa1-stras,
        adrnr                    TYPE lfa1-adrnr,
        mcod1                    TYPE lfa1-mcod1,
        mcod2                    TYPE lfa1-mcod2,
        mcod3                    TYPE lfa1-mcod3,
        anred                    TYPE lfa1-anred,
        bahns                    TYPE lfa1-bahns,
        bbbnr                    TYPE lfa1-bbbnr,
        bbsnr                    TYPE lfa1-bbsnr,
        begru                    TYPE lfa1-begru,
        brsch                    TYPE lfa1-brsch,
        bubkz                    TYPE lfa1-bubkz,
        datlt                    TYPE lfa1-datlt,
        dtams                    TYPE lfa1-dtams,
        dtaws                    TYPE lfa1-dtaws,
        erdat                    TYPE char10,  "lfa1-erdat,
        ernam                    TYPE lfa1-ernam,
        esrnr                    TYPE lfa1-esrnr,
        konzs                    TYPE lfa1-konzs,
        ktokk                    TYPE lfa1-ktokk,
        kunnr                    TYPE lfa1-kunnr,
        lnrza                    TYPE lfa1-lnrza,
        loevm                    TYPE lfa1-loevm,
        sperr                    TYPE lfa1-sperr,
        sperm                    TYPE lfa1-sperm,
        spras                    TYPE lfa1-spras,
        stcd1                    TYPE lfa1-stcd1,
        stcd2                    TYPE lfa1-stcd2,
        stkza                    TYPE lfa1-stkza,
        stkzu                    TYPE lfa1-stkzu,
        telbx                    TYPE lfa1-telbx,
        telf1                    TYPE lfa1-telf1,
        telf2                    TYPE lfa1-telf2,
        telfx                    TYPE lfa1-telfx,
        teltx                    TYPE lfa1-teltx,
        telx1                    TYPE lfa1-telx1,
        xcpdk                    TYPE lfa1-xcpdk,
        xzemp                    TYPE lfa1-xzemp,
        vbund                    TYPE lfa1-vbund,
        fiskn                    TYPE lfa1-fiskn,
        stceg                    TYPE lfa1-stceg,
        stkzn                    TYPE lfa1-stkzn,
        sperq                    TYPE lfa1-sperq,
        gbort                    TYPE lfa1-gbort,
        gbdat                    TYPE lfa1-gbdat,
        sexkz                    TYPE lfa1-sexkz,
        kraus                    TYPE lfa1-kraus,
        revdb                    TYPE lfa1-revdb,
        qssys                    TYPE lfa1-qssys,
        ktock                    TYPE lfa1-ktock,
        pfort                    TYPE lfa1-pfort,
        werks                    TYPE lfa1-werks,
        ltsna                    TYPE lfa1-ltsna,
        werkr                    TYPE lfa1-werkr,
        plkal                    TYPE lfa1-plkal,
        duefl                    TYPE lfa1-duefl,
        txjcd                    TYPE lfa1-txjcd,
        sperz                    TYPE lfa1-sperz,
        scacd                    TYPE lfa1-scacd,
        sfrgr                    TYPE lfa1-sfrgr,
        lzone                    TYPE lfa1-lzone,
        xlfza                    TYPE lfa1-xlfza,
        dlgrp                    TYPE lfa1-dlgrp,
        fityp                    TYPE lfa1-fityp,
        stcdt                    TYPE lfa1-stcdt,
        regss                    TYPE lfa1-regss,
        actss                    TYPE lfa1-actss,
        stcd3                    TYPE lfa1-stcd3,
        stcd4                    TYPE lfa1-stcd4,
        stcd5                    TYPE lfa1-stcd5,
        stcd6                    TYPE lfa1-stcd6,
        ipisp                    TYPE lfa1-ipisp,
        taxbs                    TYPE lfa1-taxbs,
        profs                    TYPE lfa1-profs,
        stgdl                    TYPE lfa1-stgdl,
        emnfr                    TYPE lfa1-emnfr,
        lfurl                    TYPE lfa1-lfurl,
        j_1kfrepre               TYPE lfa1-j_1kfrepre,
        j_1kftbus                TYPE lfa1-j_1kftbus,
        j_1kftind                TYPE lfa1-j_1kftind,
        confs                    TYPE lfa1-confs,
        updat                    TYPE lfa1-updat,
        uptim                    TYPE lfa1-uptim,
        nodel                    TYPE lfa1-nodel,
        qssysdat                 TYPE lfa1-qssysdat,
        podkzb                   TYPE lfa1-podkzb,
        fisku                    TYPE lfa1-fisku,
        stenr                    TYPE lfa1-stenr,
        carrier_conf             TYPE lfa1-carrier_conf,
        min_comp                 TYPE lfa1-min_comp,
        term_li                  TYPE lfa1-term_li,
        crc_num                  TYPE lfa1-crc_num,
        cvp_xblck                TYPE lfa1-cvp_xblck,
        weora                    TYPE lfa1-weora,
        rg                       TYPE lfa1-rg,
        exp                      TYPE lfa1-exp,
        uf                       TYPE lfa1-uf,
        rgdate                   TYPE lfa1-rgdate,
        ric                      TYPE lfa1-ric,
        rne                      TYPE lfa1-rne,
        rnedate                  TYPE lfa1-rnedate,
        cnae                     TYPE lfa1-cnae,
        legalnat                 TYPE lfa1-legalnat,
        crtn                     TYPE lfa1-crtn,
        icmstaxpay               TYPE lfa1-icmstaxpay,
        indtyp                   TYPE lfa1-indtyp,
        tdt                      TYPE lfa1-tdt,
        comsize                  TYPE lfa1-comsize,
        decregpc                 TYPE lfa1-decregpc,
        allowance_type           TYPE lfa1-allowance_type,
        paytrsn                  TYPE lfa1-paytrsn,
        lfa1_eew_supp            TYPE lfa1-lfa1_eew_supp,
        source_recency           TYPE c LENGTH 50,
        target_assignment_id     TYPE c LENGTH 50,
        borgr_datun              TYPE borgr_datun,
        borgr_yeaun              TYPE c LENGTH 20,
        au_carrying_ent          TYPE c LENGTH 1,
        au_ind_under_18          TYPE c LENGTH 1,
        au_payment_not_exceed_75 TYPE c LENGTH 1,
        au_wholly_inp_taxed      TYPE c LENGTH 1,
        au_partner_without_gain  TYPE c LENGTH 1,
        au_not_entitled_abn      TYPE c LENGTH 1,
        au_payment_exempt        TYPE c LENGTH 1,
        au_private_hobby         TYPE c LENGTH 1,
        au_domestic_nature       TYPE c LENGTH 1,
        addr2_street             TYPE c LENGTH 100,
        addr2_house_num          TYPE c LENGTH 20,
        addr2_post               TYPE c LENGTH 20,
        addr2_city               TYPE c LENGTH 50,
        addr2_country            TYPE c LENGTH 3,
        categ                    TYPE c LENGTH 20,
        partner_name             TYPE c LENGTH 100,
        partner_utr              TYPE c LENGTH 50,
        status                   TYPE c LENGTH 20,
        vfnum                    TYPE c LENGTH 50,
        vfnid                    TYPE c LENGTH 50,
        crn                      TYPE c LENGTH 50,
        fr_occupation            TYPE c LENGTH 100,
        j_1iexcd                 TYPE lfa1-j_1iexcd,
        j_1iexrn                 TYPE lfa1-j_1iexrn,
        j_1iexrg                 TYPE lfa1-j_1iexrg,
        j_1iexdi                 TYPE lfa1-j_1iexdi,
        j_1iexco                 TYPE lfa1-j_1iexco,
        j_1icstno                TYPE lfa1-j_1icstno,
        j_1ilstno                TYPE lfa1-j_1ilstno,
        j_1ipanno                TYPE lfa1-j_1ipanno,
        j_1iexcive               TYPE lfa1-j_1iexcive,
        j_1issist                TYPE lfa1-j_1issist,
        j_1ivtyp                 TYPE lfa1-j_1ivtyp,
        j_1ivencre               TYPE lfa1-j_1ivencre,
        aedat                    TYPE lfa1-aedat,
        usnam                    TYPE lfa1-usnam,
      END OF ty_lfa1_t .
    TYPES:
      ty_lfa1 TYPE STANDARD TABLE OF ty_lfa1_t WITH DEFAULT KEY .
    TYPES:
      BEGIN OF  ty_lfm1_str ,
        _comment             TYPE zcomment_txt,
        _action_code         TYPE c LENGTH 10,
        source_id            TYPE lifnr,
        ekorg                TYPE ekorg,
        assignment_id        TYPE c LENGTH 50,
        erdat                TYPE char10,
*        erdat                TYPE erdat,
        ernam                TYPE ernam,
        sperm                TYPE sperm_m,
        loevm                TYPE loevm,
        lfabc                TYPE lfabc,
        waers                TYPE waers,
        verkf                TYPE verkf,
        telf1                TYPE telf1,
        minbw                TYPE minbw,
        zterm                TYPE dzterm,
        inco1                TYPE inco1,
        inco2                TYPE inco2,
        webre                TYPE webre,
        kzabs                TYPE kzabs,
        kalsk                TYPE kalsk,
        kzaut                TYPE kzaut,
        expvz                TYPE expvz,
        zolla                TYPE dzolls,
        meprf                TYPE meprf,
        ekgrp                TYPE ekgrp,
        xersy                TYPE xersy,
        plifz                TYPE plifz,
        mrppp                TYPE mrppp,
        lfrhy                TYPE lfrhy,
        libes                TYPE libes,
        lipre                TYPE lipre,
        liser                TYPE liser,
        incov                TYPE incov,
        inco2_l              TYPE inco2_l,
        inco3_l              TYPE inco3_l,
        weora                TYPE weora,
        inco2_key            TYPE /scmtms/locuuid,
        inco3_key            TYPE /scmtms/locuuid,
        inco4_key            TYPE /scmtms/locuuid,
        prfre                TYPE prfre,
        nrgew                TYPE nrgew,
        boind                TYPE boind,
        blind                TYPE blind,
        kzret                TYPE kzret,
        skrit                TYPE skrit,
        bstae                TYPE bstae,
        rdprf                TYPE rdprf,
        megru                TYPE megru,
        vensl                TYPE vensl,
        bopnr                TYPE bopnr,
        xersr                TYPE xersr,
        eikto                TYPE eikto,
        abueb                TYPE abueb,
        paprf                TYPE wvmi_paprf,
        agrel                TYPE agrel,
        xnbwy                TYPE xnbwy,
        vsbed                TYPE vsbed,
        lebre                TYPE lebre,
        bolre                TYPE bolre,
        umsae                TYPE umsae,
        vendor_rma_req       TYPE msr_vrma_req_lfm1,
        lfm1_eew_ps          TYPE lfm1_eew_ps,
        source_recency       TYPE c LENGTH 20,
        lifnr                TYPE lifnr,
        target_assignment_id TYPE c LENGTH 20,
        aubel                TYPE aubel,
        valid_pro            TYPE valid_pro,
        hscabs               TYPE hscabs,
        hscpe                TYPE hscpe,
        hscmin               TYPE hscmin,
        hscmax               TYPE hscmax,
        fsh_sc_cid           TYPE fsh_sc_cid,
        fsh_vas_detc         TYPE fsh_vas_detc,
        j_1nboesl            TYPE /nfm/boesl,
        upprs                TYPE upprs,
        activity_profil      TYPE wrf_pctr_act_prof,
        transport_chain      TYPE wrf_pscd_tc_id,
        staging_time         TYPE wrf_pscd_mst,
      END OF ty_lfm1_str .
    TYPES:
      ty_lfm1 TYPE STANDARD TABLE OF ty_lfm1_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_lfb1_str,
        _comment             TYPE zcomment_txt,
        _action_code         TYPE c LENGTH 10,
        source_id            TYPE lifnr,
        bukrs                TYPE bukrs,
        assignment_id        TYPE c LENGTH 30,
        pernr                TYPE pernr,
        erdat                TYPE char10,
*              erdat                TYPE erdat,
        ernam                TYPE ernam,
        sperr                TYPE sperr,
        loevm                TYPE loevm,
        zuawa                TYPE dzuawa,
        akont                TYPE akont,
        begru                TYPE begru,
        vzskz                TYPE vzskz,
        zwels                TYPE dzwels,
        xverr                TYPE xverr_lfb1,
        zahls                TYPE dzahls,
        zterm                TYPE dzterm,
        eikto                TYPE eikto_k,
        zsabe                TYPE dzsabe_k,
        kverm                TYPE kverm,
        fdgrv                TYPE fdgrv,
        busab                TYPE busab,
        lnrze                TYPE lnrze,
        lnrzb                TYPE lnrzb,
        zindt                TYPE dzindt,
        zinrt                TYPE dzinrt,
        datlz                TYPE datlz,
        xdezv                TYPE xdezv,
        webtr                TYPE webtr,
        kultg                TYPE kultg,
        reprf                TYPE reprf,
        togru                TYPE togru,
        hbkid                TYPE hbkid,
        xpore                TYPE xpore,
        qsznr                TYPE qsznr,
        qszdt                TYPE qszdt,
        qsskz                TYPE qsskz,
        blnkz                TYPE blnkz,
        mindk                TYPE mindk,
        altkn                TYPE altkn,
        zgrup                TYPE dzgrup,
        mgrup                TYPE mgrup,
        uzawe                TYPE uzawe,
        qsrec                TYPE qsrec,
        qsbgr                TYPE qsbgr,
        qland                TYPE qland,
        xedip                TYPE xedip,
        frgrp                TYPE frgrp,
        togrr                TYPE togrr,
        tlfxs                TYPE tlfxs,
        intad                TYPE intad,
        xlfzb                TYPE xlfzb,
        guzte                TYPE guzte,
        gricd                TYPE j_1agicd_d,
        gridt                TYPE j_1adtyp_d,
        xausz                TYPE xausz,
        cerdt                TYPE cerdt,
        confs                TYPE confs_b,
        updat                TYPE updat,
        uptim                TYPE uptim,
        nodel                TYPE nodel,
        tlfns                TYPE tlfns,
        avsnd                TYPE avsnd,
        ad_hash              TYPE adhash,
        cvp_xblck_b          TYPE cvp_xblck,
        ciiucode             TYPE ciiucode,
        paymentclearinggrpid TYPE far_payment_clearing_group,
        paytrsn              TYPE farp_payt_rsn,
        lfb1_eew_cc          TYPE lfb1_eew_cc,
        source_recency       TYPE c LENGTH 30,
        lifnr                TYPE lifnr,
        target_assignment_id TYPE c LENGTH 20,
        brsch                TYPE brsch,
        wrbtr                TYPE wrbtr,
        waers                TYPE waers,
        forgn                TYPE fiwtkw_locality,
        share_in_foreign     TYPE fiwtkw_owned_share,
        notes                TYPE fiwtkw_notes,
        active               TYPE fiwtkw_shr_active,
        us_rec_country       TYPE land1,
        us_giin              TYPE fiwtus_recipient_giin,
        us_ftid              TYPE fiwtus_recipient_ftid,
        us_rec_dob           TYPE fiwtus_recipient_dob,
        us_lob_code          TYPE fiwtus_lob_code,
        us_w8_recvdate       TYPE fiwtus_w8_recv_date,
        us_w9_recvdate       TYPE fiwtus_w9_recv_date,
        us_tin_notice        TYPE fiwtus_second_tin_notice,
        us_partnership_ind   TYPE fiwtus_partnership_ind,
        zbokd                TYPE /atl/vbokd,
        zqsskz               TYPE /atl/vqsskz,
        zqszdt               TYPE /atl/vqszdt,
        zqsznr               TYPE /atl/vqsznr,
        zmindat              TYPE /atl/vmindat,
        j_sc_subcontype      TYPE /sapnea/j_sc_subcontype,
        j_sc_compdate        TYPE /sapnea/j_sc_completiondate,
        j_sc_offsm           TYPE /sapnea/j_sc_offsm,
        j_sc_offsr           TYPE /sapnea/j_sc_offsr,
        prepay_relevant      TYPE wrf_prepay_relevant,
        assign_test          TYPE wrf_mrm_assign_group,
      END OF ty_lfb1_str .
    TYPES:
      ty_lfb1 TYPE STANDARD TABLE OF ty_lfb1_str WITH DEFAULT KEY .
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
      BEGIN OF ty_adrc_str,
        _comment          TYPE zcomment_txt,
        _action_code      TYPE c LENGTH 10,
        source_id         TYPE lifnr,
        source_addrnumber TYPE ad_addrnum,
        date_from         TYPE string,  "ad_date_fr,
        nation            TYPE ad_nation,
        addrnumber        TYPE ad_addrnum,
*              date_to           TYPE ad_date_to,
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
      BEGIN OF ty_lfbw_str,
        _comment             TYPE zcomment_txt,
        _action_code         TYPE c LENGTH 10,
        source_id            TYPE lifnr,
        bukrs                TYPE bukrs,
        witht                TYPE witht,
        assignment_id        TYPE c LENGTH 25,
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
        lifnr                TYPE lifnr,
        target_assignment_id TYPE c LENGTH 25,
      END OF ty_lfbw_str .
    TYPES:
      ty_lfbw TYPE STANDARD TABLE OF ty_lfbw_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_lfm2_str,
        _comment             TYPE zcomment_txt,
        _action_code         TYPE c LENGTH 10,
        source_id            TYPE lifnr,
        ekorg                TYPE ekorg,
        ltsnr                TYPE ltsnr,
        werks                TYPE werks,
        assignment_id        TYPE c LENGTH 25,
        erdat                TYPE char10,
        ernam                TYPE ernam,
        sperm                TYPE sperm_m,
        loevm                TYPE loevm,
        lfabc                TYPE lfabc,
        waers                TYPE waers,
        verkf                TYPE verkf,
        telf1                TYPE telf1,
        minbw                TYPE minbw,
        zterm                TYPE dzterm,
        inco1                TYPE inco1,
        inco2                TYPE inco2,
        webre                TYPE webre,
        kzabs                TYPE kzabs,
        kalsk                TYPE kalsk,
        kzaut                TYPE kzaut,
        expvz                TYPE expvz,
        zolla                TYPE dzolls,
        meprf                TYPE meprf,
        ekgrp                TYPE ekgrp,
        xersy                TYPE xersy,
        plifz                TYPE plifz,
        mrppp                TYPE mrppp,
        lfrhy                TYPE lfrhy,
        libes                TYPE libes,
        lipre                TYPE lipre,
        liser                TYPE liser,
        incov                TYPE incov,
        inco2_l              TYPE inco2_l,
        inco3_l              TYPE inco3_l,
        weora                TYPE weora,
        inco2_key            TYPE /scmtms/inc_loc_1_key,
        inco3_key            TYPE /scmtms/inc_loc_2_key,
        inco4_key            TYPE /scmtms/inc_dev_place_dest_key,
        dispo                TYPE dispo,
        boind                TYPE boind,
        bstae                TYPE bstae,
        rdprf                TYPE rdprf,
        megru                TYPE megru,
        bopnr                TYPE bopnr,
        xersr                TYPE xersr,
        abueb                TYPE abueb,
        paprf                TYPE wvmi_paprf,
        xnbwy                TYPE xnbwy,
        lebre                TYPE lebre,
        bolre                TYPE bolre,
        umsae                TYPE umsae,
        source_recency       TYPE c LENGTH 30,
        lifnr                TYPE lifnr,
        target_assignment_id TYPE c LENGTH 25,
        upprs                TYPE upprs,
        transport_chain      TYPE wrf_pscd_tc_id,
        staging_time         TYPE wrf_pscd_mst,
      END OF ty_lfm2_str .
    TYPES:
      ty_lfm2 TYPE STANDARD TABLE OF ty_lfm2_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_adr2_str,
        _comment          TYPE zcomment_txt,
        _action_code      TYPE c LENGTH 10,
        source_id         TYPE lifnr,
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
        source_id         TYPE lifnr,
        source_addrnumber TYPE ad_addrnum,
        date_from         TYPE string,  "ad_date_fr,
        consnumber        TYPE ad_consnum,
        addrnumber        TYPE lifnr,
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
      BEGIN OF ty_wyt3_str,
        _comment             TYPE zcomment_txt,
        _action_code         TYPE c LENGTH 10,
        source_id            TYPE lifnr,
        ekorg                TYPE ekorg,
        ltsnr                TYPE ltsnr,
        werks                TYPE werks_d,
        parvw                TYPE parvw,
        parza                TYPE parza,
        assignment_id        TYPE c LENGTH 30,
        ernam                TYPE ernam,
        erdat                TYPE char10,
*              erdat                TYPE erdat,
        lifn2                TYPE lifn2,
        defpa                TYPE defpa,
        pernr                TYPE pernr_d,
        parnr                TYPE parnr,
        source_recency       TYPE c LENGTH 30,
        lifnr                TYPE lifnr,
        target_assignment_id TYPE c LENGTH 25,
      END OF ty_wyt3_str .
    TYPES:
      ty_wyt3 TYPE STANDARD TABLE OF ty_wyt3_str WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_but000_str,
        _comment          TYPE zcomment_txt,
*        _action_code      TYPE c LENGTH 10,
        source_id         TYPE lifnr,
        partner           TYPE partner,
        type              TYPE bu_bpkind,
        bpkind            TYPE bu_group,
        bu_group          TYPE bu_bpext,
        bpext             TYPE bus000adat,
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
        source_recency    TYPE lifnr,
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
      BEGIN OF ty_but0bk_str,
        _comment       TYPE zcomment_txt,
        _action_code   TYPE c LENGTH 10,
        source_id      TYPE lifnr,
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
      BEGIN OF ty_but020_str,
        _comment          TYPE zcomment_txt,
        _action_code      TYPE c LENGTH 10,
        source_id         TYPE lifnr,
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
      tt_but020 TYPE STANDARD TABLE OF ty_but020_str WITH DEFAULT KEY .
    TYPES ty_but020 TYPE but020 .
    TYPES:
      BEGIN OF ty_but021_str ,
        _comment          TYPE zcomment_txt,
        _action_code      TYPE c LENGTH 10,
        source_id         TYPE lifnr,
*              valid_to          TYPE valid_to,
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
      lv_id TYPE n LENGTH 12 .
    TYPES:
      BEGIN OF ty_tax,
        _comment       TYPE zcomment_txt,
        _action_code   TYPE c LENGTH 10,
        source_id      TYPE lifnr,
        taxtype        TYPE bptaxtype,
        partner        TYPE partner,
        taxnum         TYPE bptaxnum,
        taxnumxl       TYPE bptaxnumxl,
        source_recency TYPE c LENGTH 30,
      END OF ty_tax .
    TYPES:
      ty_tax_data TYPE STANDARD TABLE OF ty_tax WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_assignment,
        _comment             TYPE zcomment_txt,
        _action_code         TYPE c LENGTH 10,
        source_id            TYPE lifnr,
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

    DATA mt_lfa1 TYPE ty_lfa1 .

    METHODS constructor
      IMPORTING
        !it_bukrs     TYPE so_bukrs_range
        !it_lifnr     TYPE so_lifnr_range
        !it_ekorg     TYPE so_ekorg_range
        !ip_file      TYPE rlgrap-filename
        !ip_appt_file TYPE rlgrap-filename .
    METHODS get_lifnr_range
      RETURNING
        VALUE(rv_lifnr) TYPE so_lifnr_range .
    METHODS get_ekorg_range
      RETURNING
        VALUE(rv_ekorg) TYPE so_ekorg_range .
    METHODS get_bukrs_range
      RETURNING
        VALUE(rv_bukrs) TYPE so_bukrs_range .
    METHODS get_data .
    METHODS get_lfa1
      RETURNING
        VALUE(lt_lfa1) TYPE ty_lfa1 .
    METHODS get_lfm1
      RETURNING
        VALUE(lt_lfm1) TYPE ty_lfm1 .
    METHODS build_excel .
    METHODS get_but000
      RETURNING
        VALUE(lt_but000) TYPE ty_but000 .
    METHODS get_lfb1
      RETURNING
        VALUE(lt_lfb1) TYPE ty_lfb1 .
    METHODS get_adrc
      RETURNING
        VALUE(lt_adrc) TYPE ty_adrc .
    METHODS get_lfbw
      RETURNING
        VALUE(lt_lfbw) TYPE ty_lfbw .
    METHODS get_lfm2
      RETURNING
        VALUE(lt_lfm2) TYPE ty_lfm2 .
    METHODS get_adr2
      RETURNING
        VALUE(lt_adr2) TYPE ty_adr2 .
    METHODS get_adr6
      RETURNING
        VALUE(lt_adr6) TYPE ty_adr6 .
    METHODS get_wyt3
      RETURNING
        VALUE(lt_wyt3) TYPE ty_wyt3 .
    METHODS get_lfa1_ass
      RETURNING
        VALUE(lt_asst) TYPE ty_asst .
    METHODS download_xlsx
      IMPORTING
        !io_excel     TYPE REF TO zcl_excel
      RETURNING
        VALUE(return) TYPE REF TO zcx_excel .
    METHODS add_sheet_to_xlsx
      IMPORTING
        !iv_sheetname      TYPE zexcel_sheet_title DEFAULT 'Sheet1'
        !iv_is_this_sheet1 TYPE flag
        !iv_cell_a1        TYPE char30 DEFAULT 'Dummy A1 Cell'
        !it_data           TYPE table
        !io_excel          TYPE REF TO zcl_excel
        !it_addtl_cols     TYPE table OPTIONAL
          PREFERRED PARAMETER iv_sheetname .
    METHODS get_tax_data
      IMPORTING
        VALUE(it_tab)      TYPE ty_lfa1
      RETURNING
        VALUE(lt_tax_data) TYPE ty_tax_data .
    METHODS get_but0bk
      RETURNING
        VALUE(lt_but0bk) TYPE ty_but0bk .
    METHODS get_but020
      RETURNING
        VALUE(lt_but020) TYPE tt_but020 .
    METHODS get_but021
      RETURNING
        VALUE(lt_but021) TYPE ty_but021 .
    METHODS get_lktokk
      RETURNING
        VALUE(lt_lktokk) TYPE ty_lfa1 .
    METHODS get_mapping
      IMPORTING
        !ip_file     TYPE string
      EXPORTING
        !it_tab      TYPE ty_tab1
      CHANGING
        !it_lfm1     TYPE ty_lfm1 OPTIONAL
        !it_lfa1     TYPE ty_lfa1 OPTIONAL
        !it_lfb1     TYPE ty_lfb1 OPTIONAL
        !it_lfbw     TYPE ty_lfbw OPTIONAL
        !it_lfm2     TYPE ty_lfm2 OPTIONAL
        !it_wyt3     TYPE ty_wyt3 OPTIONAL
        !it_but000   TYPE ty_but000 OPTIONAL
        !it_but020   TYPE tt_but020 OPTIONAL
        !it_but021   TYPE ty_but021 OPTIONAL
        !it_adrc     TYPE ty_adrc OPTIONAL
        !it_adr2     TYPE ty_adr2 OPTIONAL
        !it_adr6     TYPE ty_adr6 OPTIONAL
        !it_tax_data TYPE ty_tax_data OPTIONAL
        !it_asst     TYPE ty_asst OPTIONAL
        !it_but0bk   TYPE ty_but0bk OPTIONAL
        !it_lktokk   TYPE ty_lfa1 OPTIONAL .
    METHODS seprate_data
      IMPORTING
        !iv_table TYPE STANDARD TABLE
      CHANGING
        !ct_table TYPE STANDARD TABLE .
    METHODS add_sheet_to_xlsxv2
      IMPORTING
        !iv_sheetname      TYPE zexcel_sheet_title
        !iv_is_this_sheet1 TYPE flag
        !iv_cell_a1        TYPE char30
        !it_data           TYPE table
        !io_excel          TYPE REF TO zcl_excel
        !it_addtl_cols     TYPE table .
  PRIVATE SECTION.

    DATA:
      lv_assid TYPE n LENGTH 12 .
    DATA:
      mt_csv_data  TYPE STANDARD TABLE OF string .
    DATA lv_filename TYPE string .
    DATA:
      mv_separator TYPE c LENGTH 1 VALUE ';' ##NO_TEXT.               " Semicolon
    DATA lv_line TYPE string .
    DATA mt_bukrs TYPE so_bukrs_range .
    DATA mt_lifnr TYPE so_lifnr_range .
    DATA mt_ekorg TYPE so_ekorg_range .
    DATA gv_file TYPE string .
    DATA mt_appt_file TYPE rlgrap-filename .
*  PROTECTED SECTION.
*  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mdg_extractor_vendor IMPLEMENTATION.


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

    DATA: tt_lfa1     TYPE ty_lfa1,
          tt_lfm1     TYPE ty_lfm1,
          tt_lfb1     TYPE ty_lfb1,
          tt_lfbw     TYPE ty_lfbw,
          tt_lfm2     TYPE ty_lfm2,
          tt_adrc     TYPE ty_adrc,
          tt_adr2     TYPE ty_adr2,
          tt_adr6     TYPE ty_adr6,
          tt_wyt3     TYPE ty_wyt3,
          tt_but000   TYPE ty_but000,
          tt_tax_data TYPE ty_tax_data,
          tt_but0bk   TYPE ty_but0bk,
          tt_but020   TYPE tt_but020,
          tt_but021   TYPE ty_but021,
          tt_asst     TYPE ty_asst,
          tt_lktokk   TYPE ty_lfa1.


    tt_lfa1     = me->get_lfa1( ).
    tt_lfm1     = me->get_lfm1( ).
    tt_lfb1     = me->get_lfb1( ).
    tt_lfbw     = me->get_lfbw( ).
    tt_lfm2     = me->get_lfm2( ).
    tt_adrc     = me->get_adrc( ).
    tt_adr2     = me->get_adr2( ).
    tt_adr6     = me->get_adr6( ).
    tt_wyt3     = me->get_wyt3( ).
    tt_but000   = me->get_but000( ).
    tt_tax_data = me->get_tax_data( it_tab = mt_lfa1 ).
    tt_but0bk   = me->get_but0bk( ).
    tt_but020   = me->get_but020( ).
    tt_but021   = me->get_but021( ).
    tt_asst     = me->get_lfa1_ass( ).
    tt_lktokk   = me->get_lktokk( ).

*    DATA(tt_lfa1) = me->get_lfa1( ).
*    DATA(tt_lfm1) = me->get_lfm1( ).
*    DATA(tt_lfb1) = me->get_lfb1( ).
*    DATA(tt_lfbw) = me->get_lfbw( ).
*    DATA(tt_lfm2) = me->get_lfm2( ).
*    DATA(tt_adrc) = me->get_adrc( ).
*    DATA(tt_adr2) = me->get_adr2( ).
*    DATA(tt_adr6) = me->get_adr6( ).
*    DATA(tt_wyt3) = me->get_wyt3( ).
*    DATA(tt_but000) = me->get_but000( ).
*    DATA(tt_tax_data) = me->get_tax_data( it_tab = mt_lfa1 ). "tt_lfa1
*    DATA(tt_but0bk) = me->get_but0bk( ).
*    DATA(tt_but020) = me->get_but020( ).
*    DATA(tt_but021) = me->get_but021( ).
*    DATA(tt_asst) = me->get_lfa1_ass( ).
*    DATA(tt_lktokk) = me->get_lktokk( ).

    IF gv_file IS NOT INITIAL.
      CALL METHOD me->get_mapping
        EXPORTING
          ip_file     = gv_file
        IMPORTING
          it_tab      = lt_tab
        CHANGING
          it_lfm1     = tt_lfm1
          it_lfa1     = tt_lfa1
          it_lfb1     = tt_lfb1
          it_lfbw     = tt_lfbw
          it_lfm2     = tt_lfm2
          it_wyt3     = tt_wyt3
          it_but000   = tt_but000
          it_but020   = tt_but020
          it_but021   = tt_but021
          it_adrc     = tt_adrc
          it_adr2     = tt_adr2
          it_adr6     = tt_adr6
          it_tax_data = tt_tax_data
          it_but0bk   = tt_but0bk
          it_lktokk   = tt_lktokk.
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
        iv_sheetname      = 'ADR6-E-Mail'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'ADR6-E-Mail'
        it_data           = tt_adr6
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.


    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'LFA1-Supplier General'
        iv_is_this_sheet1 = 'N'
*       iv_cell_a1        = 'Contents of SCARR'
        it_data           = tt_lfa1
        io_excel          = lo_excel.
*        it_addtl_cols     = lt_cols.

    "Step2: Add Sheet3
    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'LFB1-Vendor Masterg Data'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'LFB1-Vendor Masterg Data'
        it_data           = tt_lfb1
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'LFBW-Withholding Tax'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'LFBW-Withholding Tax'
        it_data           = tt_lfbw
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    "Step2:Add Sheet2
    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'LFM1-Purchasing Org Data'
        iv_is_this_sheet1 = 'N'
*       iv_cell_a1        = 'Contents OF SBOOK'
        it_data           = tt_lfm1
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'LFM2-Additional Purchasing Data'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'LFM2-Additional'
        it_data           = tt_lfm2
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'WYT3-Partner Function'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'WYT3-Partner Function'
        it_data           = tt_wyt3
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'LFA1_ASSGMNT - Additional ERP V'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'LFA1_ASSGMNT - Additional ERP'
        it_data           = tt_asst
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
        iv_sheetname      = 'DFKKBPTAXNUM - Tax Number'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'DFKKBPTAXNUM - Tax Number'
        it_data           = tt_tax_data
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.

    CALL METHOD me->add_sheet_to_xlsx
      EXPORTING
        iv_sheetname      = 'LFA1-KTOKK'
        iv_is_this_sheet1 = 'N'
        iv_cell_a1        = 'LFA1-KTOKK'
        it_data           = tt_lktokk
        io_excel          = lo_excel
        it_addtl_cols     = lt_cols.
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
      lv_file = 'MDG_VENDOR_master.xlsx'.

      CONCATENATE mt_appt_file lv_file
            INTO lv_file SEPARATED BY '/'.

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
    mt_lifnr = it_lifnr.
    mt_bukrs = it_bukrs.
    mt_ekorg = it_ekorg.
    gv_file = ip_file.
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

*    DATA(tt_lfa1) = me->get_lfa1( ).

    IF mt_lfa1 IS NOT INITIAL.
* Select data from adr2 table
      SELECT
        lfa1~lifnr         AS source_id
        lfa1~adrnr         AS source_addrnumber
*        adr2~date_from       ,
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
        INTO CORRESPONDING FIELDS OF TABLE lt_adr2
        FROM lfa1
        INNER JOIN adr2 ON adr2~addrnumber = lfa1~adrnr
         FOR ALL ENTRIES IN mt_lfa1
         WHERE lfa1~lifnr = mt_lfa1-source_id.
    ELSE.
      MESSAGE 'No data found in LFA1 .' TYPE 'S' DISPLAY LIKE 'I'.
    ENDIF.
* Check if any data is selected
    IF lt_adr2 IS INITIAL.
      MESSAGE 'Data not found in ADR2 table..' TYPE 'I' DISPLAY LIKE 'I'.  " Display message as error
    ENDIF.

    SORT lt_adr2 BY addrnumber.
    FIELD-SYMBOLS <fs_adr2> TYPE ty_adr2_str.
    LOOP AT lt_adr2 ASSIGNING <fs_adr2>.
      <fs_adr2>-date_from = '00010101'.
    ENDLOOP.
  ENDMETHOD.


  METHOD get_adr6.
*    DATA(tt_lfa1) = me->get_lfa1( ).
*    TYPES: BEGIN OF ty_adr6,
*             source_id         TYPE lfa1-lifnr,
*             source_addrnumber TYPE lfa1-adrnr,
**        date_from         TYPE adr6-date_from,
*             consnumber        TYPE adr6-consnumber,
**        addrnumber        TYPE adr6-addrnumber,
*             flgdefault        TYPE adr6-flgdefault,
*             flg_nouse         TYPE adr6-flg_nouse,
*             home_flag         TYPE adr6-home_flag,
*             smtp_addr         TYPE adr6-smtp_addr,
*             smtp_srch         TYPE adr6-smtp_srch,
*             dft_receiv        TYPE adr6-dft_receiv,
*             r3_user           TYPE adr6-r3_user,
*             encode            TYPE adr6-encode,
*             tnef              TYPE adr6-tnef,
*             valid_from        TYPE adr6-valid_from,
*             valid_to          TYPE adr6-valid_to,
*           END OF ty_adr6.
*
*    DATA: lt_adr6 TYPE TABLE OF ty_adr6,
*          ls_adr6 TYPE ty_adr6.

    IF mt_lfa1 IS NOT INITIAL.
* Select data from adr6 table
      SELECT
        lfa1~lifnr         AS source_id
        lfa1~adrnr         AS source_addrnumber
*        adr6~date_from
        adr6~consnumber
*        adr6~addrnumber
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
        INTO CORRESPONDING FIELDS OF TABLE lt_adr6
         FROM lfa1
        INNER JOIN adr6 ON adr6~addrnumber = lfa1~adrnr
        FOR ALL ENTRIES IN mt_lfa1 "tt_lfa1
        WHERE lfa1~lifnr = mt_lfa1-source_id.
*    ELSE.
*      MESSAGE 'No data found in LFA1 .' TYPE 'S' DISPLAY LIKE 'I'.
    ENDIF.

** Check if any data is selected
*    IF lt_adr6 IS INITIAL.
*      MESSAGE 'Data not found in ADR6 table..' TYPE 'S' DISPLAY LIKE 'I'.  " Display message as error
*    ENDIF.

    SORT lt_adr6 BY addrnumber.
    FIELD-SYMBOLS <fs_adr6> TYPE ty_adr6_str.
    LOOP AT lt_adr6 ASSIGNING <fs_adr6>.
      <fs_adr6>-date_from = '00010101'.
    ENDLOOP.
  ENDMETHOD.


  METHOD get_adrc.
    DATA:lv_date_c TYPE char10,
         ls_adrc   TYPE ty_adrc_str.
*    DATA(tt_lfa1) = me->get_lfa1( ).
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

    IF mt_lfa1 IS NOT INITIAL.
* Select data from adrc table
      SELECT
         lfa1~lifnr         AS lifnr
         lfa1~adrnr         AS adrnr
*         adrc~date_from      ,
         adrc~nation
*         adrc~addrnumber        ,
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
          FROM lfa1
          INNER JOIN adrc
            ON adrc~addrnumber = lfa1~adrnr
          INTO TABLE lwt_adrc
*          INTO CORRESPONDING FIELDS OF TABLE @lt_adrc
          FOR ALL ENTRIES IN mt_lfa1   "tt_lfa1
          WHERE lfa1~lifnr = mt_lfa1-source_id.
*    ELSE.
*      MESSAGE 'No data found in LFA1 .' TYPE 'S' DISPLAY LIKE 'I'.
    ENDIF.
    SORT lt_adrc BY addrnumber.

    " Now convert date to timestamp
    FIELD-SYMBOLS <fs_adrc> TYPE ty_adrc.
    LOOP AT lwt_adrc  ASSIGNING <fs_adrc>.
*      ls_adrc = CORRESPONDING #( <fs_adrc> ).
      MOVE-CORRESPONDING <fs_adrc> TO ls_adrc.
      ls_adrc-source_id = <fs_adrc>-lifnr.
      ls_adrc-source_addrnumber = <fs_adrc>-adrnr.
      ls_adrc-date_from = '00010101'.
      WRITE <fs_adrc>-date_to TO lv_date_c DD/MM/YYYY.
*      lv_date_c = |{ <fs_adrc>-date_to DATE = USER }|.
      ls_adrc-date_to = lv_date_c.

      APPEND ls_adrc TO lt_adrc.
      CLEAR: lv_date_c,ls_adrc.
    ENDLOOP.
  ENDMETHOD.


  METHOD get_bukrs_range.
    rv_bukrs = mt_bukrs.  " Return the lifnr range
  ENDMETHOD.


  METHOD get_but000.
    FIELD-SYMBOLS <fs_but000> TYPE  ty_but000_str.
*    DATA(tt_lfa1) = me->get_lfa1( ).
    IF mt_lfa1 IS NOT INITIAL.
      SELECT lfa1~lifnr       AS source_id
             lfa1~stkzn       AS natpers
             adrc~name1       AS /zfz/zname1
             adrc~name2       AS /zfz/zname2
             adrc~name1       AS name_org1
             adrc~name2       AS name_org2
             adrc~name3       AS name_org3
             adrc~name4       AS name_org4
        INTO CORRESPONDING FIELDS OF TABLE lt_but000
        FROM lfa1
        INNER JOIN adrc ON adrc~addrnumber = lfa1~adrnr
        FOR ALL ENTRIES IN mt_lfa1
        WHERE lfa1~lifnr = mt_lfa1-lifnr "IN @mt_lifnr
           AND adrc~nation = ' '.

    ELSE.
      MESSAGE 'No data found in but000.' TYPE 'S' DISPLAY LIKE 'E'..
    ENDIF.
    SORT lt_but000 BY source_id.
    LOOP AT lt_but000 ASSIGNING <fs_but000>.
      <fs_but000>-type = '2'.
      <fs_but000>-bpkind = 'Z120'.
    ENDLOOP.

  ENDMETHOD.


  METHOD get_but020.
*    DATA(tt_lfa1) = me->get_lfa1( ).

    TYPES: BEGIN OF ty_adrc,
             lifnr      TYPE lfa1-lifnr,
             addrnumber TYPE lfa1-adrnr,
           END OF ty_adrc.
    FIELD-SYMBOLS <fs_but020> TYPE  ty_adrc.
    DATA: gt_but020 TYPE STANDARD TABLE OF ty_adrc.
* Select data from adrc table
    SELECT lfa1~lifnr
         adrc~addrnumber
       INTO TABLE gt_but020
        FROM adrc
        INNER JOIN lfa1 ON adrc~addrnumber = lfa1~adrnr
        FOR ALL ENTRIES IN mt_lfa1   "tt_lfa1
          WHERE addrnumber = mt_lfa1-adrnr
            AND lfa1~lifnr = mt_lfa1-source_id
            AND adrc~nation = ' '.
*              AND lfa1~lifnr = @tt_lfa1-lifnr
*          INTO TABLE @lt_but020.
    DATA: lv_valid_from TYPE char14.
    CONCATENATE sy-datum '000000' INTO lv_valid_from.
* CONCATENATE sy-datum '000000' INTO DATA(lv_valid_from).
    LOOP AT gt_but020 ASSIGNING <fs_but020>.
      APPEND VALUE ty_but020_str(
          source_id         = <fs_but020>-lifnr
          source_addrnumber = <fs_but020>-addrnumber
          date_from         = '00010101'
          addr_valid_from   = lv_valid_from
          addr_valid_to     = '99991231000000'
      ) TO lt_but020.
    ENDLOOP.

  ENDMETHOD.


  METHOD get_but021.

*    DATA(tt_lfa1) = me->get_lfa1( ).
    TYPES: BEGIN OF ty_gt_but021,
             lifnr      TYPE lfa1-lifnr,
             addrnumber TYPE adrc-addrnumber,
           END OF ty_gt_but021.

    DATA: gt_but021     TYPE STANDARD TABLE OF ty_gt_but021,
          gs_but021     TYPE ty_gt_but021,
          lv_valid_from TYPE char14.
    FIELD-SYMBOLS <fs_but021> TYPE ty_gt_but021.

    IF mt_lfa1 IS NOT INITIAL.
      SELECT lfa1~lifnr
             adrc~addrnumber
             INTO TABLE gt_but021
               FROM adrc
               INNER JOIN lfa1 ON adrc~addrnumber = lfa1~adrnr
                   FOR ALL ENTRIES IN mt_lfa1   ""tt_lfa1
                     WHERE addrnumber = mt_lfa1-adrnr
                       AND lfa1~lifnr = mt_lfa1-source_id
                       AND adrc~nation = ' '.
*          INTO CORRESPONDING FIELDS OF lt_but021.
      .
    ENDIF.

    CONCATENATE sy-datum '000000' INTO lv_valid_from . "INTO DATA(lv_valid_from).

*    LOOP AT gt_but021 ASSIGNING FIELD-SYMBOL(<fs_but021>).
*      DATA(ls_but021) =
*      <fs_but021>-soruce_id = <fs_but021>-lifnr.
*      <fs_but021>-valid_to = '99991231000000'.
*      <fs_but021>-source_addrnumber = <fs_but021>-addrnumber.
*      <fs_but021>-lifnr = lv_valid_from.

    LOOP AT gt_but021 ASSIGNING <fs_but021>.
      APPEND VALUE ty_but021_str(
          source_id         = <fs_but021>-lifnr
          valid_to          = '99991231000000'
          adr_kind          = 'XXDEFAULT'
          source_addrnumber = <fs_but021>-addrnumber
          valid_from        = lv_valid_from
      ) TO lt_but021.
    ENDLOOP.

  ENDMETHOD.


  METHOD get_but0bk.

*    DATA(tt_lfa1) = me->get_lfa1( ).

    IF mt_lfa1 IS NOT INITIAL.
      SELECT
       a~lifnr AS source_id
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
        INTO CORRESPONDING FIELDS OF TABLE lt_but0bk
      FROM lfbk AS a
*      INNER JOIN tiban AS b
      LEFT OUTER JOIN tiban AS b
        ON  a~banks = b~banks
        AND a~bankl = b~bankl
        AND a~bankn = b~bankn
        AND a~bkont = b~bkont
         FOR ALL ENTRIES IN mt_lfa1    "tt_lfa1
    WHERE a~lifnr = mt_lfa1-source_id.


*      IF sy-subrc <> 0.
*        MESSAGE 'No data found in BUT0BK.' TYPE 'S' DISPLAY LIKE 'I'.
*      ENDIF.
*    ELSE.
*      MESSAGE 'No data found in LFA1.' TYPE 'S' DISPLAY LIKE 'I'.
    ENDIF.

  ENDMETHOD.


  METHOD get_data.

*    CASE mv_table.
*      WHEN 'LFA1'.
*        get_lfa1( ).
*      WHEN 'LFM1'.
*        get_lfm1( ).
*      WHEN 'LFB1'.
*        get_lfb1( ).
*      WHEN 'LFBW'.
*        get_lfbw( ).
*      WHEN 'LFM2'.
*        get_lfm2( ).
*      WHEN 'ADRC'.
*        get_adrc( ).
*      WHEN 'ADR2'.
*        get_Adr2( ).
*      WHEN 'ADR6'.
*        get_adr6( ).
*      WHEN 'WYT3'.
*        get_wyt3( ).
*      WHEN 'LFA1_ASSIGNMENT'.
*        GET_lfa1_ass( ).
*      WHEN OTHERS.
*        MESSAGE 'Table not supported in this version' TYPE 'S' DISPLAY LIKE 'E'.
*    ENDCASE.

    get_lfa1( ).

    get_lfm1( ).

    get_lfb1( ).

    get_lfbw( ).

    get_lfm2( ).

    get_adrc( ).

    get_adr2( ).

    get_adr6( ).

    get_wyt3( ).

    get_lfa1_ass( ).



  ENDMETHOD.


  METHOD get_ekorg_range.
    rv_ekorg = mt_ekorg.  " Return the lifnr range
  ENDMETHOD.


  METHOD get_lfa1.
    DATA:lv_date_c TYPE char10,
         ls_lfa1   TYPE ty_lfa1_t.
    DATA : gt_lfa1 TYPE TABLE OF lfa1.
    IF ( mt_lifnr IS INITIAL AND mt_bukrs IS INITIAL AND mt_ekorg IS INITIAL ) OR ( mt_lifnr IS NOT INITIAL AND mt_bukrs IS INITIAL AND mt_ekorg IS INITIAL ).
* Select data from lfm1 table
      SELECT * FROM lfa1
     INTO TABLE gt_lfa1
     WHERE lifnr IN mt_lifnr.

    ELSEIF   mt_bukrs IS NOT INITIAL AND mt_ekorg IS NOT INITIAL AND mt_lifnr IS NOT INITIAL.
      SELECT
*      lfa1~lifnr,
*      lfa1~land1,
*      lfa1~name1,
*      lfa1~name2,
*      lfa1~name3,
*      lfa1~name4,
*      lfa1~ort01,
*      lfa1~ort02,
*      lfa1~pfach,
*      lfa1~pstl2,
*      lfa1~pstlz,
*      lfa1~regio,
*      lfa1~sortl,
*      lfa1~stras,
*      lfa1~adrnr,
*      lfa1~mcod1,
*      lfa1~mcod2,
*      lfa1~mcod3,
*      lfa1~anred,
*      lfa1~bahns,
*      lfa1~bbbnr,
*      lfa1~bbsnr,
*      lfa1~begru,
*      lfa1~brsch,
*      lfa1~bubkz,
*      lfa1~datlt,
*      lfa1~dtams,
*      lfa1~dtaws,
*      lfa1~erdat,
*      lfa1~ernam,
*      lfa1~esrnr,
*      lfa1~konzs,
*      lfa1~ktokk,
*      lfa1~kunnr,
*      lfa1~lnrza,
*      lfa1~loevm,
*      lfa1~sperr,
*      lfa1~sperm,
*      lfa1~spras,
*      lfa1~stcd1,
*      lfa1~stcd2,
*      lfa1~stkza,
*      lfa1~stkzu,
*      lfa1~telbx,
*      lfa1~telf1,
*      lfa1~telf2,
*      lfa1~telfx,
*      lfa1~teltx,
*      lfa1~telx1,
*      lfa1~xcpdk,
*      lfa1~xzemp,
*      lfa1~vbund,
*      lfa1~fiskn,
*      lfa1~stceg,
*      lfa1~stkzn,
*      lfa1~sperq,
*      lfa1~gbort,
*      lfa1~gbdat,
*      lfa1~sexkz,
*      lfa1~kraus,
*      lfa1~revdb,
*      lfa1~qssys,
*      lfa1~ktock,
*      lfa1~pfort,
*      lfa1~werks,
*      lfa1~ltsna,
*      lfa1~werkr,
*      lfa1~plkal,
*      lfa1~duefl,
*      lfa1~txjcd,
*      lfa1~sperz,
*      lfa1~scacd,
*      lfa1~sfrgr,
*      lfa1~lzone,
*      lfa1~xlfza,
*      lfa1~dlgrp,
*      lfa1~fityp,
*      lfa1~stcdt,
*      lfa1~regss,
*      lfa1~actss,
*      lfa1~stcd3,
*      lfa1~stcd4,
*      lfa1~stcd5,
*      lfa1~stcd6,
*      lfa1~ipisp,
*      lfa1~taxbs,
*      lfa1~profs,
*      lfa1~stgdl,
*      lfa1~emnfr,
*      lfa1~lfurl,
*      j_1kfrepre,
*      j_1kftbus ,
*      j_1kftind ,
*      lfa1~confs     ,
*      lfa1~updat     ,
*      lfa1~uptim     ,
*      lfa1~nodel     ,
*      lfa1~qssysdat  ,
*      lfa1~podkzb    ,
*      lfa1~fisku     ,
*      lfa1~stenr ,
*      lfa1~carrier_conf  ,
*      lfa1~min_comp      ,
*      lfa1~term_li       ,
*      lfa1~crc_num       ,
*      lfa1~cvp_xblck     ,
*      lfa1~weora         ,
*      lfa1~rg            ,
*      lfa1~exp           ,
*      lfa1~uf            ,
*      lfa1~rgdate        ,
*      lfa1~ric         ,
*      lfa1~rne         ,
*      lfa1~rnedate     ,
*      lfa1~cnae        ,
*      lfa1~legalnat    ,
*      lfa1~crtn        ,
*      lfa1~icmstaxpay  ,
*      lfa1~indtyp      ,
*      lfa1~tdt         ,
*      lfa1~comsize     ,
*      lfa1~decregpc,
*      lfa1~allowance_type          ,
*      lfa1~paytrsn                 ,
*      lfa1~lfa1_eew_supp           ,
*      lfa1~borgr_datun             ,
*      lfa1~borgr_yeaun             ,
*      lfa1~au_carrying_ent         ,
*      lfa1~au_ind_under_18         ,
*      lfa1~au_payment_not_exceed_75,
*      lfa1~au_wholly_inp_taxed     ,
*      lfa1~au_partner_without_gain ,
*      lfa1~au_not_entitled_abn     ,
*      lfa1~au_payment_exempt       ,
*      lfa1~au_private_hobby        ,
*      lfa1~au_domestic_nature      ,
*      lfa1~addr2_street            ,
*      lfa1~addr2_house_num         ,
*      lfa1~addr2_post              ,
*      lfa1~addr2_city              ,
*      lfa1~addr2_country           ,
*      lfa1~categ                   ,
*      lfa1~partner_name            ,
*      lfa1~partner_utr             ,
*      lfa1~status                  ,
*      lfa1~vfnum                   ,
*      lfa1~vfnid                   ,
*      lfa1~crn                     ,
*      lfa1~fr_occupation           ,
*      lfa1~j_1iexcd                ,
*      lfa1~j_1iexrn                ,
*      lfa1~j_1iexrg                ,
*      lfa1~j_1iexdi                ,
*      lfa1~j_1iexco                ,
*      lfa1~j_1icstno               ,
*      lfa1~j_1ilstno               ,
*      lfa1~j_1ipanno               ,
*      lfa1~j_1iexcive              ,
*      lfa1~j_1issist               ,
*      lfa1~j_1ivtyp                ,
*      lfa1~j_1ivencre              ,
*      lfa1~aedat                   ,
*      lfa1~usnam
      *
     FROM lfa1
   INNER JOIN lfb1 ON lfb1~lifnr = lfa1~lifnr
   INNER JOIN lfm1 ON lfm1~lifnr = lfa1~lifnr
    INTO CORRESPONDING FIELDS OF TABLE gt_lfa1
    WHERE lfa1~lifnr IN mt_lifnr
      OR lfb1~bukrs IN mt_bukrs
      OR lfm1~ekorg IN mt_ekorg.

      SORT gt_lfa1 BY lifnr.
      DELETE gt_lfa1 WHERE lifnr NOT IN mt_lifnr.

    ELSEIF  mt_bukrs IS NOT INITIAL AND mt_ekorg IS NOT INITIAL AND mt_lifnr IS INITIAL.

      DATA: lt_lifnr TYPE STANDARD TABLE OF lfa1-lifnr.

      SELECT lifnr
        FROM lfb1
        INTO TABLE lt_lifnr
        WHERE bukrs IN mt_bukrs.

      SELECT lifnr
        FROM lfm1
        APPENDING TABLE lt_lifnr
        WHERE ekorg IN mt_ekorg.

      SORT lt_lifnr.
      DELETE ADJACENT DUPLICATES FROM lt_lifnr.

      SELECT *
        FROM lfa1
        INTO TABLE gt_lfa1
        FOR ALL ENTRIES IN lt_lifnr
        WHERE lifnr = lt_lifnr-table_line.
*      SORT lt_lifnr.
*      IF mt_lifnr IS NOT INITIAL.
*        DELETE lt_lifnr WHERE table_line NOT IN mt_lifnr.
*      ENDIF.

    ELSEIF mt_bukrs IS NOT INITIAL AND mt_ekorg IS INITIAL.   "OR ( mt_bukrs IS NOT INITIAL AND mt_lifnr IS NOT INITIAL )
      SELECT
*       lfa1~lifnr,
*       lfa1~land1,
*       lfa1~name1,
*       lfa1~name2,
*       lfa1~name3,
*       lfa1~name4,
*       lfa1~ort01,
*       lfa1~ort02,
*       lfa1~pfach,
*       lfa1~pstl2,
*       lfa1~pstlz,
*       lfa1~regio,
*       lfa1~sortl,
*       lfa1~stras,
*       lfa1~adrnr,
*       lfa1~mcod1,
*       lfa1~mcod2,
*       lfa1~mcod3,
*       lfa1~anred,
*       lfa1~bahns,
*       lfa1~bbbnr,
*       lfa1~bbsnr,
*       lfa1~begru,
*       lfa1~brsch,
*       lfa1~bubkz,
*       lfa1~datlt,
*       lfa1~dtams,
*       lfa1~dtaws,
*       lfa1~erdat,
*       lfa1~ernam,
*       lfa1~esrnr,
*       lfa1~konzs,
*       lfa1~ktokk,
*       lfa1~kunnr,
*       lfa1~lnrza,
*       lfa1~loevm,
*       lfa1~sperr,
*       lfa1~sperm,
*       lfa1~spras,
*       lfa1~stcd1,
*       lfa1~stcd2,
*       lfa1~stkza,
*       lfa1~stkzu,
*       lfa1~telbx,
*       lfa1~telf1,
*       lfa1~telf2,
*       lfa1~telfx,
*       lfa1~teltx,
*       lfa1~telx1,
*       lfa1~xcpdk,
*       lfa1~xzemp,
*       lfa1~vbund,
*       lfa1~fiskn,
*       lfa1~stceg,
*       lfa1~stkzn,
*       lfa1~sperq,
*       lfa1~gbort,
*       lfa1~gbdat,
*       lfa1~sexkz,
*       lfa1~kraus,
*       lfa1~revdb,
*       lfa1~qssys,
*       lfa1~ktock,
*       lfa1~pfort,
*       lfa1~werks,
*       lfa1~ltsna,
*       lfa1~werkr,
*       lfa1~plkal,
*       lfa1~duefl,
*       lfa1~txjcd,
*       lfa1~sperz,
*       lfa1~scacd,
*       lfa1~sfrgr,
*       lfa1~lzone,
*       lfa1~xlfza,
*       lfa1~dlgrp,
*       lfa1~fityp,
*       lfa1~stcdt,
*       lfa1~regss,
*       lfa1~actss,
*       lfa1~stcd3,
*       lfa1~stcd4,
*       lfa1~stcd5,
*       lfa1~stcd6,
*       lfa1~ipisp,
*       lfa1~taxbs,
*       lfa1~profs,
*       lfa1~stgdl,
*       lfa1~emnfr,
*       lfa1~lfurl,
*       j_1kfrepre,
*       j_1kftbus ,
*       j_1kftind ,
*       lfa1~confs     ,
*       lfa1~updat     ,
*       lfa1~uptim     ,
*       lfa1~nodel     ,
*       lfa1~qssysdat  ,
*       lfa1~podkzb    ,
*       lfa1~fisku     ,
*       lfa1~stenr ,
*       lfa1~carrier_conf  ,
*       lfa1~min_comp      ,
*       lfa1~term_li       ,
*       lfa1~crc_num       ,
*       lfa1~cvp_xblck     ,
*       lfa1~weora         ,
*       lfa1~rg            ,
*       lfa1~exp           ,
*       lfa1~uf            ,
*       lfa1~rgdate        ,
*       lfa1~ric         ,
*       lfa1~rne         ,
*       lfa1~rnedate     ,
*       lfa1~cnae        ,
*       lfa1~legalnat    ,
*       lfa1~crtn        ,
*       lfa1~icmstaxpay  ,
*       lfa1~indtyp      ,
*       lfa1~tdt         ,
*       lfa1~comsize     ,
*       lfa1~decregpc,
*       lfa1~allowance_type          ,
*       lfa1~paytrsn                 ,
*       lfa1~lfa1_eew_supp           ,
*       lfa1~borgr_datun             ,
*       lfa1~borgr_yeaun             ,
*       lfa1~au_carrying_ent         ,
*       lfa1~au_ind_under_18         ,
*       lfa1~au_payment_not_exceed_75,
*       lfa1~au_wholly_inp_taxed     ,
*       lfa1~au_partner_without_gain ,
*       lfa1~au_not_entitled_abn     ,
*       lfa1~au_payment_exempt       ,
*       lfa1~au_private_hobby        ,
*       lfa1~au_domestic_nature      ,
*       lfa1~addr2_street            ,
*       lfa1~addr2_house_num         ,
*       lfa1~addr2_post              ,
*       lfa1~addr2_city              ,
*       lfa1~addr2_country           ,
*       lfa1~categ                   ,
*       lfa1~partner_name            ,
*       lfa1~partner_utr             ,
*       lfa1~status                  ,
*       lfa1~vfnum                   ,
*       lfa1~vfnid                   ,
*       lfa1~crn                     ,
*       lfa1~fr_occupation           ,
*       lfa1~j_1iexcd                ,
*       lfa1~j_1iexrn                ,
*       lfa1~j_1iexrg                ,
*       lfa1~j_1iexdi                ,
*       lfa1~j_1iexco                ,
*       lfa1~j_1icstno               ,
*       lfa1~j_1ilstno               ,
*       lfa1~j_1ipanno               ,
*       lfa1~j_1iexcive              ,
*       lfa1~j_1issist               ,
*       lfa1~j_1ivtyp                ,
*       lfa1~j_1ivencre              ,
*       lfa1~aedat                   ,
*       lfa1~usnam
     * FROM lfa1
     INNER JOIN lfb1 ON lfb1~lifnr = lfa1~lifnr
     INTO CORRESPONDING FIELDS OF TABLE gt_lfa1
     WHERE lfa1~lifnr IN mt_lifnr
       AND lfb1~bukrs IN mt_bukrs.

    ELSEIF mt_ekorg IS NOT INITIAL  AND mt_bukrs IS INITIAL.   "OR ( mt_ekorg IS NOT INITIAL AND mt_lifnr IS NOT INITIAL )

      SELECT
*        lfa1~lifnr,
*        lfa1~land1,
*        lfa1~name1,
*        lfa1~name2,
*        lfa1~name3,
*        lfa1~name4,
*        lfa1~ort01,
*        lfa1~ort02,
*        lfa1~pfach,
*        lfa1~pstl2,
*        lfa1~pstlz,
*        lfa1~regio,
*        lfa1~sortl,
*        lfa1~stras,
*        lfa1~adrnr,
*        lfa1~mcod1,
*        lfa1~mcod2,
*        lfa1~mcod3,
*        lfa1~anred,
*        lfa1~bahns,
*        lfa1~bbbnr,
*        lfa1~bbsnr,
*        lfa1~begru,
*        lfa1~brsch,
*        lfa1~bubkz,
*        lfa1~datlt,
*        lfa1~dtams,
*        lfa1~dtaws,
*        lfa1~erdat,
*        lfa1~ernam,
*        lfa1~esrnr,
*        lfa1~konzs,
*        lfa1~ktokk,
*        lfa1~kunnr,
*        lfa1~lnrza,
*        lfa1~loevm,
*        lfa1~sperr,
*        lfa1~sperm,
*        lfa1~spras,
*        lfa1~stcd1,
*        lfa1~stcd2,
*        lfa1~stkza,
*        lfa1~stkzu,
*        lfa1~telbx,
*        lfa1~telf1,
*        lfa1~telf2,
*        lfa1~telfx,
*        lfa1~teltx,
*        lfa1~telx1,
*        lfa1~xcpdk,
*        lfa1~xzemp,
*        lfa1~vbund,
*        lfa1~fiskn,
*        lfa1~stceg,
*        lfa1~stkzn,
*        lfa1~sperq,
*        lfa1~gbort,
*        lfa1~gbdat,
*        lfa1~sexkz,
*        lfa1~kraus,
*        lfa1~revdb,
*        lfa1~qssys,
*        lfa1~ktock,
*        lfa1~pfort,
*        lfa1~werks,
*        lfa1~ltsna,
*        lfa1~werkr,
*        lfa1~plkal,
*        lfa1~duefl,
*        lfa1~txjcd,
*        lfa1~sperz,
*        lfa1~scacd,
*        lfa1~sfrgr,
*        lfa1~lzone,
*        lfa1~xlfza,
*        lfa1~dlgrp,
*        lfa1~fityp,
*        lfa1~stcdt,
*        lfa1~regss,
*        lfa1~actss,
*        lfa1~stcd3,
*        lfa1~stcd4,
*        lfa1~stcd5,
*        lfa1~stcd6,
*        lfa1~ipisp,
*        lfa1~taxbs,
*        lfa1~profs,
*        lfa1~stgdl,
*        lfa1~emnfr,
*        lfa1~lfurl,
*        j_1kfrepre,
*        j_1kftbus ,
*        j_1kftind ,
*        lfa1~confs     ,
*        lfa1~updat     ,
*        lfa1~uptim     ,
*        lfa1~nodel     ,
*        lfa1~qssysdat  ,
*        lfa1~podkzb    ,
*        lfa1~fisku     ,
*        lfa1~stenr ,
*        lfa1~carrier_conf  ,
*        lfa1~min_comp      ,
*        lfa1~term_li       ,
*        lfa1~crc_num       ,
*        lfa1~cvp_xblck     ,
*        lfa1~weora         ,
*        lfa1~rg            ,
*        lfa1~exp           ,
*        lfa1~uf            ,
*        lfa1~rgdate        ,
*        lfa1~ric         ,
*        lfa1~rne         ,
*        lfa1~rnedate     ,
*        lfa1~cnae        ,
*        lfa1~legalnat    ,
*        lfa1~crtn        ,
*        lfa1~icmstaxpay  ,
*        lfa1~indtyp      ,
*        lfa1~tdt         ,
*        lfa1~comsize     ,
*        lfa1~decregpc,
*        lfa1~allowance_type          ,
*        lfa1~paytrsn                 ,
*        lfa1~lfa1_eew_supp           ,
*        lfa1~borgr_datun             ,
*        lfa1~borgr_yeaun             ,
*        lfa1~au_carrying_ent         ,
*        lfa1~au_ind_under_18         ,
*        lfa1~au_payment_not_exceed_75,
*        lfa1~au_wholly_inp_taxed     ,
*        lfa1~au_partner_without_gain ,
*        lfa1~au_not_entitled_abn     ,
*        lfa1~au_payment_exempt       ,
*        lfa1~au_private_hobby        ,
*        lfa1~au_domestic_nature      ,
*        lfa1~addr2_street            ,
*        lfa1~addr2_house_num         ,
*        lfa1~addr2_post              ,
*        lfa1~addr2_city              ,
*        lfa1~addr2_country           ,
*        lfa1~categ                   ,
*        lfa1~partner_name            ,
*        lfa1~partner_utr             ,
*        lfa1~status                  ,
*        lfa1~vfnum                   ,
*        lfa1~vfnid                   ,
*        lfa1~crn                     ,
*        lfa1~fr_occupation           ,
*        lfa1~j_1iexcd                ,
*        lfa1~j_1iexrn                ,
*        lfa1~j_1iexrg                ,
*        lfa1~j_1iexdi                ,
*        lfa1~j_1iexco                ,
*        lfa1~j_1icstno               ,
*        lfa1~j_1ilstno               ,
*        lfa1~j_1ipanno               ,
*        lfa1~j_1iexcive              ,
*        lfa1~j_1issist               ,
*        lfa1~j_1ivtyp                ,
*        lfa1~j_1ivencre              ,
*        lfa1~aedat                   ,
*        lfa1~usnam
       * FROM lfa1
      INNER JOIN lfm1 ON lfm1~lifnr = lfa1~lifnr
      INTO CORRESPONDING FIELDS OF TABLE gt_lfa1
      WHERE lfa1~lifnr IN mt_lifnr
        AND lfm1~ekorg IN mt_ekorg.
    ELSE.
      MESSAGE 'No Data found' TYPE 'I'.
    ENDIF.
    FIELD-SYMBOLS <fs_lfa1> TYPE lfa1.
    LOOP AT gt_lfa1 ASSIGNING <fs_lfa1>.
*      ls_lfa1 = CORRESPONDING #( <fs_lfa1> ). " Copies fields with same name
      MOVE-CORRESPONDING <fs_lfa1> TO ls_lfa1.
      " Now set custom fields
      ls_lfa1-source_id      = <fs_lfa1>-lifnr.
      ls_lfa1-assignment_id  = '0000000001'.
      CLEAR lv_date_c.
      " Format the date for Excel output
*      lv_date_c = |{ <fs_lfa1>-erdat DATE = USER }|.
      WRITE <fs_lfa1>-erdat TO lv_date_c DD/MM/YYYY.
      ls_lfa1-erdat = lv_date_c.
      APPEND ls_lfa1 TO lt_lfa1.
      CLEAR: <fs_lfa1>-lifnr, lv_date_c,ls_lfa1.
    ENDLOOP.

* Check if any data is selected
    SORT lt_lfa1 BY source_id.

    mt_lfa1 = lt_lfa1 .

  ENDMETHOD.


  METHOD get_lfa1_ass.

*    DATA(tt_lfa1) = me->get_lfa1( ).
    FIELD-SYMBOLS <fs_lfa1> TYPE ty_lfa1_t.
    IF mt_lfa1 IS NOT INITIAL.
      LOOP AT mt_lfa1 ASSIGNING <fs_lfa1>.
        APPEND VALUE ty_assignment(
            source_id            = <fs_lfa1>-source_id
            assignment_id        = '0000000001'
            assignment_cat       = 'SUPPL'
            standard             = 'x'
        ) TO lt_asst.
      ENDLOOP.
    ENDIF.
  ENDMETHOD.


  METHOD get_lfb1.
    DATA:lv_date_c TYPE char10,
         ls_lfb1   TYPE ty_lfb1_str.

    DATA: lwt_lfb1 TYPE STANDARD TABLE OF lfb1.
    FIELD-SYMBOLS <fs_lfb1> TYPE lfb1.

*    DATA(tt_lfa1) = me->get_lfa1( ).
    IF mt_lfa1 IS NOT INITIAL.
      IF mt_bukrs IS NOT INITIAL.
        SELECT * FROM lfb1 INTO TABLE lwt_lfb1
         WHERE lifnr IN mt_lifnr
           AND bukrs IN mt_bukrs.
      ELSE.
        SELECT * FROM lfb1 INTO TABLE lwt_lfb1
          FOR ALL ENTRIES IN mt_lfa1 ""tt_lfa1
           WHERE lifnr = mt_lfa1-lifnr " IN mt_lifnr
             AND bukrs IN mt_bukrs.
      ENDIF.
    ENDIF.

    LOOP AT lwt_lfb1 ASSIGNING <fs_lfb1>.
      MOVE-CORRESPONDING <fs_lfb1> TO ls_lfb1.
*      ls_lfb1 = CORRESPONDING #( <fs_lfb1> ).
      ls_lfb1-source_id = <fs_lfb1>-lifnr.
      ls_lfb1-assignment_id = '0000000001'.
*      lv_date_c = |{ <fs_lfb1>-include-erdat DATE = USER }|.
      WRITE <fs_lfb1>-erdat TO lv_date_c DD/MM/YYYY.
      ls_lfb1-erdat = lv_date_c.
      APPEND ls_lfb1 TO lt_lfb1.
      CLEAR: lv_date_c, ls_lfb1.
    ENDLOOP.

    SORT lt_lfb1 BY lifnr.

  ENDMETHOD.


  METHOD get_lfbw.

    IF mt_bukrs IS NOT INITIAL.
      SELECT * FROM lfbw
       INTO CORRESPONDING FIELDS OF TABLE lt_lfbw
      WHERE lifnr IN mt_lifnr
        AND bukrs IN mt_bukrs.
    ELSE.
      IF mt_lfa1 IS NOT INITIAL.
        SELECT * FROM lfbw
       INTO CORRESPONDING FIELDS OF TABLE lt_lfbw
             FOR ALL ENTRIES IN mt_lfa1
      WHERE lifnr = mt_lfa1-lifnr "IN mt_lifnr
        AND bukrs IN mt_bukrs.
      ENDIF.
    ENDIF.

    FIELD-SYMBOLS <fs_lfbw> TYPE ty_lfbw_str.
    LOOP AT lt_lfbw ASSIGNING <fs_lfbw>.
      <fs_lfbw>-source_id = <fs_lfbw>-lifnr.
      <fs_lfbw>-assignment_id = '0000000001'.
    ENDLOOP.

    SORT lt_lfbw BY lifnr.

  ENDMETHOD.


  METHOD get_lfm1.
    DATA:lv_date_c TYPE char10,
         ls_lfm1   TYPE ty_lfm1_str.
*    DATA(tt_lfa1) = me->get_lfa1( ).4
    DATA: lwt_lfm1 TYPE TABLE OF lfm1.

*SELECT data FROM lfm1 table
    IF mt_lfa1 IS NOT INITIAL.
      IF mt_ekorg IS NOT INITIAL.
        SELECT * FROM lfm1 INTO TABLE lwt_lfm1
      WHERE lifnr IN mt_lifnr
          AND ekorg IN mt_ekorg.
      ELSE.
        SELECT * FROM lfm1 INTO TABLE lwt_lfm1
            FOR ALL ENTRIES IN mt_lfa1 "@tt_lfa1
             WHERE lifnr = mt_lfa1-lifnr
*                WHERE lifnr IN @mt_lifnr
            AND ekorg IN mt_ekorg.
      ENDIF.
    ENDIF.
    FIELD-SYMBOLS <fs_lfm1> TYPE lfm1.
    LOOP AT lwt_lfm1 ASSIGNING <fs_lfm1>.
*      ls_lfm1 = CORRESPONDING #( <fs_lfm1> ).
      MOVE-CORRESPONDING <fs_lfm1> TO ls_lfm1.
      ls_lfm1-source_id = <fs_lfm1>-lifnr.
      ls_lfm1-assignment_id = '0000000001'.
*      lv_date_c = |{ <fs_lfm1>-erdat DATE = USER }|.
      WRITE <fs_lfm1>-erdat TO lv_date_c.
      ls_lfm1-erdat = lv_date_c.

      APPEND ls_lfm1 TO lt_lfm1.
      CLEAR: lv_date_c, ls_lfm1.
    ENDLOOP.

    SORT lt_lfm1 BY lifnr.

  ENDMETHOD.


  METHOD get_lfm2.
    DATA:lv_date_c TYPE char10,
         lt_lfm1   TYPE TABLE OF ty_lfm1_str,
         ls_lfm2   TYPE ty_lfm2_str.

    FIELD-SYMBOLS:<fs_lfm2> TYPE ty_lfm2_str.

*    DATA(lt_lfm1) = me->get_lfm1( ).
    lt_lfm1 = me->get_lfm1( ).
    IF lt_lfm1 IS NOT INITIAL.
      MOVE-CORRESPONDING lt_lfm1 TO lt_lfm2.
    ENDIF.

    LOOP AT lt_lfm2 ASSIGNING <fs_lfm2>.
      <fs_lfm2>-source_id = <fs_lfm2>-lifnr.
      <fs_lfm2>-assignment_id = '0000000001'.
      WRITE <fs_lfm2>-erdat TO lv_date_c DD/MM/YYYY.
      <fs_lfm2>-erdat = lv_date_c.
    ENDLOOP.

  ENDMETHOD.


  METHOD get_lifnr_range.
    rv_lifnr = mt_lifnr.  " Return the lifnr range
  ENDMETHOD.


  METHOD get_lktokk.
    DATA:ls_lfa1 TYPE ty_lfa1_t.
*    DATA(tt_lfa1) = me->get_lfa1( ).
    IF mt_lfa1 IS NOT INITIAL.
      MOVE-CORRESPONDING mt_lfa1 TO lt_lktokk.
      FIELD-SYMBOLS <fs_lfa1> TYPE ty_lfa1_t.
      LOOP AT lt_lktokk ASSIGNING <fs_lfa1>.
        IF <fs_lfa1>-ktokk = 'KRED'.
          <fs_lfa1>-ktokk = 'Z101'.
        ENDIF.
      ENDLOOP.
    ENDIF.
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

           BEGIN OF ty_lfm1_t,
             o_waers TYPE waers,
             n_waers TYPE waers,
           END OF ty_lfm1_t.


    DATA: ip_file1         TYPE string,
          gv_filelength    TYPE i,
          gv_headerxstring TYPE xstring,
          gv_rc            TYPE i,
          c_fname          TYPE string,
          lv_woksheetname  TYPE string.

    DATA: lv_filetable TYPE filetable,
          lt_records   TYPE STANDARD TABLE OF ty_record,
          gt_tab       TYPE STANDARD TABLE OF ty_tab,  "example – replace with your structure
          gs_tab       TYPE ty_tab,  "example – replace with your structure
          gt_sheet     TYPE STANDARD TABLE OF ty_sheet,
*          gt_tab       TYPE TABLE OF ty_tab,  "example – replace with your structure
          gt_pntdet    TYPE STANDARD TABLE OF string,
          gt_purorg    TYPE STANDARD TABLE OF string,
          gt_docdet    TYPE STANDARD TABLE OF string,
          gt_waers     TYPE TABLE OF ty_lfm1_t.

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

    FIELD-SYMBOLS: <fs_lfm1> TYPE ty_lfm1_str.

    FIELD-SYMBOLS: <fs_map> TYPE ty_dynmap.
    FIELD-SYMBOLS: <fs_lfa1> TYPE ty_lfa1_t.
    FIELD-SYMBOLS: <fs_lfb1> TYPE ty_lfb1_str.
    FIELD-SYMBOLS: <fs_lfbw> TYPE ty_lfb1_str.
    FIELD-SYMBOLS: <fs_lfm2> TYPE ty_lfm2_str.
    FIELD-SYMBOLS: <fs_wyt3> TYPE ty_wyt3_str.
    FIELD-SYMBOLS: <fs_but000> TYPE ty_but000_str.
    FIELD-SYMBOLS: <fs_but021> TYPE ty_but021_str.
    FIELD-SYMBOLS: <fs_but0bk> TYPE ty_but0bk_str.
    FIELD-SYMBOLS: <fs_adrc> TYPE ty_adrc_str.
    FIELD-SYMBOLS: <fs_adr2> TYPE ty_adr2_str.
    FIELD-SYMBOLS: <fs_adr6> TYPE ty_adr6_str.
    FIELD-SYMBOLS: <fs_tax_data> TYPE ty_tax.
    FIELD-SYMBOLS: <fs_lktokk> TYPE ty_lfa1_t.
    FIELD-SYMBOLS: <fs_asst> TYPE ty_assignment .
    FIELD-SYMBOLS: <fs_but020> TYPE ty_but000_str.

    DATA: gt_dynmap TYPE STANDARD TABLE OF ty_dynmap.
    DATA: lx_excel TYPE REF TO cx_fdt_excel_core.
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

        CATCH cx_fdt_excel_core INTO lx_excel.
          MESSAGE lx_excel->get_text( ) TYPE 'E'.
      ENDTRY.

      IF lo_excel_ref IS BOUND.

        " Get worksheet names
*        lo_excel_ref->if_fdt_doc_spreadsheet~get_worksheet_names(
*          IMPORTING
*            worksheet_names = DATA(lt_worksheets) ).

        DATA: lt_worksheets TYPE if_fdt_doc_spreadsheet=>t_worksheet_names.

        lo_excel_ref->if_fdt_doc_spreadsheet~get_worksheet_names(
          IMPORTING
            worksheet_names = lt_worksheets ).

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
              FIELD-SYMBOLS <fs_tab> TYPE ty_tab.
              LOOP AT gt_tab ASSIGNING <fs_tab> WHERE rule_typ = 'MAPPING' OR rule_typ = 'FIXED VALUE'
                OR rule_typ = 'EMPTY'.

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

                  WHEN 'LFM1'.
                    LOOP AT it_lfm1 ASSIGNING <fs_lfm1>.
                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          "Check if the field exists dynamically in structure
                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_lfm1> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.
                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_lfm1> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_lfm1> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.

                  WHEN 'LFA1'.
                    LOOP AT it_lfa1 ASSIGNING <fs_lfa1>.

                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_lfa1> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED AND <fs_tab>-rule_typ = 'MAPPING'.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.

                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_lfa1> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_lfa1> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.

                  WHEN 'LFB1'.
*                    LOOP AT it_lfb1 ASSIGNING FIELD-SYMBOL(<fs_lfb1>).
*                      LOOP AT gt_dynmap ASSIGNING <fs_map>.
*
*                        ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_lfb1> TO <fs_field>.
*                        IF <fs_field> IS ASSIGNED.
*                          IF <fs_field> = <fs_map>-old_value.
*                            <fs_field> = <fs_map>-new_value.
*                          ENDIF.
*                        ENDIF.
*
*                      ENDLOOP.
*                    ENDLOOP.
                    LOOP AT it_lfb1 ASSIGNING <fs_lfb1>.

                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_lfb1> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED AND <fs_tab>-rule_typ = 'MAPPING'.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.

                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_lfb1> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_lfb1> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.

                  WHEN 'LFBW'.
*                    LOOP AT it_lfbw ASSIGNING FIELD-SYMBOL(<fs_lfbw>).
*                      LOOP AT gt_dynmap ASSIGNING <fs_map>.
*
*                        ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_lfbw> TO <fs_field>.
*                        IF <fs_field> IS ASSIGNED.
*                          IF <fs_field> = <fs_map>-old_value.
*                            <fs_field> = <fs_map>-new_value.
*                          ENDIF.
*                        ENDIF.
*
*                      ENDLOOP.
*                    ENDLOOP.
                    LOOP AT it_lfb1 ASSIGNING <fs_lfbw>.

                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_lfbw> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED AND <fs_tab>-rule_typ = 'MAPPING'.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.

                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_lfbw> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_lfbw> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.

                  WHEN 'LFM2'.

                    LOOP AT it_lfm2 ASSIGNING <fs_lfm2>.

                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_lfm2> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED AND <fs_tab>-rule_typ = 'MAPPING'.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.

                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_lfm2> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_lfm2> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.

                  WHEN 'WYT3'.

                    LOOP AT it_wyt3 ASSIGNING <fs_wyt3>.

                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_wyt3> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED AND <fs_tab>-rule_typ = 'MAPPING'.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.

                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_wyt3> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_wyt3> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.

                  WHEN 'BUT000'.

                    LOOP AT it_but000 ASSIGNING <fs_but000>.

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

                  WHEN 'BUT020'.

                    LOOP AT it_but000 ASSIGNING <fs_but020>.

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

                  WHEN 'BUT021_FS'.

                    LOOP AT it_but021 ASSIGNING <fs_but021>.

                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_but021> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED AND <fs_tab>-rule_typ = 'MAPPING'.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.

                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_but021> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_but021> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.
                  WHEN 'BUT0BK'.

                    LOOP AT it_but0bk ASSIGNING <fs_but0bk>.

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

                  WHEN 'ADRC'.
                    LOOP AT it_adrc ASSIGNING <fs_adrc>.

                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_adrc> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED AND <fs_tab>-rule_typ = 'MAPPING'.
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
                  WHEN 'ADR2'.
                    LOOP AT it_adr2 ASSIGNING <fs_adr2>.

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
                    LOOP AT it_adr6 ASSIGNING <fs_adr6>.

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

                  WHEN 'DFKKBPTAXNUM'.
                    LOOP AT it_tax_data ASSIGNING <fs_tax_data>.

                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_tax_data> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED AND <fs_tab>-rule_typ = 'MAPPING'.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.

                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_tax_data> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_tax_data> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.

                  WHEN 'LFA1-KTOKK'.
                    LOOP AT it_lktokk ASSIGNING <fs_lktokk>.

                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_lktokk> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED AND <fs_tab>-rule_typ = 'MAPPING'.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.

                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_lktokk> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_lktokk> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ENDIF.
                    ENDLOOP.

                  WHEN 'LFA1_ASSGMNT'.
                    LOOP AT it_asst ASSIGNING <fs_asst>.

                      IF <fs_tab>-rule_typ = 'MAPPING'.
                        LOOP AT gt_dynmap ASSIGNING <fs_map>.

                          ASSIGN COMPONENT <fs_map>-field_name OF STRUCTURE <fs_asst> TO <fs_field>.
                          IF <fs_field> IS ASSIGNED AND <fs_tab>-rule_typ = 'MAPPING'.
                            IF <fs_field> = <fs_map>-old_value.
                              <fs_field> = <fs_map>-new_value.
                            ENDIF.
                          ENDIF.
                        ENDLOOP.

                      ELSEIF <fs_tab>-rule_typ = 'FIXED VALUE'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_asst> TO <fs_field>.
                        IF <fs_field> IS ASSIGNED AND <fs_tab>-rule IS NOT INITIAL.
                          <fs_field> = <fs_tab>-rule.
                        ENDIF.
                      ELSEIF <fs_tab>-rule_typ = 'EMPTY'.
                        ASSIGN COMPONENT <fs_tab>-targ_field OF STRUCTURE <fs_asst> TO <fs_field>.
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

    DATA : ls_tax_data TYPE ty_tax.

    FIELD-SYMBOLS: <fs_tab> TYPE ty_lfa1_t.
    LOOP AT it_tab ASSIGNING <fs_tab>.

      CLEAR ls_tax_data.
      DATA: postfix TYPE i.
      IF <fs_tab>-stceg IS NOT INITIAL.
        CLEAR ls_tax_data.
        postfix = 0.  "if its VAT registration number, the tax category will be country + 0. ex: DE+0=DE0.
        ls_tax_data-source_id = <fs_tab>-source_id.
        ls_tax_data-taxtype = |{ <fs_tab>-land1 }{ postfix }|.
        ls_tax_data-taxnum = <fs_tab>-stceg.
        APPEND ls_tax_data TO lt_tax_data.
      ENDIF.

      IF <fs_tab>-stcd1 IS NOT INITIAL.
        CLEAR ls_tax_data.
        postfix = 1. "if its tax number 1, the tax category will be country + 1. ex: DE+1=DE1.
        ls_tax_data-source_id = <fs_tab>-source_id.
        ls_tax_data-taxtype = |{ <fs_tab>-land1 }{ postfix }|.
        ls_tax_data-taxnum = <fs_tab>-stcd1.
        APPEND ls_tax_data TO lt_tax_data.
      ENDIF.

      IF <fs_tab>-stcd2 IS NOT INITIAL.
        CLEAR ls_tax_data.
        postfix = 2.
        ls_tax_data-source_id = <fs_tab>-source_id.
        ls_tax_data-taxtype = |{ <fs_tab>-land1 }{ postfix }|.
        ls_tax_data-taxnum = <fs_tab>-stcd2.
        APPEND ls_tax_data TO lt_tax_data.
      ENDIF.

      IF <fs_tab>-stcd3 IS NOT INITIAL.
        CLEAR ls_tax_data.
        postfix  = 3.
        ls_tax_data-source_id = <fs_tab>-source_id.
        ls_tax_data-taxtype = |{ <fs_tab>-land1 }{ postfix }|.
        ls_tax_data-taxnum = <fs_tab>-stcd3.
        APPEND ls_tax_data TO lt_tax_data.
      ENDIF.

      IF <fs_tab>-stcd4 IS NOT INITIAL.
        CLEAR ls_tax_data.
        postfix = 4.
*        ls_tax_data-source_id = <fs_tab>-source_id.
        ls_tax_data-taxtype = |{ <fs_tab>-land1 }{ postfix }|.
        ls_tax_data-taxnum = <fs_tab>-stcd4.
        APPEND ls_tax_data TO lt_tax_data.
      ENDIF.

      IF <fs_tab>-stcd5 IS NOT INITIAL.
        CLEAR ls_tax_data.
        postfix = 5.
        ls_tax_data-source_id = <fs_tab>-source_id.
        IF <fs_tab>-land1 = 'CN'.
          ls_tax_data-taxnumxl = <fs_tab>-stcd5.
        ELSE.
          ls_tax_data-taxnum = <fs_tab>-stcd5.
        ENDIF.
        APPEND ls_tax_data TO lt_tax_data.
      ENDIF.

      IF <fs_tab>-stcd6 IS NOT INITIAL.
        CLEAR ls_tax_data.
        postfix = 6.
        ls_tax_data-source_id = <fs_tab>-source_id.
        ls_tax_data-taxtype = |{ <fs_tab>-land1 }{ postfix }|.
        ls_tax_data-taxnum = <fs_tab>-stcd6.
        APPEND ls_tax_data TO lt_tax_data.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.


  METHOD get_wyt3.
    DATA:lv_date_c TYPE char10,
         ls_wyt3   TYPE ty_wyt3_str,
         tt_lfm1   TYPE ty_lfm1.
*    DATA(tt_lfm1) = me->get_lfm1( ).
    tt_lfm1 = me->get_lfm1( ).
    DATA : lwt_wyt3 TYPE TABLE OF wyt3.
    IF mt_ekorg IS NOT INITIAL AND tt_lfm1 IS NOT INITIAL.
      SELECT * FROM wyt3 INTO TABLE lwt_wyt3
        WHERE lifnr IN mt_lifnr
          AND ekorg IN mt_ekorg.
    ELSE.
      IF mt_lfa1 IS NOT INITIAL.
        SELECT * FROM wyt3 INTO TABLE lwt_wyt3
          FOR ALL ENTRIES IN mt_lfa1 ""tt_lfa1
           WHERE lifnr = mt_lfa1-lifnr " IN mt_lifnr
             AND ekorg IN mt_ekorg.
      ENDIF.
    ENDIF.

    SORT lt_wyt3 BY lifnr ekorg werks.
    FIELD-SYMBOLS: <fs_wyt3> TYPE wyt3.
    LOOP AT lwt_wyt3 ASSIGNING <fs_wyt3>.
*      ls_wyt3 = CORRESPONDING #( <fs_wyt3> ).
      MOVE-CORRESPONDING <fs_wyt3> TO ls_wyt3.
      ls_wyt3-source_id = <fs_wyt3>-lifnr.
      ls_wyt3-assignment_id = '0000000001'.
*      lv_date_c = |{ <fs_wyt3>-erdat DATE = USER }|.
      WRITE <fs_wyt3>-erdat TO lv_date_c.
      ls_wyt3-erdat = lv_date_c.
      APPEND ls_wyt3 TO lt_wyt3.
      CLEAR: lv_date_c, ls_wyt3.
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

    FIELD-SYMBOLS: <ls_context> TYPE STANDARD TABLE .
    FIELD-SYMBOLS: <ls_field> TYPE abap_componentdescr.

    LOOP AT iv_table ASSIGNING  <ls_data> FROM 2.
      IF <ls_data> IS INITIAL.
        EXIT.
      ENDIF.
      lv_empty = abap_true.
      APPEND INITIAL LINE TO ct_table ASSIGNING <ls_context>.
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
          READ TABLE lt_field ASSIGNING <ls_field> INDEX sy-index .
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
ENDCLASS.
