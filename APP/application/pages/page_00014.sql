prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_name=>'Your Item'
,p_alias=>'YOUR-ITEM1'
,p_page_mode=>'MODAL'
,p_step_title=>'Your Item'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(56838199866992891961)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(56838375348780892046)
,p_dialog_width=>'740'
,p_dialog_max_width=>'740'
,p_dialog_chained=>'N'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230421082314'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145035771878330867386)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_imp.id(73660671483580644936)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(56838341241908892024)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145035772037336867386)
,p_plug_name=>'Your Item'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145035772080158867386)
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
 p_id=>wwv_flow_imp.id(73614195523100823810)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(145035772080158867386)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73614195930723823811)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(145035772080158867386)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(56838345573505892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(73614198223497823818)
,p_branch_name=>'Go To Page 15'
,p_branch_action=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(73614195930723823811)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73369033402615634748)
,p_name=>'P14_SERVICE_ID'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(145035772037336867386)
,p_prompt=>'Service: '
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('select name || '' - '' || price || ''\20AC'' d, id r from services where item_id = :P14_ITEM_ID order by name;')
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Choose Service -'
,p_lov_cascade_parent_items=>'P14_ITEM_ID'
,p_ajax_items_to_submit=>'P14_ITEM_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(56838344278130892026)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73614194091879823809)
,p_name=>'P14_ITEM_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(145035772037336867386)
,p_prompt=>'Item Id'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select supplier || '' '' || model d , id r from items '
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(56838344278130892026)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73614194491564823809)
,p_name=>'P14_ADDITIONAL_INFO'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(145035772037336867386)
,p_prompt=>'Additional information (color,  storage capacity etc.),'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>99
,p_field_template=>wwv_flow_imp.id(56838344278130892026)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73614194884384823810)
,p_name=>'P14_DESCRIPTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(145035772037336867386)
,p_prompt=>'Problem description'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>200
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(56838342992797892025)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73614196342117823814)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73614195523100823810)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73614196818374823816)
,p_event_id=>wwv_flow_imp.id(73614196342117823814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73614197256640823816)
,p_name=>'Refresh Image'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_ITEM_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73614197711567823817)
,p_event_id=>wwv_flow_imp.id(73614197256640823816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_IMAGE'
);
wwv_flow_imp.component_end;
end;
/
