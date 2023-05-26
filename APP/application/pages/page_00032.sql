prompt --application/pages/page_00032
begin
--   Manifest
--     PAGE: 00032
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
 p_id=>32
,p_name=>'Completion comment'
,p_alias=>'COMPLETION-COMMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Completion comment'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(56840823242651022426)
,p_dialog_width=>'730'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230509094301'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1629571226168509836)
,p_button_sequence=>30
,p_button_name=>'CONFIRM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'t-Button--success:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Complete order'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2067632410145472561)
,p_name=>'P32_COMMENT'
,p_is_required=>true
,p_item_sequence=>20
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>40
,p_cMaxlength=>250
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(56838342992797892025)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2067632472249472562)
,p_name=>'P32_ORDER_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1630968447948047704)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'P32_COMMENT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter comment'
,p_associated_item=>wwv_flow_imp.id(2067632410145472561)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1629572389841509837)
,p_name=>'Complete'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1629571226168509836)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1629572883527509838)
,p_event_id=>wwv_flow_imp.id(1629572389841509837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'COMPLETE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1629573318314509838)
,p_event_id=>wwv_flow_imp.id(1629572389841509837)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1630968304370047703)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Complete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    n_shop number;',
'begin',
'    select count(*)',
'    into n_shop',
'    from orders',
'    where id = :P32_ORDER_ID',
'    and return_option = ''Shop'';',
'',
'    if n_shop = 1 then ',
'        update orders',
'        set status = ''Item ready to collect'',',
'        comments = :P32_COMMENT,',
'        specialist_id = null',
'        where id = :P32_ORDER_ID;',
'    else',
'        update orders',
'        set status = ''Waiting for payment'',',
'        comments = :P32_COMMENT,',
'        specialist_id = null',
'        where id = :P32_ORDER_ID;',
'    end if;',
'',
'    for x in (select * from storage_parts where order_id =:P32_ORDER_ID) ',
'    loop',
'    if x.quantity = 1 then',
'        delete from storage_parts',
'        where id = x.id;',
'    else',
'        update storage_parts',
'        set quantity = x.quantity - 1,',
'        order_id = null,',
'        sid  = null',
'        where id = x.id;',
'    end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'COMPLETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Order completed'
,p_internal_uid=>1630968304370047703
);
wwv_flow_imp.component_end;
end;
/
