prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_name=>'Order Parts'
,p_alias=>'ORDER-PARTS'
,p_page_mode=>'MODAL'
,p_step_title=>'Order Parts'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(56840823242651022426)
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230509074252'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73430471068976476745)
,p_plug_name=>'Order Parts'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838262780684891988)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.id, ',
'p.order_id, ',
'p.sid,',
'p.part_name, ',
'p.description, ',
'p.submission_date,',
'case nvl(sp.sid, ''No'')',
'when ''No'' then ''<span class="fa fa-clock-o u-warning-text" aria-hidden="true"> Waiting for part</span>''',
'else ''<span aria-hidden="true" class="fa fa-check-circle-o u-success-text"> Part in storage</span>''',
'end exist',
'from part_requests p, storage_parts sp',
'where p.order_id = :P35_ORDER_ID ',
'and sp.sid(+)= p.sid'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P35_ORDER_ID'
,p_prn_page_header=>'Order Parts'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(73430471100995476745)
,p_name=>'Order Parts'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No parts requsted'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:RP:P36_ID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_internal_uid=>73430471100995476745
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73430471592732476746)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73430471930076476746)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Order Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73427252172445361313)
,p_db_column_name=>'SID'
,p_display_order=>12
,p_column_identifier=>'G'
,p_column_label=>'ID'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73430472361388476747)
,p_db_column_name=>'PART_NAME'
,p_display_order=>22
,p_column_identifier=>'C'
,p_column_label=>'Part Name'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73430472765943476747)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>32
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73430473108540476747)
,p_db_column_name=>'SUBMISSION_DATE'
,p_display_order=>42
,p_column_identifier=>'E'
,p_column_label=>'Submission Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'YYYY-MM-DD'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73369030901368634723)
,p_db_column_name=>'EXIST'
,p_display_order=>52
,p_column_identifier=>'F'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(73435813545607618897)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'734358136'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SID:PART_NAME:DESCRIPTION:SUBMISSION_DATE:EXIST:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73170483141833707445)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73430471068976476745)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11:P11_ID:&P35_ORDER_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73430473686984476747)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73430471068976476745)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Request'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:36:P36_ORDER_ID:&P35_ORDER_ID.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73369030812222634722)
,p_name=>'P35_ORDER_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73430473911884476748)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(73430471068976476745)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73430474414475476748)
,p_event_id=>wwv_flow_imp.id(73430473911884476748)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73430471068976476745)
);
wwv_flow_imp.component_end;
end;
/
