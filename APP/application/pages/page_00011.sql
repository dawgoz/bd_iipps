prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_name=>'Order Information'
,p_alias=>'ORDER-INFORMATION'
,p_page_mode=>'MODAL'
,p_step_title=>'Order Information'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230508092112'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73378568175644955019)
,p_plug_name=>'Order Information'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select o.id,',
'u.name || '' '' || u.last_name client,',
's.name as service,',
'i.supplier || '' '' || i.model item,',
'o.additional_info additional_info,',
'case o.delivery_option',
'    when ''Shop'' then ''Item will be delivered to shop by client at '' || to_char(ad.date_and_time, ''YYYY-MM-DD HH24:MI'')',
'    when ''Post Box'' then ''Item will be delivered using Post Box from '' || o.DELIVERY_ADDRESS ',
'    when ''Courier'' then ''Item will be delivered using Courier from '' || o.DELIVERY_ADDRESS',
'end  as delivery,',
'case o.RETURN_OPTION ',
'    when ''Shop'' then ''Item will be colected from shop by client'' ||  to_char(ar.date_and_time, ''YYYY-MM-DD HH24:MI'')',
'    when ''Post Box'' then ''Item will be returned to client using Post Box to '' || o.RETURN_ADDRESS ',
'    when ''Courier'' then ''Item will be returned to client using Courier to '' || o.RETURN_ADDRESS',
'    when ''Null'' then ''Item return will be decided later''',
'end  as return,',
'o.price price,',
' s.TIME_IN_HOURS || '' hours'' work_time,',
' o.STATUS,',
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
 p_id=>wwv_flow_imp.id(73378574817119955025)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838209349165891966)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73378575237232955025)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73378574817119955025)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4363498408804008422)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73378574817119955025)
,p_button_name=>'ITEM_RECEIVED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Item received'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'Confirm that item is received in the shop!'
,p_confirm_style=>'information'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''true'' from orders o where  o.id = :P11_ID and o.status = ''Item sent by client''',
'union all',
'select ''true'' from orders o where  o.id = :P11_ID and o.delivery_option = ''Shop'' and o.status = ''Submitted'''))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(61647200996464177234)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1428264168759674636)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(73378574817119955025)
,p_button_name=>'ITEM_SENT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Item sent'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'Confirm that item is sent to client!'
,p_confirm_style=>'information'
,p_button_condition=>'select ''true'' from orders o where  o.id = :P11_ID and o.status = ''Payment completed'' and o.return_option != ''Shop'''
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(61647200996464177234)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1630970715911047727)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(73378574817119955025)
,p_button_name=>'ITEM_RETURNED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Item returned'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'Confirm that item is returned to client!'
,p_confirm_style=>'information'
,p_button_condition=>'select ''true'' from orders o where  o.id = :P11_ID and o.status = ''Item ready to collect'''
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(61647200996464177234)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73427251562066361307)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(73378574817119955025)
,p_button_name=>'REQUEST'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Requested parts'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::P35_ORDER_ID:&P11_ID.'
,p_button_condition=>'select ''true'' from orders o where  o.id = :P11_ID and o.status != ''Specialist assigned'';'
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(56840823242651022426)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73373015087846248642)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(73378574817119955025)
,p_button_name=>'APPOINTMENTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Appointments'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::P18_ORDER_ID:&P11_ID.'
,p_button_condition=>'select ''true'' from appointments a, orders o where a.order_id = :P11_ID and o.id = :P11_ID and o.status != ''Specialist assigned'';'
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(438059848993962716)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(73378574817119955025)
,p_button_name=>'CONFIRM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirm order'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'select ''true'' from orders where id  = :P11_ID and status = ''Specialist assigned'';'
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(56840823242651022426)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(438060380302962721)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(73378574817119955025)
,p_button_name=>'REJECT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reject order'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:CR,34:P34_ORDER_ID:&P11_ID.'
,p_button_condition=>'select ''true'' from orders where id  = :P11_ID and status = ''Specialist assigned'';'
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(56840823242651022426)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(438062648400962744)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(73378574817119955025)
,p_button_name=>'COMPLETE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Complete order'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:CR,32:P32_ORDER_ID:&P11_ID.'
,p_button_condition=>'select ''true'' from orders where id  = :P11_ID and status = ''In progress'';'
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(56840823242651022426)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1428263854661674633)
,p_name=>'P11_RATING'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_item_source_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_prompt=>'Rating:'
,p_source=>'RATING'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'PLUGIN_LAURESTON.STARRATING'
,p_display_when=>'P11_RATING'
,p_display_when_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:margin-right-none:t-Form-fieldContainer--boldDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'30'
,p_attribute_03=>'#0245b8'
,p_attribute_04=>'5'
,p_attribute_06=>'FULL_STAR'
,p_attribute_08=>'N'
,p_attribute_11=>'NORMAL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1428263905792674634)
,p_name=>'P11_REVIEW'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_item_source_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_prompt=>'Review:'
,p_source=>'REVIEW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>254
,p_display_when=>'P11_REVIEW'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:margin-right-none:t-Form-fieldContainer--boldDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1630968254265047702)
,p_name=>'P11_COMMENTS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_item_source_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_prompt=>'Comment'
,p_source=>'COMMENTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>254
,p_cHeight=>5
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from orders where id = :P11_ID and comments is not null-- (status = ''Service completed'' or status = ''Rejected'')',
''))
,p_display_when_type=>'EXISTS'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73373011174628248603)
,p_name=>'P11_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_item_source_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_prompt=>'Status:'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'#DEFAULT#:margin-left-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73378568547416955020)
,p_name=>'P11_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_item_source_plug_id=>wwv_flow_imp.id(73378568175644955019)
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
 p_id=>wwv_flow_imp.id(73378568937402955021)
