prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_name=>'Part'
,p_alias=>'ADD-PART'
,p_page_mode=>'MODAL'
,p_step_title=>'Part'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(56838170694133891946)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(56838375470517892046)
,p_dialog_width=>'500'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230509085330'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73600355502402328553)
,p_plug_name=>'Add Part'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.ID,',
'       i.supplier || '' '' || i.model item_id,',
'       s.PART_NAME,',
'       s.DESCRIPTION,',
'       s.QUANTITY,',
'       s.PRICE,',
'       o.sid order_id,',
'       s.SID',
'  from STORAGE_PARTS s, items i, orders o',
'  where i.id = s.item_id',
'  and o.id(+) = s.order_id'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73600361410442328558)
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
 p_id=>wwv_flow_imp.id(73600361830431328559)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73600361410442328558)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73600363277760328560)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(73600361410442328558)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P8_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73600363648345328560)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(73600361410442328558)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P8_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73600364089668328560)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(73600361410442328558)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P8_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73600355871408328554)
,p_name=>'P8_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73600355502402328553)
,p_item_source_plug_id=>wwv_flow_imp.id(73600355502402328553)
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
 p_id=>wwv_flow_imp.id(73600356282202328554)
,p_name=>'P8_ITEM_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(73600355502402328553)
,p_item_source_plug_id=>wwv_flow_imp.id(73600355502402328553)
,p_prompt=>'Item'
,p_source=>'ITEM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select supplier || '' '' || model from items',
'order by  category, supplier'))
,p_cSize=>30
,p_cMaxlength=>41
,p_field_template=>wwv_flow_imp.id(56838344278130892026)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'7'
,p_attribute_09=>'1'
,p_attribute_10=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73600356677982328555)
,p_name=>'P8_PART_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(73600355502402328553)
,p_item_source_plug_id=>wwv_flow_imp.id(73600355502402328553)
,p_prompt=>'Part Name'
,p_source=>'PART_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(56838344278130892026)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73600357029577328555)
,p_name=>'P8_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(73600355502402328553)
,p_item_source_plug_id=>wwv_flow_imp.id(73600355502402328553)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(56838342992797892025)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73600357464159328555)
,p_name=>'P8_QUANTITY'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(73600355502402328553)
,p_item_source_plug_id=>wwv_flow_imp.id(73600355502402328553)
,p_prompt=>'Quantity'
,p_source=>'QUANTITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(56838344278130892026)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73600357841631328556)
,p_name=>'P8_PRICE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(73600355502402328553)
,p_item_source_plug_id=>wwv_flow_imp.id(73600355502402328553)
,p_prompt=>unistr('Price (\20AC)')
,p_source=>'PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(56838344278130892026)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73600358251854328556)
,p_name=>'P8_ORDER_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(73600355502402328553)
,p_item_source_plug_id=>wwv_flow_imp.id(73600355502402328553)
,p_prompt=>'Order ID'
,p_source=>'ORDER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select o.sid from orders o, services s ',
'where s.item_id = (select id from items where upper(:P8_ITEM_ID) = upper(supplier || '' '' || model))',
'and o.service_id = s.id',
'order by o.submission_date'))
,p_lov_cascade_parent_items=>'P8_ITEM_ID'
,p_ajax_items_to_submit=>'P8_ITEM_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(56838342992797892025)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'7'
,p_attribute_09=>'1'
,p_attribute_10=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73600358658074328556)
,p_name=>'P8_SID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(73600355502402328553)
,p_item_source_plug_id=>wwv_flow_imp.id(73600355502402328553)
,p_prompt=>'Part ID'
,p_source=>'SID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.sid d, p.sid r from part_requests p where p.order_id = (select id from orders where upper(:P8_ORDER_ID) = upper(sid))',
'and not exists (',
'select * from storage_parts sp',
'where sp.sid = p.sid)'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P8_ORDER_ID'
,p_ajax_items_to_submit=>'P8_ORDER_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(56838342992797892025)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73600361949319328559)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73600361830431328559)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73600362717292328560)
,p_event_id=>wwv_flow_imp.id(73600361949319328559)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73369032015169634734)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'n_count number;',
'begin',
'    if :P8_ORDER_ID is not null then',
'        insert into storage_parts( sid, item_id ,order_id, part_name, description, quantity, price)',
'        select  :P8_SID, i.id, o.id, :P8_PART_NAME, :P8_DESCRIPTION, :P8_QUANTITY, :P8_PRICE',
'        from items i, orders o',
'        where upper(:P8_ITEM_ID) = upper(i.supplier || '' '' || i.model)',
'        and upper(:P8_ORDER_ID)= upper(o.sid);',
'    else',
'        insert into storage_parts(item_id ,order_id, part_name, description, quantity, price)',
'        select  id, null, :P8_PART_NAME, :P8_DESCRIPTION, :P8_QUANTITY, :P8_PRICE',
'        from items',
'        where upper(:P8_ITEM_ID) = upper(supplier || '' '' || model);',
'    end if;',
'',
'    select count(*)',
'    into n_count',
'    from part_requests p',
'    where not exists (select * from storage_parts where sid = p.sid)',
'    and p.order_id = (SELECT id from orders where upper(:P8_ORDER_ID) = upper(sid));',
'',
'      if n_count = 0 then',
'        update orders ',
'        set status = ''In progress''',
'        where id = (SELECT id from orders where upper(:P8_ORDER_ID) = upper(sid));',
'    end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(73600364089668328560)
,p_internal_uid=>73369032015169634734
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73369032160972634735)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    n_item_id number;',
'    n_order_id number;',
'    n_count number;',
'begin',
'    select id ',
'    into n_item_id',
'    from items ',
'    where upper(:P8_ITEM_ID) = upper(supplier || '' '' || model);',
'',
'    if :P8_ORDER_ID is not null then',
'        select id ',
'        into n_order_id',
'        from orders ',
'        where upper(:P8_ORDER_ID) = upper(sid);',
'    end if;',
'',
'    update storage_parts',
'    set sid = :P8_SID, ',
'    item_id = n_item_id,',
'    order_id = n_order_id, ',
'    part_name = :P8_PART_NAME, ',
'    description = :P8_DESCRIPTION, ',
'    quantity = :P8_QUANTITY, ',
'    price = :P8_PRICE',
'    where id = :P8_ID;',
'',
'',
'    ',
'    select count(*)',
'    into n_count',
'    from part_requests p',
'    where not exists (select * from storage_parts where sid = p.sid)',
'    and p.order_id = (SELECT id from orders where upper(:P8_ORDER_ID) = upper(sid));',
'',
'      if n_count = 0 then',
'        update orders ',
'        set status = ''In progress''',
'        where id = (SELECT id from orders where upper(:P8_ORDER_ID) = upper(sid));',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(73600363648345328560)
,p_internal_uid=>73369032160972634735
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73369032235283634736)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'n_count number;',
'begin',
'    select count(*)',
'    into n_count',
'    from part_requests p',
'    where p.order_id = (SELECT id from orders where upper(:P8_ORDER_ID) = upper(sid) and status != ''Completed''); ',
'',
'    if n_count > 0 then',
'        apex_error.add_error',
'        (p_message               => ''Part is associated with active order'',',
'        p_display_location      => apex_error.c_inline_in_notification',
'        );',
'    else',
'        delete from storage_parts',
'        where id = :P8_ID;',
'',
'        select count(*)',
'        into n_count',
'        from part_requests p',
'        where not exists (select * from storage_parts where sid = p.sid)',
'        and p.order_id = (SELECT id from orders where upper(:P8_ORDER_ID) = upper(sid));',
'',
'          if n_count > 0 then',
'            update orders ',
'            set status = ''Waiting for parts''',
'            where id = (SELECT id from orders where upper(:P8_ORDER_ID) = upper(sid));',
'        end if;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(73600363277760328560)
,p_internal_uid=>73369032235283634736
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73600365277108328561)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>73600365277108328561
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73600364406501328560)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(73600355502402328553)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Add Part'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>73600364406501328560
);
wwv_flow_imp.component_end;
end;
/
