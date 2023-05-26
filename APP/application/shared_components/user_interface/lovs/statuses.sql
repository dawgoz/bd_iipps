prompt --application/shared_components/user_interface/lovs/statuses
begin
--   Manifest
--     STATUSES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>56834162540286699751
,p_default_application_id=>92329
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BDOS'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(72063056240447766569)
,p_lov_name=>'STATUSES'
,p_lov_query=>'.'||wwv_flow_imp.id(72063056240447766569)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(72063056528308766570)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Submitted'
,p_lov_return_value=>'Submitted'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(72063056936282766570)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Specialist assigned'
,p_lov_return_value=>'Specialist assigned'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(72063057341053766570)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'In progress'
,p_lov_return_value=>'In progress'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(72063057702808766570)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Rejected'
,p_lov_return_value=>'Rejected'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(72063058195165766570)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Completed'
,p_lov_return_value=>'Completed'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(72063058547434766571)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Sent'
,p_lov_return_value=>'Sent'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(72063058956514766571)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Delivered'
,p_lov_return_value=>'Delivered'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(72063059355769766571)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Item received in the shop '
,p_lov_return_value=>'Item received in the shop '
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1441298181622837412)
,p_lov_disp_sequence=>18
,p_lov_disp_value=>'Canceled'
,p_lov_return_value=>'Canceled'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1456113603447455342)
,p_lov_disp_sequence=>28
,p_lov_disp_value=>'Waiting for parts'
,p_lov_return_value=>'Waiting for parts'
);
wwv_flow_imp.component_end;
end;
/
