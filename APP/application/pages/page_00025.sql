prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>56834162540286699751
,p_default_application_id=>92329
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BDOS'
);
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'Item Services'
,p_alias=>'ITEM-SERVICES'
,p_page_mode=>'MODAL'
,p_step_title=>'ItemServices'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .ui-li-aside{',
'    color: black;',
'    margin-top: 15px;',
'    margin-bottom: 10px;',
'    font-size: 15px;',
'    font-weight: bold;',
'}',
'',
'.a-ListView-item{',
'    font-size: 18px !important;',
'}',
'.a-ListView-item > a{',
'    padding-right: 25px !important;',
'}',
'.a-ListView-item .ui-li-count{',
'    font-size: 18px;',
'    background-color: inherit;',
'}',
'',
'.a-ListView-divider{',
'    font-size: 20px;',
'}',
'',
'',
'.a-ListView{',
'    border: 1px solid rgba(0,0,0,.1) !important;',
'}',
'',
'.fa-angle-right{',
'    font-size: 25px !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1400px'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230420132743'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70428340599321477929)
,p_plug_name=>'Services'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(56838272500189891993)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ITEM_ID,',
'       NAME,',
unistr('       ''Price: '' || PRICE || '' \20AC <br> Estimated work time: '' || TIME_IN_HOURS || ''h'','),
'       DESCRIPTION ',
'  from SERVICES',
' where item_id = :P25_ID',
' and nvl(is_diagnostic,0) =0 '))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_ajax_items_to_submit=>'P25_ID'
,p_plug_query_num_rows=>20
,p_attribute_01=>'DIVIDER'
,p_attribute_02=>'DESCRIPTION'
,p_attribute_06=>unistr('''PRICE:''||PRICE||''\20AC<BR>ESTIMATEDWORKTIME:''||TIME_IN_HOURS||''H''')
,p_attribute_14=>'NAME'
,p_attribute_16=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:CR,14,21, 23:P14_ITEM_ID,P14_SERVICE_ID:&ITEM_ID.,&ID.'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70822953528375559999)
,p_plug_name=>'Item'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838213656948891968)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>4
,p_query_type=>'TABLE'
,p_query_table=>'ITEMS'
,p_query_where=>'id = :P25_ID'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P25_ID'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(70428340403405477928)
,p_region_id=>wwv_flow_imp.id(70822953528375559999)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'MODEL'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'SUPPLIER'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'BLOB'
,p_icon_blob_column_name=>'BADGE'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'IMAGE'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_media_css_classes=>'displayImage'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70822953801525559999)
,p_name=>'P25_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70822953528375559999)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
