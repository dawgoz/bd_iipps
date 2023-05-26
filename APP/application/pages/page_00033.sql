prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
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
 p_id=>33
,p_name=>'Assigned Orders'
,p_alias=>'ASSIGNED-ORDERS'
,p_step_title=>'Assigned Orders'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(56838173507860891949)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(56840823242651022426)
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'22'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230421122014'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73427848106611877481)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838284957836891998)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(56838169867023891945)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(56838347038437892028)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(73427848709246877484)
,p_name=>'Search Results'
,p_template=>wwv_flow_imp.id(56838272500189891993)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select o.ID,',
'       o.SID,',
'       case s.is_diagnostic',
'       when 1 then ''Diagnostic''',
'       else  ''Other Service'' end type,',
'       i.supplier item_supplier,',
'       i.model item_model,',
'       i.supplier || '' '' || i.model  || '' ('' || o.ADDITIONAL_INFO || '')'' item,',
'       u.name || '' '' || u.last_name client,',
'       case nvl(o.specialist_id, 1) when 1 then ''Unassigned''',
'       else us.name || '' '' || us.last_name',
'       end specialist,',
'       case nvl(o.specialist_id, 1) when 1 then ''Unassigned''',
'       else ''Assigned''',
'       end responsible_user,',
'       specialist_id,',
'       o.STATUS status1,',
'        case o.STATUS',
'        when ''Rejected'' then ''<span class="fa fa-ban u-danger-text" aria-hidden="true"> </span> Rejected''',
'        when ''Submitted'' then ''<span aria-hidden="true" class="fa fa-plus-circle-o u-success-text"> </span> Submitted''',
'        else ''<span aria-hidden="true" class="fa fa-clock-o u-warning-text"> </span> ''|| o.STATUS',
'        end status,',
'       to_char(o.SUBMISSION_DATE, ''YYYY-MM-DD'') submission_date,',
'       o.DELIVERY_OPTION,',
'       o.RETURN_OPTION,',
'        (select ',
'        count(nvl(sp.sid, ''No'')) ',
'        from part_requests p, storage_parts sp',
'        where p.order_id = o.id ',
'        and sp.sid(+)= p.sid',
'        and sp.sid is not null) || ''/'' ||(select ',
'        count(nvl(sp.sid, ''No'')) ',
'        from part_requests p, storage_parts sp',
'        where p.order_id = o.id ',
'        and sp.sid(+)= p.sid) as qnt',
'  from ORDERS o, items i, users u, users us, services s',
'  where s.item_id = i.id',
'  and o.CLIENT_ID = u.id',
'  and  us.id(+) = o.SPECIALIST_Id',
'  and s.id = o.service_id',
'  and o.specialist_id = (select id from users where user_name = :APP_USER)'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(56838310444671892010)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73427853991897877491)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73427854360415877491)
,p_query_column_id=>2
,p_column_alias=>'SID'
,p_column_display_sequence=>2
,p_column_heading=>'ID'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73427854734307877491)
,p_query_column_id=>3
,p_column_alias=>'TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73427855191259877492)
,p_query_column_id=>4
,p_column_alias=>'ITEM_SUPPLIER'
,p_column_display_sequence=>33
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73427855563212877492)
,p_query_column_id=>5
,p_column_alias=>'ITEM_MODEL'
,p_column_display_sequence=>43
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73427855967211877492)
,p_query_column_id=>6
,p_column_alias=>'ITEM'
,p_column_display_sequence=>13
,p_column_heading=>'Item'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73427856397677877492)
,p_query_column_id=>7
,p_column_alias=>'CLIENT'
,p_column_display_sequence=>23
,p_column_heading=>'Client'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73427856776033877493)
,p_query_column_id=>8
,p_column_alias=>'SPECIALIST'
,p_column_display_sequence=>63
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73427857199357877493)
,p_query_column_id=>9
,p_column_alias=>'RESPONSIBLE_USER'
,p_column_display_sequence=>73
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73427857517665877493)
,p_query_column_id=>10
,p_column_alias=>'SPECIALIST_ID'
,p_column_display_sequence=>83
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1428261870555674613)
,p_query_column_id=>11
,p_column_alias=>'STATUS1'
,p_column_display_sequence=>173
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73427857900582877493)
,p_query_column_id=>12
,p_column_alias=>'STATUS'
,p_column_display_sequence=>143
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73427858388302877493)
,p_query_column_id=>13
,p_column_alias=>'SUBMISSION_DATE'
,p_column_display_sequence=>133
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73427858782639877494)
,p_query_column_id=>14
,p_column_alias=>'DELIVERY_OPTION'
,p_column_display_sequence=>113
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73427251409546361306)
,p_query_column_id=>15
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>163
,p_column_heading=>'&nbsp;'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::P11_ID:#ID#'
,p_column_linktext=>'<span aria-label="Order Information"><span class="fa fa-info-circle-o" aria-hidden="true" title="Order Information"></span></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73427859157029877494)
,p_query_column_id=>15
,p_column_alias=>'RETURN_OPTION'
,p_column_display_sequence=>123
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73427252321435361315)
,p_query_column_id=>16
,p_column_alias=>'QNT'
,p_column_display_sequence=>153
,p_column_heading=>'Recieved Parts'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73427848870248877484)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(56838272500189891993)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(73427848709246877484)
,p_landmark_label=>'Filters'
,p_attribute_01=>'N'
,p_attribute_06=>'E'
,p_attribute_08=>'#active_facets'
,p_attribute_09=>'Y'
,p_attribute_12=>'10000'
,p_attribute_13=>'Y'
,p_attribute_15=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73427852863425877489)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(56838209349165891966)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73427853363506877490)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73427852863425877489)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(56838345573505892027)
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&APP_SESSION.::&DEBUG.:RR,33::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73427849392372877485)
,p_name=>'P33_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73427848870248877484)
,p_prompt=>'Search'
,p_source=>'SID,TYPE,ITEM_SUPPLIER,ITEM_MODEL,ITEM,CLIENT,SPECIALIST,RESPONSIBLE_USER,STATUS,SUBMISSION_DATE,DELIVERY_OPTION,RETURN_OPTION'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_attribute_04=>'N'
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73427849703530877487)
,p_name=>'P33_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73427848870248877484)
,p_prompt=>'Type'
,p_source=>'TYPE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_attribute_01=>'1'
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73427850194442877488)
,p_name=>'P33_ITEM_SUPPLIER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(73427848870248877484)
,p_prompt=>'Item Supplier'
,p_source=>'ITEM_SUPPLIER'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73427850529764877488)
,p_name=>'P33_ITEM_MODEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(73427848870248877484)
,p_prompt=>'Item Model'
,p_source=>'ITEM_MODEL'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73427851376127877488)
,p_name=>'P33_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(73427848870248877484)
,p_prompt=>'Status'
,p_source=>'STATUS1'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73427852167733877489)
,p_name=>'P33_DELIVERY_OPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(73427848870248877484)
,p_prompt=>'Delivery Option'
,p_source=>'DELIVERY_OPTION'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73427852550072877489)
,p_name=>'P33_RETURN_OPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(73427848870248877484)
,p_prompt=>'Return Option'
,p_source=>'RETURN_OPTION'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73369032856739634742)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(73427852863425877489)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73369032949235634743)
,p_event_id=>wwv_flow_imp.id(73369032856739634742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73427848870248877484)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73369033097056634744)
,p_event_id=>wwv_flow_imp.id(73369032856739634742)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73427848709246877484)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73369033118960634745)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(73427848709246877484)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73369033227276634746)
,p_event_id=>wwv_flow_imp.id(73369033118960634745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73427848870248877484)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73369033312071634747)
,p_event_id=>wwv_flow_imp.id(73369033118960634745)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73427848709246877484)
);
wwv_flow_imp.component_end;
end;
/
