prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_name=>'Order Overview'
,p_alias=>'ORDER-OVERVIEW'
,p_page_mode=>'MODAL'
,p_step_title=>'Order Overview'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(56838199866992891961)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(56838375348780892046)
,p_dialog_height=>'400'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230509070852'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71421593054032043606)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_imp.id(71421577852794043596)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(56838341241908892024)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71421593176783043606)
,p_plug_name=>'Order Overview'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71421593264694043606)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838209349165891966)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71421594652263043607)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(71421593264694043606)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71421594709285043607)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(71421593264694043606)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finish'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71421594823085043607)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(71421593264694043606)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838344739143892027)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(73170480871870707422)
,p_branch_action=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:27::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(71421596596113043608)
,p_branch_name=>'Go To Page 15'
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(71421594823085043607)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73122142465678042206)
,p_name=>'P16_ITEM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(71421593176783043606)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item:'
,p_source=>'select supplier || '' '' || model from items where id = :P12_ITEM;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73122142590658042207)
,p_name=>'P16_ADDITIONAL_INFO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(71421593176783043606)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Additional info:'
,p_source=>'P12_ADDITIONAL_INFO'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73122142679196042208)
,p_name=>'P16_DELIVERY_OPTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(71421593176783043606)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item delivery:'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'case :P15_DELIVERY_OPTION ',
'    when ''Shop'' then ''Item will be delivered to shop by client at '' || to_char(to_date(:P15_APPOINTMENT_DATE_DELIVERY, ''YYYY-MM-DD''), ''YYYY-MM-DD'') || '' '' || :P15_DELIVERY_TIME ',
'    when ''Post Box'' then ''Item will be delivered using Post Box from '' || :P15_DELIVERY_ADDRESS ',
'    when ''Courier'' then ''Item will be delivered using Courier from '' || :P15_DELIVERY_ADDRESS',
'end  as delivery',
'from dual;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73122143079888042212)
,p_name=>'P16_RETURN_OPTION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(71421593176783043606)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item return:'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'case :P15_RETURN_OPTION ',
'    when ''Shop'' then ''Item will be colected from shop by client''',
'    when ''Post Box'' then ''Item will be returned to client using Post Box to '' || :P15_RETURN_ADDRESS ',
'    when ''Courier'' then ''Item will be returned to client using Courier to '' || :P15_RETURN_ADDRESS',
'    when ''Null'' then ''Item return will be decided later''',
'end  as return',
'from dual;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73122143181515042213)
,p_name=>'P16_PRICE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(71421593176783043606)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Price:'
,p_source=>unistr('30\20AC')
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73122143265309042214)
,p_name=>'P16_ESTIMATED_TIME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(71421593176783043606)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estimated time:'
,p_source=>'3 Business days'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73122143345598042215)
,p_name=>'P16_CONFIRM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(71421593176783043606)
,p_item_default=>'0'
,p_prompt=>'Confirm order'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(56838343094543892026)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--indicatorAsterisk:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73122143575468042217)
,p_name=>'P16_SERVICE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(71421593176783043606)
,p_prompt=>'Service type:'
,p_source=>'Diagnostic'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(73122143469762042216)
,p_validation_name=>'Confirm Order'
,p_validation_sequence=>10
,p_validation=>'P16_CONFIRM'
,p_validation2=>'0'
,p_validation_type=>'ITEM_IN_VALIDATION_NOT_EQ_STRING2'
,p_error_message=>'Please confirm the order'
,p_associated_item=>wwv_flow_imp.id(73122143345598042215)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71421595078311043607)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71421594652263043607)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71421595839638043608)
,p_event_id=>wwv_flow_imp.id(71421595078311043607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73122143649252042218)
,p_name=>'Set value'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73122143795182042219)
,p_event_id=>wwv_flow_imp.id(73122143649252042218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Set value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_CONFIRM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70428342657307477950)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Order'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    n_user_id NUMBER;',
'    s_sid VARCHAR2(254);',
'    n_order_id NUMBER;',
'    s_email varchar2(100);',
'BEGIN',
'    SELECT id',
'    INTO   n_user_id',
'    FROM   users',
'    WHERE  user_name = :APP_USER;',
'',
'    SELECT  ''D'' || fnc_get_sid(to_number(to_char(sysdate, ''YYYYMMDDhhmiss''))+n_user_id)',
'    INTO    s_sid',
'    FROM    dual;',
'',
'    SELECT  ISEQ$$_182704781.nextval ',
'    INTO    n_order_id',
'    FROM    dual;',
'',
'    INSERT INTO orders',
'              (',
'                  id,',
'                  client_id,',
'                  status,',
'                  submission_date,',
'                  price,',
'                  description,',
'                  delivery_option,',
'                  delivery_address,',
'                  return_option,',
'                  return_address,',
'                  additional_info,',
'                  sid,',
'                  service_id',
'              )',
'    SELECT n_order_id,',
'        n_user_id,',
'        ''Submitted'',',
'        sysdate,',
'        price,',
'        :P12_DESCRIPTION,',
'        :P15_DELIVERY_OPTION,',
'        :P15_DELIVERY_ADDRESS,',
'        :P15_RETURN_OPTION,',
'        :P15_RETURN_ADDRESS,',
'        :P12_ADDITIONAL_INFO,',
'        s_sid,',
'        id',
'    FROM   services where item_id = :P12_ITEM and is_diagnostic = 1;',
'commit;',
'      ',
'    IF :P15_DELIVERY_OPTION = ''Shop'' THEN',
'        INSERT INTO appointments',
'            (client_id,',
'            order_id,',
'            type,',
'            date_and_time,',
'            submission_date)',
'        SELECT  n_user_id,',
'                n_order_id,',
'                ''Delivery'',',
'                to_timestamp(to_char(to_date(:P15_APPOINTMENT_DATE_DELIVERY, ''YYYY-MM-DD''), ''YYYY-MM-DD'') ||:P15_DELIVERY_TIME',
'                           , ''YYYY-MM-DD HH24:MI''), ',
'                SYSDATE',
'        FROM    dual;',
'',
'    ELSE',
'        null;      ',
'    END IF;',
'    commit;',
'      select email into s_email from users where id = n_user_id; ',
'        send_order_email(s_email, n_order_id);',
'        send_new_order_email(n_order_id);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(71421594709285043607)
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Order successfully placed!',
'Receipt is was sent to your email!'))
,p_internal_uid=>70428342657307477950
);
wwv_flow_imp.component_end;
end;
/