,p_name=>'P11_CLIENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_item_source_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_prompt=>'Client:'
,p_source=>'CLIENT'
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
 p_id=>wwv_flow_imp.id(73378569399231955021)
,p_name=>'P11_SERVICE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_item_source_plug_id=>wwv_flow_imp.id(73378568175644955019)
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
 p_id=>wwv_flow_imp.id(73378569785238955021)
,p_name=>'P11_ITEM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_item_source_plug_id=>wwv_flow_imp.id(73378568175644955019)
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
 p_id=>wwv_flow_imp.id(73378570189506955021)
,p_name=>'P11_ADDITIONAL_INFO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_item_source_plug_id=>wwv_flow_imp.id(73378568175644955019)
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
 p_id=>wwv_flow_imp.id(73378570559823955022)
,p_name=>'P11_DELIVERY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_item_source_plug_id=>wwv_flow_imp.id(73378568175644955019)
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
 p_id=>wwv_flow_imp.id(73378570929865955022)
,p_name=>'P11_RETURN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_item_source_plug_id=>wwv_flow_imp.id(73378568175644955019)
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
 p_id=>wwv_flow_imp.id(73378571376438955022)
,p_name=>'P11_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_item_source_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_prompt=>'Price:'
,p_source=>'PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
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
 p_id=>wwv_flow_imp.id(73378571703597955023)
,p_name=>'P11_WORK_TIME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_item_source_plug_id=>wwv_flow_imp.id(73378568175644955019)
,p_prompt=>'Estimated Time:'
,p_source=>'WORK_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>46
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73378575372583955025)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73378575237232955025)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73378576101688955026)
,p_event_id=>wwv_flow_imp.id(73378575372583955025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(438059947990962717)
,p_name=>'Confirm order'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(438059848993962716)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(438060012312962718)
,p_event_id=>wwv_flow_imp.id(438059947990962717)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRM'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(438060125749962719)
,p_event_id=>wwv_flow_imp.id(438059947990962717)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73378568175644955019)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(438060282944962720)
,p_event_id=>wwv_flow_imp.id(438059947990962717)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73378574817119955025)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(438061323811962731)
,p_name=>'Refresh'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(73378568175644955019)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(438061442651962732)
,p_event_id=>wwv_flow_imp.id(438061323811962731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73378574817119955025)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(438061588583962733)
,p_event_id=>wwv_flow_imp.id(438061323811962731)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73378568175644955019)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(438061662976962734)
,p_name=>'Refresh2'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(73378574817119955025)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(438061726791962735)
,p_event_id=>wwv_flow_imp.id(438061662976962734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73378574817119955025)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(438061879608962736)
,p_event_id=>wwv_flow_imp.id(438061662976962734)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73378568175644955019)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4363498541721008423)
,p_name=>'New'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4363498408804008422)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4363498609529008424)
,p_event_id=>wwv_flow_imp.id(4363498541721008423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'RECEIVED'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4363498898167008426)
,p_event_id=>wwv_flow_imp.id(4363498541721008423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73378574817119955025)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4363498703854008425)
,p_event_id=>wwv_flow_imp.id(4363498541721008423)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73378568175644955019)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73170480424668707418)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Confirm'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update orders',
'set status = ''In progress''',
'where id = :P11_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRM'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Order confirmed'
,p_internal_uid=>73170480424668707418
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73378578269768955027)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(73378568175644955019)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Order Information'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>73378578269768955027
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73378578624541955027)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>73378578624541955027
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4363498900375008427)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Received'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update orders',
'set status = ''Item received in shop''',
'where id = :P11_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4363498408804008422)
,p_process_success_message=>'Order status successfully changed!'
,p_internal_uid=>4363498900375008427
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1428264219290674637)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Sent'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update orders',
'set status = ''Item sent to client''',
'where id = :P11_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1428264168759674636)
,p_process_success_message=>'Order status successfully changed!'
,p_internal_uid=>1428264219290674637
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1630970883841047728)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Returned'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update orders',
'set status = ''Completed''',
'where id = :P11_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1630970715911047727)
,p_process_success_message=>'Order status successfully changed!'
,p_internal_uid=>1630970883841047728
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73378577870680955027)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(73378568175644955019)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Order Information'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>73378577870680955027
);
wwv_flow_imp.component_end;
end;
/
