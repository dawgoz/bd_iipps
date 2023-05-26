prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'Assign Specialist'
,p_alias=>'ASSIGN-SPECIALIST'
,p_page_mode=>'MODAL'
,p_step_title=>'Assign Specialist'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.order{',
'        margin-left: 70px !important;',
'    margin-top: -64px !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(56838191248570891957)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(61647200996464177234)
,p_dialog_width=>'500'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230427100735'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71450215808790173234)
,p_plug_name=>'Assign Specialist'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4363499157154008429)
,p_plug_name=>'Warning'
,p_parent_plug_id=>wwv_flow_imp.id(71450215808790173234)
,p_icon_css_classes=>'fa-warning'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838239512870891979)
,p_plug_display_sequence=>10
,p_plug_source=>'Unable to assign responsible user while item is not received in the shop'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>'select * from orders where status = ''Item received in shop'' and id = :P6_ORDER_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71450217019786173246)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838209349165891966)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71450216296484173238)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(71450217019786173246)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71450216537114173241)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(71450217019786173246)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(71450217106413173247)
,p_branch_name=>'Redirect 3'
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RR,::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71450215933023173235)
,p_name=>'P6_ORDER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(71450215808790173234)
,p_item_default=>'select sid from orders where id = :P6_ORDER_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Order ID:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_colspan=>4
,p_grid_column=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71450216042056173236)
,p_name=>'P6_ORDER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(71450215808790173234)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71450216168890173237)
,p_name=>'P6_SPECIALIST'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(71450215808790173234)
,p_prompt=>'Specialist'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select u.name || '' '' || u.last_name || '' ('' || (select count(*) from orders where specialist_id = u.id) || '')'', u.id  from users u where upper(user_role) = ''SPECIALIST'''
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Unassigned'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'select * from orders where status = ''Item received in shop'' and id = :P6_ORDER_ID'
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_imp.id(56838342992797892025)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71450216321671173239)
,p_name=>'Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71450216296484173238)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71450216405990173240)
,p_event_id=>wwv_flow_imp.id(71450216321671173239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Close Dialog'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71450216677172173242)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Assign Specialist'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P6_SPECIALIST IS NULL then',
'        update orders ',
'        set specialist_id = :P6_SPECIALIST,',
'        status = ''Submitted''',
'        where id = :P6_ORDER_ID;',
'    else',
'        update orders ',
'        set specialist_id = :P6_SPECIALIST,',
'        status = ''Specialist assigned''',
'        where id = :P6_ORDER_ID;',
'    end if;',
'    update appointments ',
'    set specialist_id = :P6_SPECIALIST',
'    where order_id = :P6_ORDER_ID;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>71450216677172173242
);
wwv_flow_imp.component_end;
end;
/
