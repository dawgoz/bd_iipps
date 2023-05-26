prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
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
 p_id=>40
,p_name=>'Registration Confirmation'
,p_alias=>'REGISTRATION-CONFIRMATION'
,p_step_title=>'Registration Confirmation'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'16'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230427090944'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73170483629990707450)
,p_plug_name=>'Account verification'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(56838272500189891993)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>3
,p_plug_display_column=>5
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4363497557874008413)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73170483629990707450)
,p_button_name=>'VERIFY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Verify'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(4363496955357008407)
,p_branch_action=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73170483551905707449)
,p_name=>'P40_EMAIL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73170483629990707450)
,p_prompt=>'Email:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-lg:margin-right-none:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4363496688658008404)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'v_email nvarchar2(50);',
'',
'begin',
'',
'select EMAIL into v_email  from USERs where upper(EMAIL) = upper(:P40_EMAIL);',
'',
'if v_email is not null then',
'',
'update users set active = 1 where upper(EMAIL) = upper(:P40_EMAIL);',
'',
'else ',
'   apex_error.add_error(p_message            => ''Verification unsuccessfull''',
'                            ,p_display_location   => apex_error.c_inline_in_notification); ',
'                            end if;',
'                            end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4363497557874008413)
,p_process_success_message=>'Verification successfull! Please log in! '
,p_internal_uid=>4363496688658008404
);
wwv_flow_imp.component_end;
end;
/
