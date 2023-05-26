prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_name=>'Apponitments'
,p_alias=>'APPONITMENTS-CLIENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Apponitments'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'1000'
,p_dialog_width=>'1000'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230421091933'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75247098584927403519)
,p_plug_name=>'Appointments'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'a.id,',
'utl_i18n.unescape_reference(''<a>''|| a.type || ''<br>''|| uc.name || '' '' || uc.last_name  || ''<br>''||',
'case nvl(a.specialist_id,-1) ',
'when -1 then ''Unassigned''',
'else us.name || '' '' || us.last_name ',
'end || ''</a>'') as type,',
'a.date_and_time,',
'a.date_and_time + interval ''30'' MINUTE as end_date,',
'a.description',
' from appointments a, users us, users uc',
' where us.id(+) = a.specialist_id',
' and uc.id(+) = a.client_id',
' and a.order_id = :P4_ORDER_ID',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P4_ORDER_ID'
,p_attribute_01=>'DATE_AND_TIME'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TYPE'
,p_attribute_11=>'month:week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_17=>'Y'
,p_attribute_18=>'24'
,p_attribute_19=>'Y'
,p_attribute_20=>'8'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1845157472320543702)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(75247098584927403519)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapRight:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Return Appointment'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:CR,38:P38_ORDER_ID:&P4_ORDER_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from appointments where order_id = 101 and upper(type) = ''RETURN''',
'union all',
'select 1 from orders where id= 101 and upper(return_option) != ''SHOP'''))
,p_button_condition_type=>'NOT_EXISTS'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1845157892188543703)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(75247098584927403519)
,p_button_name=>'Close'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Close'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::P28_ID:&P4_ORDER_ID.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75218173258523792345)
,p_name=>'P4_ORDER_ID'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
