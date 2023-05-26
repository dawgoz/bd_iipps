prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_name=>'Order Information'
,p_alias=>'ORDER-INFORMATION-CLIENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Order Information'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(56838375348780892046)
,p_dialog_width=>'800px'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230509105807'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146795786522697367878)
,p_plug_name=>'Order Information'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select o.id,',
's.name as service,',
'i.supplier || '' '' || i.model item,',
'o.additional_info additional_info,',
'case o.delivery_option',
'    when ''Shop'' then ''Item will be delivered to shop by client at '' || to_char(ad.date_and_time, ''YYYY-MM-DD HH24:MI'')',
'    when ''Post Box'' then ''Item will be delivered using Post Box from '' || o.DELIVERY_ADDRESS ',
'    when ''Courier'' then ''Item will be delivered using Courier from '' || o.DELIVERY_ADDRESS',
'end  as delivery,',
'case o.RETURN_OPTION ',
'    when ''Shop'' then ''Item will be colected from shop by client '' ||  to_char(ar.date_and_time, ''YYYY-MM-DD HH24:MI'')',
'    when ''Post Box'' then ''Item will be returned to client using Post Box to '' || o.RETURN_ADDRESS ',
'    when ''Courier'' then ''Item will be returned to client using Courier to '' || o.RETURN_ADDRESS',
'    when ''Null'' then ''Item return will be decided later''',
'end  as return,',
unistr('o.price||''\20AC''price ,'),
' s.TIME_IN_HOURS||''h'' work_time ,',
' o.status,',
' o.comments,',
' o.rating,',
' o.review,',
' o.review as review1',
' from orders o, users u, services s, items i, appointments ad, appointments ar',
'  where ad.order_id(+) = o.id',
'  and ad.type(+) = ''Delivery''',
'  and ar.order_id(+) = o.id',
'  and ar.type(+) = ''Return''',
'   and s.id = o.service_id',
'  and i.id = s.item_id',
'  and u.id = o.client_id'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146795793164172367884)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838209349165891966)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73417218967998412864)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(146795793164172367884)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1428260891605674603)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(146795793164172367884)
,p_button_name=>'CANCEL_ORDER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Cancel order'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>'Do you really want to cancel this order?'
,p_confirm_style=>'danger'
,p_button_condition=>'P28_STATUS'
,p_button_condition2=>'Submitted'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1630969931455047719)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(146795793164172367884)
,p_button_name=>'CLEAR_REVIEW'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Clear feedback'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_button_condition=>'select * from orders where id = :P28_ID and (review is null or rating is null)'
,p_button_condition_type=>'NOT_EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1630968773133047707)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(146795793164172367884)
,p_button_name=>'REVIEW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save feedback'
,p_button_position=>'CREATE'
,p_button_condition=>'select * from orders where id = :P28_ID and status = ''Completed'''
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1630970673788047726)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(146795793164172367884)
,p_button_name=>'PAYMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Payment'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:CR,45:P45_ORDER_ID,P45_NEW:&P28_ID.,1'
,p_button_condition=>'select * from orders where id = :P28_ID and status = ''Waiting for payment'''
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1630972760521047747)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(146795793164172367884)
,p_button_name=>'ITEM_RECEIVED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Item Received'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'Confirm that item was received!'
,p_button_condition=>'select * from orders where id = :P28_ID and status = ''Item sent to client'''
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73170482237975707436)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(146795793164172367884)
,p_button_name=>'RETURN_OPTION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change return option'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:CR,41:P41_ORDER_ID:&P28_ID.'
,p_button_condition=>'select * from orders where id = :P28_ID and status = ''Item ready to collect'' or status = ''Waiting for payment'''
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4363497894504008416)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(146795793164172367884)
,p_button_name=>'ITEM_SENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Item sent'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>'Confirm that item was sent!'
,p_confirm_style=>'information'
,p_button_condition=>'select * from orders where id = :P28_ID and status = ''Submitted'' and delivery_option != ''Shop'''
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73417219349122412864)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(146795793164172367884)
,p_button_name=>'APPOINTMENTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Appointments'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_ORDER_ID:&P28_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from orders where id = :P28_ID and upper(delivery_option) = ''SHOP''',
'union all',
'select 1 from orders where id = :P28_ID and upper(return_option) = ''SHOP'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1630968580764047705)
,p_name=>'P28_RATING'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_item_source_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_prompt=>'Rating:'
,p_source=>'RATING'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'PLUGIN_LAURESTON.STARRATING'
,p_display_when=>'select * from orders where id = :P28_ID and status = ''Completed'''
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'30'
,p_attribute_03=>'#0245b8'
,p_attribute_04=>'5'
,p_attribute_06=>'FULL_STAR'
,p_attribute_08=>'N'
,p_attribute_11=>'NORMAL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1630968604718047706)
,p_name=>'P28_REVIEW'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_item_source_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_prompt=>'Review:'
,p_source=>'REVIEW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>254
,p_cHeight=>5
,p_display_when=>'select * from orders where id = :P28_ID and status = ''Completed'''
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:margin-right-none:t-Form-fieldContainer--boldDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24089959676166304727)
,p_name=>'P28_SPECIALIST'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_prompt=>'Specialist:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select us.name ',
'    from users us',
'    where us.id = (select specialist_id from orders where id = :P28_ID);'))
,p_display_when_type=>'EXISTS'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73170482125223707435)
,p_name=>'P28_COMMENTS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_item_source_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_prompt=>'Comment'
,p_source=>'COMMENTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>254
,p_display_when=>'P28_COMMENTS'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73417220063445412869)
,p_name=>'P28_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_item_source_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(56838342992797892025)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73417220868646412870)
,p_name=>'P28_SERVICE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_item_source_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_prompt=>'Service:'
,p_source=>'SERVICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73417221214968412871)
,p_name=>'P28_ITEM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_item_source_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_prompt=>'Item:'
,p_source=>'ITEM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>41
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73417221697757412871)
,p_name=>'P28_ADDITIONAL_INFO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_item_source_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_prompt=>'Additional Info:'
,p_source=>'ADDITIONAL_INFO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73417222048066412871)
,p_name=>'P28_DELIVERY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_item_source_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_prompt=>'Delivery:'
,p_source=>'DELIVERY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>143
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73417222435606412872)
,p_name=>'P28_RETURN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_item_source_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_prompt=>'Return:'
,p_source=>'RETURN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>150
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73417222890205412872)
,p_name=>'P28_PRICE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_item_source_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_prompt=>'Price:'
,p_source=>'PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>43
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73417223282590412872)
,p_name=>'P28_WORK_TIME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_item_source_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_prompt=>'Estimated Time:'
,p_source=>'WORK_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>41
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73417223656644412873)
,p_name=>'P28_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_item_source_plug_id=>wwv_flow_imp.id(146795786522697367878)
,p_prompt=>'Status:'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1630970139383047721)
,p_validation_name=>'Not null'
,p_validation_sequence=>10
,p_validation=>'P28_RATING'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Rating must have some value'
,p_when_button_pressed=>wwv_flow_imp.id(1630968773133047707)
,p_associated_item=>wwv_flow_imp.id(1630968580764047705)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73417228269154412876)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73417218967998412864)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73417228722641412878)
,p_event_id=>wwv_flow_imp.id(73417228269154412876)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24089959759098304728)
,p_name=>'Set Value'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24089959910096304730)
,p_event_id=>wwv_flow_imp.id(24089959759098304728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    s_value VARCHAR2(200);',
'begin',
'    select us.name || '' '' || us.last_name || '' <a href = "mailto: ''||us.email ||''">''||us.email ||''</a>''',
'    into s_value',
'    from users us',
'    where us.id = (select specialist_id from orders where id = :P28_ID);',
'',
'    :P28_SPECIALIST := s_value;',
'    exception ',
'    when NO_DATA_FOUND then',
'    null;',
'end;'))
,p_attribute_02=>'P28_ID'
,p_attribute_03=>'P28_SPECIALIST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1428260910686674604)
,p_name=>'Cancel order'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1428260891605674603)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1428261088557674605)
,p_event_id=>wwv_flow_imp.id(1428260910686674604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from orders',
'where id = :P28_ID;'))
,p_attribute_02=>'P28_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1428261121263674606)
,p_event_id=>wwv_flow_imp.id(1428260910686674604)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:27:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73170482524382707439)
,p_name=>'Refresh'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(146795793164172367884)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73170482648561707440)
,p_event_id=>wwv_flow_imp.id(73170482524382707439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146795793164172367884)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73170482782206707441)
,p_name=>'Refresh1'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(146795786522697367878)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73170482804126707442)
,p_event_id=>wwv_flow_imp.id(73170482782206707441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146795786522697367878)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1630969151287047711)
,p_name=>'Save Review'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1630968773133047707)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1630969439361047714)
,p_event_id=>wwv_flow_imp.id(1630969151287047711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'REVIEW'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1630969375946047713)
,p_event_id=>wwv_flow_imp.id(1630969151287047711)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146795786522697367878)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1630969290437047712)
,p_event_id=>wwv_flow_imp.id(1630969151287047711)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146795793164172367884)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4363497992831008417)
,p_name=>'New'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4363497894504008416)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4363498075936008418)
,p_event_id=>wwv_flow_imp.id(4363497992831008417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'SENT'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4363498126799008419)
,p_event_id=>wwv_flow_imp.id(4363497992831008417)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146795793164172367884)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4363498256677008420)
,p_event_id=>wwv_flow_imp.id(4363497992831008417)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146795786522697367878)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1630968913071047709)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Review'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update orders ',
'set review = :P28_REVIEW,',
'rating = :P28_RATING',
'where id = :P28_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1630968773133047707)
,p_process_success_message=>'Feedback saved'
,p_internal_uid=>1630968913071047709
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1630970090869047720)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Review'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update orders ',
'set review = null,',
'rating = null',
'where id = :P28_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1630969931455047719)
,p_process_success_message=>'Feedback cleared'
,p_internal_uid=>1630970090869047720
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73417227434628412876)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(146795786522697367878)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Order Information'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>73417227434628412876
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73417227814059412876)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>73417227814059412876
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4363498377917008421)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Item Sent'
,p_process_sql_clob=>'update orders set status = ''Item sent by client'' where id = :P28_ID;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SENT'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Order status successfully changed!'
,p_internal_uid=>4363498377917008421
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1630972832169047748)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Item Received'
,p_process_sql_clob=>'update orders set status = ''Completed'' where id = :P28_ID;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1630972760521047747)
,p_process_success_message=>'Order status successfully changed!'
,p_internal_uid=>1630972832169047748
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73417227022045412875)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(146795786522697367878)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Order Information'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>73417227022045412875
);
wwv_flow_imp.component_end;
end;
/
