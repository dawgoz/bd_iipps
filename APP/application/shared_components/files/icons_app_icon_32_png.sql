prompt --application/shared_components/files/icons_app_icon_32_png
begin
--   Manifest
--     APP STATIC FILES: 92329
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>56834162540286699751
,p_default_application_id=>92329
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BDOS'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE900000044655849664D4D002A00000008000187690004000000010000001A000000000003A00100030000000100010000A00200040000';
wwv_flow_imp.g_varchar2_table(2) := '000100000020A0030004000000010000002000000000AC8662F3000002DE494441545809ED565D4F1341143DDBDD6DBBD452684B0B88C112431122A01121E8832124EA2F3031F1C9177F867FC817E3AB89C64882246A0C548AA2F2914DC1F2D9EEB6DD4F';
wwv_flow_imp.g_varchar2_table(3) := '7766D9A6908529BCF0D249DA69A7B3E79C7BEEBD33E59EBD7C6DE31247E012B929754B40CB819603C279DA50D7549886065E084210C3E0387F034D5343AD5A866D998844BBCEA4F047F079442D6F637AA20F2F9E3FA0735B5081A1577C76029D511B8F66';
wwv_flow_imp.g_varchar2_table(4) := '46C105D8F0FCADBB4F5FF9A29C5814836D585BDF86A228B8333680DB6319940EF7B1B3AF1D73C2B62DD8A6829DDD12742B8440803F8174FC2B53A26519B06D725A731043EDF8BD51C3A7F93C45B93F7913A65EAE2312F28AB20BCD6AC7A11A02CF07EBBF';
wwv_flow_imp.g_varchar2_table(5) := '9DF68129A0562D211DB7A06B2E91A1ABC8DEE8C68FFC26D46A0DEDD110C5F6C8A548FC9823A7117BEB4C01818080E9A92C9ECC0E2112AA6070208E5432E6A4A28A8E580482C03B0EB9919F979C886076413014C1C297553C9E1D47FF35B7A2577ECA18C8';
wwv_flow_imp.g_varchar2_table(6) := '74D32086B33D78F72147ABFDB4AEF0A2F59B9945C8711C76F714C87201E97427C2611189441492E4E637D515835375900B874ECE453F8E33D79802C8D3A498CAAA8DEF8BEB58CEFF414575CE02A7C5A2518982F75D4DD296940B07E716C1AC014F3EA905';
wwv_flow_imp.g_varchar2_table(7) := 'E246FFB55EA4BA12C8E565CC7D76BB81EC99BA97C5F848D22956D57BA4A9B96901A40B8607D3E84E756269790D99FE1E148B65CC2FACD4892E2282598404BD913C97FF8BE1EC756CCA45C85BAAF3AA5201931383742622C8F8B6540439BC58832940D794';
wwv_flow_imp.g_varchar2_table(8) := '7AE41E79617B0FB9952D87E00AC5FFBAF88FCE8D2234DDC4F26A995913CC14C46302FA7A93C8FFDAA0919F2427CC245222C24BC79BB7EF313E9A69AA1E980EF0BCAB7164C8B5BD31721AF6D19B27A252D530F3700A1FE796E88DD9B8C7EF33C7FA5B6E18';
wwv_flow_imp.g_varchar2_table(9) := '15243A44E71AB6B05F321CD0B3F36A990634276D6250A2EDEB47DAB8C6744010241C1CDD3782D8C4E5C20B084BCEE1D4E460D640933817DED612D072A0E5C07FD35B0E605E96F80F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(56838371721330892043)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
