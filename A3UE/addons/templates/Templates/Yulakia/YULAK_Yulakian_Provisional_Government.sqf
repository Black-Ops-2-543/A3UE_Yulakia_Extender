private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasHelicopters = "heli" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;
private _hasJets = "jets" in A3A_enabledDLC;
private _hasArtOfWar = "aow" in A3A_enabledDLC;
private _hasGM = "gm" in A3A_enabledDLC;
private _hasCSLA = "csla" in A3A_enabledDLC;
private _hasRF = "rf" in A3A_enabledDLC;
private _hasSOG = "vn" in A3A_enabledDLC;
private _hasSPE = "spe" in A3A_enabledDLC;
private _hasEF = "ef" in A3A_enabledDLC;

private _hasJCAArsenal = isClass(configfile >> "CfgPatches" >> "Weapons_F_JCA_IA") && isClass(configfile >> "CfgPatches" >> "Data_F_JCA_IA");
private _hasJCAEquipment = isClass(configfile >> "CfgPatches" >> "Uniforms_F_JCA_IE") && isClass(configfile >> "CfgPatches" >> "Headwear_F_JCA_IE") && isClass(configfile >> "CfgPatches" >> "Facewear_F_JCA_IE") && isClass(configfile >> "CfgPatches" >> "vests_f_JCA_IE");
private _hasMCC = isClass(configfile >> "CfgPatches" >> "MCC_Core");
private _hasMPP = isClass(configfile >> "CfgPatches" >> "MPP_CORE");
private _hasMHS = isClass(configfile >> "CfgPatches" >> "MHS_Pistols");
private _hasMSS = isClass(configfile >> "CfgPatches" >> "MSS_Core");
private _hasDGR = isClass(configfile >> "CfgPatches" >> "a3_dgr_weapons");
private _hasTierOne = isClass(configfile >> "CfgPatches" >> "Tier1_Weapons_cfg");
private _hasNiArms = isClass(configfile >> "CfgPatches" >> "niarms_416") && isClass(configfile >> "CfgPatches" >> "niaweapons_226") && isClass(configfile >> "CfgPatches" >> "niaweapons_C96");
private _hasSMA = isClass(configfile >> "CfgPatches" >> "SMA_Weapons") && isClass(configfile >> "CfgPatches" >> "SMA_Weapons_A3");


//////////////////////////
//   Side Information   //
//////////////////////////

#include "..\..\script_component.hpp" // TAKE NOTE OF THIS. WITHOUT THIS, YOU CAN'T USE MACROS LIKE QPATHTOFOLDER.

["name", "YPG"] call _fnc_saveToTemplate;
["spawnMarkerName", "Yulakian Support Corridor"] call _fnc_saveToTemplate;

["flag", "Flag_AAF_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Pictures\YULAK_ypg_flag.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "flag_YULAK_YPG"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox",        "I_supplyCrate_F"]  call _fnc_saveToTemplate;
["surrenderCrate", "Box_IND_Wps_F"]    call _fnc_saveToTemplate; 
["equipmentBox",   "Box_AAF_Equip_F"] call _fnc_saveToTemplate;

private _basicVehicles             = [];
private _unarmedLightVehicles      = ["rhs_tigr_m_3camo_msv"];
private _armedLightVehicles        = ["rhs_tigr_sts_3camo_msv"];
private _transportTrucks           = ["O_R_Truck_02_F"];
private _cargoTrucks               = ["O_R_Truck_02_cargo_F"];
private _ammoTrucks                = ["O_R_Truck_02_Ammo_F"];
private _repairTrucks              = ["O_R_Truck_02_box_F"];
private _fuelTrucks                = ["O_R_Truck_02_fuel_F"];
private _medicalTrucks             = ["O_R_Truck_02_medical_F"];
private _lightAPCs                 = ["rhs_btr80_msv"];
private _APCs                      = ["rhs_btr80a_msv"];
private _airborneVehicles          = ["rhs_bmd2", "rhs_sprut_vdv"];
private _IFVs                      = ["RUS_MSV_bmp3", "rhs_bmp2d_msv", "rhs_bmp2_msv"];
private _tanks                     = ["rhs_t90_tv", "rts_t80bv_r", "rhs_t80a", "rhs_t72bc_tv", "rhs_t72bb_tv"];
private _lightTanks                = ["rhs_sprut_vdv"];
private _SPAA                      = ["mkk_zsu_23_4m4", "TSB_BRDM2_ZU23_r", "Aegis_O_R_Truck_02_aa_F"];
private _transportBoats            = ["O_R_Boat_Transport_01_ard_F"];
private _armedBoats                = [];
private _amphibiousVehicles        = ["rhs_bmp2_msv", "rhs_btr80_msv"];
private _casPlanes                 = ["PRACS_SLA_SU22"];
private _asPlanes                  = ["PRACS_SLA_MiG23", "PRACS_SLA_MiG21"];
private _transportPlanes           = ["PRACS_AN12B"];
private _lightHelicopters          = [];
private _transportHelicopters      = ["RHS_Mi8mt_vvsc", "RHS_Mi8mt_vvsc"];
private _armedHelicopters          = ["RHS_Mi8MTV3_vvsc", "RHS_Mi8MTV3_vvsc"];
private _gunshipHelicopters        = ["RHS_Mi24V_vvsc", "RHS_Mi24P_vvsc"];
private _SPGs                      = ["RUS_MSV_2s3m1", "RUS_MSV_2b26"];
private _portableUAVs              = ["O_R_UAV_01_F"];
private _armedLightMilitiaVehicles = ["rhs_tigr_m_3camo_msv"];
private _transportMilitiaTrucks    = [];
private _unarmedMilitiaCars        = [];
private _militiaAPCs               = [];
private _policeVehicles            = [];
private _staticMGs                 = ["I_G_HMG_02_high_F", "rhs_KORD_high_VDV", "rhs_KORD_high_VDV"];
private _staticATs                 = ["RHS_TOW_TriPod_WD", "rhs_Kornet_9M133_2_vdv", "rhs_Kornet_9M133_2_vdv", "rhs_SPG9M_VDV"];
private _staticAAs                 = ["rhs_Igla_AA_pod_msv", "rhs_ZU23_VDV", "rhs_Igla_AA_pod_msv"];
private _mortars                   = [];
private _howitzers                 = [];

switch (true) do {
    case (!_hasGM && !_hasCSLA && !_hasSOG): { // Neither GM, CSLA, nor SOG
        _basicVehicles             append ["rhs_uaz_open_MSV_01"];
        _unarmedLightVehicles      append ["RHS_UAZ_MSV_01"];
        _armedLightVehicles        append ["TSB_BRDM2_r"];
        _transportTrucks           append [];
        _cargoTrucks               append [];
        _ammoTrucks                append [];
        _repairTrucks              append [];
        _fuelTrucks                append [];
        _medicalTrucks             append [];
        _lightAPCs                 append ["rhsusf_m113_usarmy_M2_90"];
        _APCs                      append [];
        _airborneVehicles          append ["rhsusf_m113_usarmy_M2_90"];
        _IFVs                      append ["rhs_bmp1p_msv"];
        _tanks                     append ["leopard1_b"];
        _lightTanks                append [];
        _SPAA                      append [];
        _transportBoats            append [];
        _armedBoats                append ["O_R_Boat_Armed_01_hmg_ard_F"];
        _amphibiousVehicles        append ["rhsusf_m113_usarmy_M2_90"];
        _casPlanes                 append [];
        _asPlanes                  append [];
        _transportPlanes           append [];
        _lightHelicopters          append ["rhs_uh1h_hidf"];
        _transportHelicopters      append ["rhs_uh1h_hidf"];
        _armedHelicopters          append ["rhs_uh1h_hidf_gunship"];
        _gunshipHelicopters        append [];
        _SPGs                      append [];
        _portableUAVs              append [];
        _armedLightMilitiaVehicles append ["rhsgref_BRDM2_msv"];
        _transportMilitiaTrucks    append ["RUS_MP_ural432031"];
        _unarmedMilitiaCars        append ["rhs_uaz_open_MSV_01", "RHS_UAZ_MSV_01"];
        _militiaAPCs               append ["rhsusf_m113_usarmy_M2_90"];
        _policeVehicles            append ["rhs_tigr_msv"];
        _staticMGs                 append [];
        _staticATs                 append [];
        _staticAAs                 append [];
        _mortars                   append ["RUS_MSV_2b14"];
        _howitzers                 append ["RUS_MSV_2a18m"];
    };
    case (_hasGM && !_hasCSLA && !_hasSOG): { // GM only
        _basicVehicles             append ["gm_gc_bgs_uaz469_cargo_noinsignia", "gm_ge_army_iltis_cargo"];
        _unarmedLightVehicles      append ["gm_gc_army_uaz469_cargo_noinsignia", "gm_ge_army_iltis_cargo"];
        _armedLightVehicles        append ["gm_gc_army_brdm2_noinsignia", "gm_ge_army_iltis_mg3", "gm_ge_army_iltis_milan", "gm_gc_army_uaz469_dshkm_noinsignia"];
        _transportTrucks           append ["gm_ge_army_u1300l_cargo", "gm_ge_army_kat1_451_cargo", "gm_gc_army_ural4320_cargo_noinsignia"];
        _cargoTrucks               append ["gm_ge_army_kat1_454_cargo", "gm_ge_army_kat1_451_container", "gm_gc_army_ural375d_cargo_noinsignia"];
        _ammoTrucks                append ["gm_ge_army_kat1_454_reammo", "gm_ge_army_kat1_451_reammo", "gm_gc_army_ural_4320_reammo_noinsignia"];
        _repairTrucks              append ["gm_ge_army_u1300l_repair", "gm_gc_army_ural4320_repair_noinsignia"];
        _fuelTrucks                append ["gm_ge_army_kat1_451_refuel", "gm_gc_army_ural375d_refuel_noinsignia"];
        _medicalTrucks             append ["gm_ge_army_u1300l_medic", "gm_gc_army_ural375d_medic_noinsignia"];
        _lightAPCs                 append ["gm_dk_army_m113a1dk_apc_noinsignia", "gm_ge_army_m113a1g_apc_noinsignia", "gm_ge_army_fuchsa0_engineer_noinsignia"];
        _APCs                      append ["gm_ge_army_fuchsa0_reconnaissance"];
        _airborneVehicles          append ["gm_dk_army_m113a1dk_apc_noinsignia", "gm_ge_army_m113a1g_apc_noinsignia"];
        _IFVs                      append ["gm_gc_army_bmp1p_noinsignia", "gm_ge_army_marder1a1plus_noinsignia"];
        _tanks                     append ["gm_ge_army_Leopard1a3a1_noinsignia", "gm_ge_army_Leopard1a1a2_noinsignia", "gm_ge_army_Leopard1a1a1_noinsignia", "gm_ge_army_Leopard1a1_noinsignia", "gm_gc_army_t55ak_noinsignia"];
        _lightTanks                append ["gm_ge_army_m113a1g_apc_milan_noinsignia", "gm_ge_army_luchsa1_noinsignia", "gm_gc_army_pt76b_noinsignia"];
        _SPAA                      append ["gm_ge_army_gepard1a1_noinsignia"];
        _transportBoats            append [];
        _armedBoats                append ["O_R_Boat_Armed_01_hmg_ard_F"];
        _amphibiousVehicles        append ["gm_dk_army_m113a1dk_apc_noinsignia", "gm_ge_army_m113a1g_apc_noinsignia", "gm_ge_army_luchsa1_noinsignia"];
        _casPlanes                 append [];
        _asPlanes                  append [];
        _transportPlanes           append [];
        _lightHelicopters          append ["rhs_uh1h_hidf", "gm_gc_airforce_mi2t_noinsignia", "gm_gc_airforce_mi2t_noinsignia", "gm_ge_army_bo105p1m_vbh_noinsignia"];
        _transportHelicopters      append ["rhs_uh1h_hidf", "gm_ge_army_bo105p1m_vbh_swooper_noinsignia"];
        _armedHelicopters          append ["rhs_uh1h_hidf_gunship", "gm_ge_army_bo105p_pah1a1_noinsignia"];
        _gunshipHelicopters        append [];
        _SPGs                      append ["gm_ge_army_m109g_noinsignia", "gm_ge_army_m113a1g_mortar_noinsignia"];
        _portableUAVs              append [];
        _armedLightMilitiaVehicles append ["gm_gc_army_brdm2_noinsignia", "gm_gc_army_uaz469_spg9_noinsignia", "gm_gc_army_uaz469_dshkm_noinsignia"];
        _transportMilitiaTrucks    append ["gm_gc_army_ural4320_cargo_noinsignia"];
        _unarmedMilitiaCars        append ["gm_gc_bgs_uaz469_cargo_noinsignia", "gm_gc_army_uaz469_cargo_noinsignia"];
        _militiaAPCs               append ["gm_dk_army_m113a1dk_apc_noinsignia", "gm_ge_army_m113a1g_apc_noinsignia", "gm_gc_army_btr60pa_dshkm_noinsignia"];
        _policeVehicles            append ["gm_ge_bgs_w123_cargo", "gm_ge_army_typ253_cargo"];
        _staticMGs                 append ["gm_ge_army_mg3_aatripod_csw"];
        _staticATs                 append [];
        _staticAAs                 append [];
        _mortars                   append [];
        _howitzers                 append [];
    };
    case (!_hasGM && _hasCSLA && !_hasSOG): { // CSLA only
        _basicVehicles             append ["CSLA_AZU_para_noinsignia"];
        _unarmedLightVehicles      append ["CSLA_AZU_noinsignia", "CSLA_AZU_R2_noinsignia"];
        _armedLightVehicles        append ["TSB_BRDM2_r", "CSLA_OT65A_noinsignia"];
        _transportTrucks           append ["CSLA_V3S_noinsignia", "CSLA_F813_noinsignia"];
        _cargoTrucks               append ["CSLA_V3So_noinsignia", "CSLA_F813o_noinsignia"];
        _ammoTrucks                append ["CSLA_V3Sa_noinsignia"];
        _repairTrucks              append ["US85_M113_DTP", "CSLA_DTP90_noinsignia"];
        _fuelTrucks                append ["CSLA_V3Sf_noinsignia"];
        _medicalTrucks             append [];
        _lightAPCs                 append ["US85_M113", "CSLA_OT62D_noinsignia", "CSLA_OT64C_noinsignia"];
        _APCs                      append [];
        _airborneVehicles          append ["US85_M113"];
        _IFVs                      append ["rhs_bmp1p_msv"];
        _tanks                     append ["leopard1_b", "CSLA_T72M1_noinsignia"];
        _lightTanks                append ["US85_M113A1_TOW"];
        _SPAA                      append ["CSLA_PLdvK59V3S_noinsignia"];
        _transportBoats            append [];
        _armedBoats                append ["O_R_Boat_Armed_01_hmg_ard_F"];
        _amphibiousVehicles        append ["US85_M113"];
        _casPlanes                 append [];
        _asPlanes                  append [];
        _transportPlanes           append [];
        _lightHelicopters          append ["rhs_uh1h_hidf"];
        _transportHelicopters      append ["rhs_uh1h_hidf"];
        _armedHelicopters          append ["rhs_uh1h_hidf_gunship"];
        _gunshipHelicopters        append [];
        _SPGs                      append [];
        _portableUAVs              append [];
        _armedLightMilitiaVehicles append ["rhsgref_BRDM2_msv"];
        _transportMilitiaTrucks    append ["CSLA_V3S_noinsignia"];
        _unarmedMilitiaCars        append ["CSLA_AZU_para_noinsignia", "CSLA_AZU_noinsignia"];
        _militiaAPCs               append ["US85_M113", "CSLA_OT62_noinsignia"];
        _policeVehicles            append ["rhs_tigr_msv"];
        _staticMGs                 append ["CSLA_DShKM_h_Stat"];
        _staticATs                 append [];
        _staticAAs                 append ["CSLA_PLdvK59_Stat"];
        _mortars                   append [];
        _howitzers                 append [];
    };
    case (!_hasGM && !_hasCSLA && _hasSOG): { // SOG only
        _basicVehicles             append ["rhs_uaz_open_MSV_01", "vn_b_wheeled_m151_01_noinsignia"];
        _unarmedLightVehicles      append ["RHS_UAZ_MSV_01"];
        _armedLightVehicles        append ["TSB_BRDM2_r"];
        _transportTrucks           append [];
        _cargoTrucks               append [];
        _ammoTrucks                append [];
        _repairTrucks              append [];
        _fuelTrucks                append [];
        _medicalTrucks             append [];
        _lightAPCs                 append ["vn_b_armor_m113_01_noinsignia"];
        _APCs                      append ["vn_b_armor_m113_acav_06"];
        _airborneVehicles          append ["vn_b_armor_m113_01_noinsignia"];
        _IFVs                      append ["rhs_bmp1p_msv"];
        _tanks                     append ["leopard1_b"];
        _lightTanks                append ["vn_o_armor_pt76a_01_nva65"];
        _SPAA                      append [];
        _transportBoats            append ["vn_b_boat_10_01"];
        _armedBoats                append ["vn_b_boat_12_02"];
        _amphibiousVehicles        append ["vn_b_armor_m113_01_noinsignia"];
        _casPlanes                 append [];
        _asPlanes                  append [];
        _transportPlanes           append [];
        _lightHelicopters          append ["vn_b_air_uh1c_07_01_noinsignia"];
        _transportHelicopters      append ["vn_b_air_uh1d_02_01_noinsignia", "vn_b_air_ch34_03_01_noinsignia"];
        _armedHelicopters          append ["vn_b_air_uh1c_01_01_noinsignia", "vn_b_air_ch34_04_02_noinsignia"];
        _gunshipHelicopters        append [];
        _SPGs                      append ["vn_b_armor_m125_01"];
        _portableUAVs              append [];
        _armedLightMilitiaVehicles append ["rhsgref_BRDM2_msv"];
        _transportMilitiaTrucks    append ["RUS_MP_ural432031"];
        _unarmedMilitiaCars        append ["rhs_uaz_open_MSV_01", "RHS_UAZ_MSV_01"];
        _militiaAPCs               append ["vn_b_armor_m113_01_noinsignia"];
        _policeVehicles            append ["rhs_tigr_msv"];
        _staticMGs                 append [];
        _staticATs                 append [];
        _staticAAs                 append [];
        _mortars                   append [];
        _howitzers                 append [];
    };
    case (_hasGM && _hasCSLA && !_hasSOG): { // GM + CSLA
        _basicVehicles             append ["gm_gc_bgs_uaz469_cargo_noinsignia", "gm_ge_army_iltis_cargo"];
        _unarmedLightVehicles      append ["gm_gc_army_uaz469_cargo_noinsignia", "gm_ge_army_iltis_cargo"];
        _armedLightVehicles        append ["gm_gc_army_brdm2_noinsignia", "gm_ge_army_iltis_mg3", "gm_ge_army_iltis_milan", "gm_gc_army_uaz469_dshkm_noinsignia", "CSLA_OT65A_noinsignia"];
        _transportTrucks           append ["gm_ge_army_u1300l_cargo", "gm_ge_army_kat1_451_cargo", "gm_gc_army_ural4320_cargo_noinsignia", "CSLA_V3S_noinsignia", "CSLA_F813_noinsignia"];
        _cargoTrucks               append ["gm_ge_army_kat1_454_cargo", "gm_ge_army_kat1_451_container", "gm_gc_army_ural375d_cargo_noinsignia", "CSLA_V3So_noinsignia", "CSLA_F813o_noinsignia"];
        _ammoTrucks                append ["gm_ge_army_kat1_454_reammo", "gm_ge_army_kat1_451_reammo", "gm_gc_army_ural_4320_reammo_noinsignia", "CSLA_V3Sa_noinsignia"];
        _repairTrucks              append ["gm_ge_army_u1300l_repair", "gm_gc_army_ural4320_repair_noinsignia", "US85_M113_DTP", "CSLA_DTP90_noinsignia"];
        _fuelTrucks                append ["gm_ge_army_kat1_451_refuel", "gm_gc_army_ural375d_refuel_noinsignia", "CSLA_V3Sf_noinsignia"];
        _medicalTrucks             append ["gm_ge_army_u1300l_medic", "gm_gc_army_ural375d_medic_noinsignia"];
        _lightAPCs                 append ["gm_dk_army_m113a1dk_apc_noinsignia", "gm_ge_army_m113a1g_apc_noinsignia", "gm_ge_army_fuchsa0_engineer_noinsignia", "CSLA_OT62D_noinsignia", "CSLA_OT64C_noinsignia"];
        _APCs                      append ["gm_ge_army_fuchsa0_reconnaissance"];
        _airborneVehicles          append ["gm_dk_army_m113a1dk_apc_noinsignia", "gm_ge_army_m113a1g_apc_noinsignia"];
        _IFVs                      append ["gm_gc_army_bmp1p_noinsignia", "gm_ge_army_marder1a1plus_noinsignia"];
        _tanks                     append ["gm_ge_army_Leopard1a3a1_noinsignia", "gm_ge_army_Leopard1a1a2_noinsignia", "gm_ge_army_Leopard1a1a1_noinsignia", "gm_ge_army_Leopard1a1_noinsignia", "gm_gc_army_t55ak_noinsignia", "CSLA_T72M1_noinsignia"];
        _lightTanks                append ["gm_ge_army_m113a1g_apc_milan_noinsignia", "gm_ge_army_luchsa1_noinsignia", "gm_gc_army_pt76b_noinsignia"];
        _SPAA                      append ["gm_ge_army_gepard1a1_noinsignia", "CSLA_PLdvK59V3S_noinsignia"];
        _transportBoats            append [];
        _armedBoats                append ["O_R_Boat_Armed_01_hmg_ard_F"];
        _amphibiousVehicles        append ["gm_dk_army_m113a1dk_apc_noinsignia", "gm_ge_army_m113a1g_apc_noinsignia", "gm_ge_army_luchsa1_noinsignia"];
        _casPlanes                 append [];
        _asPlanes                  append [];
        _transportPlanes           append [];
        _lightHelicopters          append ["rhs_uh1h_hidf", "gm_gc_airforce_mi2t_noinsignia", "gm_gc_airforce_mi2t_noinsignia", "gm_ge_army_bo105p1m_vbh_noinsignia"];
        _transportHelicopters      append ["rhs_uh1h_hidf", "gm_ge_army_bo105p1m_vbh_swooper_noinsignia"];
        _armedHelicopters          append ["rhs_uh1h_hidf_gunship", "gm_ge_army_bo105p_pah1a1_noinsignia"];
        _gunshipHelicopters        append [];
        _SPGs                      append ["gm_ge_army_m109g_noinsignia", "gm_ge_army_m113a1g_mortar_noinsignia"];
        _portableUAVs              append [];
        _armedLightMilitiaVehicles append ["gm_gc_army_brdm2_noinsignia", "gm_gc_army_uaz469_spg9_noinsignia", "gm_gc_army_uaz469_dshkm_noinsignia"];
        _transportMilitiaTrucks    append ["gm_gc_army_ural4320_cargo_noinsignia", "CSLA_V3S_noinsignia"];
        _unarmedMilitiaCars        append ["gm_gc_bgs_uaz469_cargo_noinsignia", "gm_gc_army_uaz469_cargo_noinsignia"];
        _militiaAPCs               append ["gm_dk_army_m113a1dk_apc_noinsignia", "gm_ge_army_m113a1g_apc_noinsignia", "gm_gc_army_btr60pa_dshkm_noinsignia", "CSLA_OT62_noinsignia"];
        _policeVehicles            append ["gm_ge_bgs_w123_cargo", "gm_ge_army_typ253_cargo"];
        _staticMGs                 append ["gm_ge_army_mg3_aatripod_csw", "CSLA_DShKM_h_Stat"];
        _staticATs                 append [];
        _staticAAs                 append ["CSLA_PLdvK59_Stat"];
        _mortars                   append [];
        _howitzers                 append [];        
    };
    case (_hasGM && !_hasCSLA && _hasSOG): { // GM + SOG
        _basicVehicles             append ["gm_gc_bgs_uaz469_cargo_noinsignia", "gm_ge_army_iltis_cargo", "vn_b_wheeled_m151_01_noinsignia"];
        _unarmedLightVehicles      append ["gm_gc_army_uaz469_cargo_noinsignia", "gm_ge_army_iltis_cargo"];
        _armedLightVehicles        append ["gm_gc_army_brdm2_noinsignia", "gm_ge_army_iltis_mg3", "gm_ge_army_iltis_milan", "gm_gc_army_uaz469_dshkm_noinsignia"];
        _transportTrucks           append ["gm_ge_army_u1300l_cargo", "gm_ge_army_kat1_451_cargo", "gm_gc_army_ural4320_cargo_noinsignia"];
        _cargoTrucks               append ["gm_ge_army_kat1_454_cargo", "gm_ge_army_kat1_451_container", "gm_gc_army_ural375d_cargo_noinsignia"];
        _ammoTrucks                append ["gm_ge_army_kat1_454_reammo", "gm_ge_army_kat1_451_reammo", "gm_gc_army_ural_4320_reammo_noinsignia"];
        _repairTrucks              append ["gm_ge_army_u1300l_repair", "gm_gc_army_ural4320_repair_noinsignia"];
        _fuelTrucks                append ["gm_ge_army_kat1_451_refuel", "gm_gc_army_ural375d_refuel_noinsignia"];
        _medicalTrucks             append ["gm_ge_army_u1300l_medic", "gm_gc_army_ural375d_medic_noinsignia"];
        _lightAPCs                 append ["gm_dk_army_m113a1dk_apc_noinsignia", "gm_ge_army_m113a1g_apc_noinsignia", "gm_ge_army_fuchsa0_engineer_noinsignia"];
        _APCs                      append ["gm_ge_army_fuchsa0_reconnaissance", "vn_b_armor_m113_acav_06"];
        _airborneVehicles          append ["gm_dk_army_m113a1dk_apc_noinsignia", "gm_ge_army_m113a1g_apc_noinsignia"];
        _IFVs                      append ["gm_gc_army_bmp1p_noinsignia", "gm_ge_army_marder1a1plus_noinsignia"];
        _tanks                     append ["gm_ge_army_Leopard1a3a1_noinsignia", "gm_ge_army_Leopard1a1a2_noinsignia", "gm_ge_army_Leopard1a1a1_noinsignia", "gm_ge_army_Leopard1a1_noinsignia", "gm_gc_army_t55ak_noinsignia"];
        _lightTanks                append ["gm_ge_army_m113a1g_apc_milan_noinsignia", "gm_ge_army_luchsa1_noinsignia", "gm_gc_army_pt76b_noinsignia"];
        _SPAA                      append ["gm_ge_army_gepard1a1_noinsignia"];
        _transportBoats            append ["vn_b_boat_10_01"];
        _armedBoats                append ["vn_b_boat_12_02"];
        _amphibiousVehicles        append ["gm_dk_army_m113a1dk_apc_noinsignia", "gm_ge_army_m113a1g_apc_noinsignia", "gm_ge_army_luchsa1_noinsignia"];
        _casPlanes                 append [];
        _asPlanes                  append [];
        _transportPlanes           append [];
        _lightHelicopters          append ["vn_b_air_uh1c_07_01_noinsignia", "gm_gc_airforce_mi2t_noinsignia", "gm_gc_airforce_mi2t_noinsignia", "gm_ge_army_bo105p1m_vbh_noinsignia"];
        _transportHelicopters      append ["vn_b_air_uh1d_02_01_noinsignia", "vn_b_air_ch34_03_01_noinsignia", "gm_ge_army_bo105p1m_vbh_swooper_noinsignia"];
        _armedHelicopters          append ["vn_b_air_uh1c_01_01_noinsignia", "vn_b_air_ch34_04_02_noinsignia", "gm_ge_army_bo105p_pah1a1_noinsignia"];
        _gunshipHelicopters        append [];
        _SPGs                      append ["gm_ge_army_m109g_noinsignia", "gm_ge_army_m113a1g_mortar_noinsignia"];
        _portableUAVs              append [];
        _armedLightMilitiaVehicles append ["gm_gc_army_brdm2_noinsignia", "gm_gc_army_uaz469_spg9_noinsignia", "gm_gc_army_uaz469_dshkm_noinsignia"];
        _transportMilitiaTrucks    append ["gm_gc_army_ural4320_cargo_noinsignia"];
        _unarmedMilitiaCars        append ["gm_gc_bgs_uaz469_cargo_noinsignia", "gm_gc_army_uaz469_cargo_noinsignia"];
        _militiaAPCs               append ["gm_dk_army_m113a1dk_apc_noinsignia", "gm_ge_army_m113a1g_apc_noinsignia", "gm_gc_army_btr60pa_dshkm_noinsignia"];
        _policeVehicles            append ["gm_ge_bgs_w123_cargo", "gm_ge_army_typ253_cargo"];
        _staticMGs                 append ["gm_ge_army_mg3_aatripod_csw"];
        _staticATs                 append [];
        _staticAAs                 append [];
        _mortars                   append [];
        _howitzers                 append [];        
    };
    case (!_hasGM && _hasCSLA && _hasSOG): { // CSLA + SOG
        _basicVehicles             append ["CSLA_AZU_para_noinsignia", "vn_b_wheeled_m151_01_noinsignia"];
        _unarmedLightVehicles      append ["CSLA_AZU_noinsignia", "CSLA_AZU_R2_noinsignia"];
        _armedLightVehicles        append ["TSB_BRDM2_r", "CSLA_OT65A_noinsignia"];
        _transportTrucks           append ["CSLA_V3S_noinsignia", "CSLA_F813_noinsignia"];
        _cargoTrucks               append ["CSLA_V3So_noinsignia", "CSLA_F813o_noinsignia"];
        _ammoTrucks                append ["CSLA_V3Sa_noinsignia"];
        _repairTrucks              append ["US85_M113_DTP", "CSLA_DTP90_noinsignia"];
        _fuelTrucks                append ["CSLA_V3Sf_noinsignia"];
        _medicalTrucks             append [];
        _lightAPCs                 append ["US85_M113", "CSLA_OT62D_noinsignia", "CSLA_OT64C_noinsignia"];
        _APCs                      append ["vn_b_armor_m113_acav_06"];
        _airborneVehicles          append ["US85_M113"];
        _IFVs                      append ["rhs_bmp1p_msv"];
        _tanks                     append ["leopard1_b", "CSLA_T72M1_noinsignia"];
        _lightTanks                append ["US85_M113A1_TOW", "vn_o_armor_pt76a_01_nva65"];
        _SPAA                      append ["CSLA_PLdvK59V3S_noinsignia"];
        _transportBoats            append ["vn_b_boat_10_01"];
        _armedBoats                append ["vn_b_boat_12_02"];
        _amphibiousVehicles        append ["US85_M113"];
        _casPlanes                 append [];
        _asPlanes                  append [];
        _transportPlanes           append [];
        _lightHelicopters          append ["vn_b_air_uh1c_07_01_noinsignia"];
        _transportHelicopters      append ["vn_b_air_uh1d_02_01_noinsignia", "vn_b_air_ch34_03_01_noinsignia"];
        _armedHelicopters          append ["vn_b_air_uh1c_01_01_noinsignia", "vn_b_air_ch34_04_02_noinsignia"];
        _gunshipHelicopters        append [];
        _SPGs                      append ["vn_b_armor_m125_01"];
        _portableUAVs              append [];
        _armedLightMilitiaVehicles append ["rhsgref_BRDM2_msv"];
        _transportMilitiaTrucks    append ["CSLA_V3S_noinsignia"];
        _unarmedMilitiaCars        append ["CSLA_AZU_para_noinsignia", "CSLA_AZU_noinsignia"];
        _militiaAPCs               append ["US85_M113", "CSLA_OT62_noinsignia"];
        _policeVehicles            append ["rhs_tigr_msv"];
        _staticMGs                 append ["CSLA_DShKM_h_Stat"];
        _staticATs                 append [];
        _staticAAs                 append ["CSLA_PLdvK59_Stat"];
        _mortars                   append [];
        _howitzers                 append [];        
    };
    case (_hasGM && _hasCSLA && _hasSOG): { // GM + CSLA + SOG
        _basicVehicles             append ["gm_gc_bgs_uaz469_cargo_noinsignia", "gm_ge_army_iltis_cargo", "vn_b_wheeled_m151_01_noinsignia"];
        _unarmedLightVehicles      append ["gm_gc_army_uaz469_cargo_noinsignia", "gm_ge_army_iltis_cargo"];
        _armedLightVehicles        append ["gm_gc_army_brdm2_noinsignia", "gm_ge_army_iltis_mg3", "gm_ge_army_iltis_milan", "gm_gc_army_uaz469_dshkm_noinsignia", "CSLA_OT65A_noinsignia"];
        _transportTrucks           append ["gm_ge_army_u1300l_cargo", "gm_ge_army_kat1_451_cargo", "gm_gc_army_ural4320_cargo_noinsignia", "CSLA_V3S_noinsignia", "CSLA_F813_noinsignia"];
        _cargoTrucks               append ["gm_ge_army_kat1_454_cargo", "gm_ge_army_kat1_451_container", "gm_gc_army_ural375d_cargo_noinsignia", "CSLA_V3So_noinsignia", "CSLA_F813o_noinsignia"];
        _ammoTrucks                append ["gm_ge_army_kat1_454_reammo", "gm_ge_army_kat1_451_reammo", "gm_gc_army_ural_4320_reammo_noinsignia", "CSLA_V3Sa_noinsignia"];
        _repairTrucks              append ["gm_ge_army_u1300l_repair", "gm_gc_army_ural4320_repair_noinsignia", "US85_M113_DTP", "CSLA_DTP90_noinsignia"];
        _fuelTrucks                append ["gm_ge_army_kat1_451_refuel", "gm_gc_army_ural375d_refuel_noinsignia", "CSLA_V3Sf_noinsignia"];
        _medicalTrucks             append ["gm_ge_army_u1300l_medic", "gm_gc_army_ural375d_medic_noinsignia"];
        _lightAPCs                 append ["gm_dk_army_m113a1dk_apc_noinsignia", "gm_ge_army_m113a1g_apc_noinsignia", "gm_ge_army_fuchsa0_engineer_noinsignia", "CSLA_OT62D_noinsignia", "CSLA_OT64C_noinsignia"];
        _APCs                      append ["gm_ge_army_fuchsa0_reconnaissance", "vn_b_armor_m113_acav_06"];
        _airborneVehicles          append ["gm_dk_army_m113a1dk_apc_noinsignia", "gm_ge_army_m113a1g_apc_noinsignia"];
        _IFVs                      append ["gm_gc_army_bmp1p_noinsignia", "gm_ge_army_marder1a1plus_noinsignia"];
        _tanks                     append ["gm_ge_army_Leopard1a3a1_noinsignia", "gm_ge_army_Leopard1a1a2_noinsignia", "gm_ge_army_Leopard1a1a1_noinsignia", "gm_ge_army_Leopard1a1_noinsignia", "gm_gc_army_t55ak_noinsignia", "CSLA_T72M1_noinsignia"];
        _lightTanks                append ["gm_ge_army_m113a1g_apc_milan_noinsignia", "gm_ge_army_luchsa1_noinsignia", "gm_gc_army_pt76b_noinsignia"];
        _SPAA                      append ["gm_ge_army_gepard1a1_noinsignia", "CSLA_PLdvK59V3S_noinsignia"];
        _transportBoats            append ["vn_b_boat_10_01"];
        _armedBoats                append ["vn_b_boat_12_02"];
        _amphibiousVehicles        append ["gm_dk_army_m113a1dk_apc_noinsignia", "gm_ge_army_m113a1g_apc_noinsignia", "gm_ge_army_luchsa1_noinsignia"];
        _casPlanes                 append [];
        _asPlanes                  append [];
        _transportPlanes           append [];
        _lightHelicopters          append ["vn_b_air_uh1c_07_01_noinsignia", "gm_gc_airforce_mi2t_noinsignia", "gm_gc_airforce_mi2t_noinsignia", "gm_ge_army_bo105p1m_vbh_noinsignia"];
        _transportHelicopters      append ["vn_b_air_uh1d_02_01_noinsignia", "vn_b_air_ch34_03_01_noinsignia", "gm_ge_army_bo105p1m_vbh_swooper_noinsignia"];
        _armedHelicopters          append ["vn_b_air_uh1c_01_01_noinsignia", "vn_b_air_ch34_04_02_noinsignia", "gm_ge_army_bo105p_pah1a1_noinsignia"];
        _gunshipHelicopters        append [];
        _SPGs                      append ["gm_ge_army_m109g_noinsignia", "gm_ge_army_m113a1g_mortar_noinsignia"];
        _portableUAVs              append [];
        _armedLightMilitiaVehicles append ["gm_gc_army_brdm2_noinsignia", "gm_gc_army_uaz469_spg9_noinsignia", "gm_gc_army_uaz469_dshkm_noinsignia"];
        _transportMilitiaTrucks    append ["gm_gc_army_ural4320_cargo_noinsignia", "CSLA_V3S_noinsignia"];
        _unarmedMilitiaCars        append ["gm_gc_bgs_uaz469_cargo_noinsignia", "gm_gc_army_uaz469_cargo_noinsignia"];
        _militiaAPCs               append ["gm_dk_army_m113a1dk_apc_noinsignia", "gm_ge_army_m113a1g_apc_noinsignia", "gm_gc_army_btr60pa_dshkm_noinsignia", "CSLA_OT62_noinsignia"];
        _policeVehicles            append ["gm_ge_bgs_w123_cargo", "gm_ge_army_typ253_cargo"];
        _staticMGs                 append ["gm_ge_army_mg3_aatripod_csw", "CSLA_DShKM_h_Stat"];
        _staticATs                 append [];
        _staticAAs                 append ["CSLA_PLdvK59_Stat"];
        _mortars                   append [];
        _howitzers                 append [];        
    };
};


[       "vehiclesBasic", _basicVehicles] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", _unarmedLightVehicles] call _fnc_saveToTemplate;	
[  "vehiclesLightArmed", _armedLightVehicles] call _fnc_saveToTemplate; 

[      "vehiclesTrucks", _transportTrucks] call _fnc_saveToTemplate;		    
[ "vehiclesCargoTrucks", _cargoTrucks] call _fnc_saveToTemplate;	
[  "vehiclesAmmoTrucks", _ammoTrucks] call _fnc_saveToTemplate;	
["vehiclesRepairTrucks", _repairTrucks] call _fnc_saveToTemplate;	
[  "vehiclesFuelTrucks", _fuelTrucks] call _fnc_saveToTemplate;	
[     "vehiclesMedical", _medicalTrucks] call _fnc_saveToTemplate;

[   "vehiclesLightAPCs", _lightAPCs] call _fnc_saveToTemplate;
[        "vehiclesAPCs", _APCs] call _fnc_saveToTemplate;              
[    "vehiclesAirborne", _airborneVehicles] call _fnc_saveToTemplate;
[        "vehiclesIFVs", _IFVs] call _fnc_saveToTemplate; 
[       "vehiclesTanks", _tanks] call _fnc_saveToTemplate;
[  "vehiclesLightTanks", _lightTanks] call _fnc_saveToTemplate;
[          "vehiclesAA", _SPAA] call _fnc_saveToTemplate;                                                             

["vehiclesTransportBoats", _transportBoats] call _fnc_saveToTemplate;	                      
[      "vehiclesGunBoats", _armedBoats] call _fnc_saveToTemplate;                               
[    "vehiclesAmphibious", _amphibiousVehicles] call _fnc_saveToTemplate;       

[      "vehiclesPlanesCAS", _casPlanes] call _fnc_saveToTemplate;                                          
[       "vehiclesPlanesAA", _asPlanes] call _fnc_saveToTemplate;                       
["vehiclesPlanesTransport", _transportPlanes] call _fnc_saveToTemplate;	                                     

[      "vehiclesHelisLight", _lightHelicopters] call _fnc_saveToTemplate;    
[  "vehiclesHelisTransport", _transportHelicopters] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", _armedHelicopters] call _fnc_saveToTemplate;             
[     "vehiclesHelisAttack", _gunshipHelicopters] call _fnc_saveToTemplate;

[   "vehiclesPlanesGunship", ["RHS_Mi24V_vvsc", "RHS_Mi24P_vvsc"]] call _fnc_saveToTemplate;
if(_hasGM) then {
    ["vehiclesAirPatrol", ["gm_gc_airforce_mi2t_noinsignia"]] call _fnc_saveToTemplate;
} else {

};

["vehiclesArtillery", _SPGs] call _fnc_saveToTemplate;		 
["magazines", createHashMapFromArray [
["RUS_MSV_2s3m1", ["rhs_mag_HE_2a33"]],
["RUS_MSV_2b26",["VTN_9M522_40"]]
]] call _fnc_saveToTemplate;	

["uavsAttack", ["RUS_VKS_forpostru"]] call _fnc_saveToTemplate;
["uavsPortable", _portableUAVs] call _fnc_saveToTemplate;       // unmanned aerial vehicle(drone), unarmed or armed(Western Sahara style), must be able to be disassembled


//Config special vehicles
["vehiclesMilitiaLightArmed", _armedLightMilitiaVehicles]  call _fnc_saveToTemplate; // same as "vehiclesLightArmed" but for milita forces
[    "vehiclesMilitiaTrucks", _transportMilitiaTrucks] call _fnc_saveToTemplate;     // same as "vehiclesTrucks" but for milita forces
[      "vehiclesMilitiaCars", _unarmedMilitiaCars] call _fnc_saveToTemplate;         // same as "vehiclesLightUnarmed" but for milita forces

["vehiclesMilitiaAPCs", _militiaAPCs] call _fnc_saveToTemplate; // Militia APCs will be used at roadblocks and attacks at first 4 war levels

["vehiclesPolice", _policeVehicles] call _fnc_saveToTemplate; // cars used by police forces

[      "staticMGs", _staticMGs] call _fnc_saveToTemplate; // static machine guns
[       "staticAT", _staticATs] call _fnc_saveToTemplate; // static anti-tank weapons 
[       "staticAA", _staticAAs] call _fnc_saveToTemplate; // static anti-aircraft weapons
[  "staticMortars", _mortars] call _fnc_saveToTemplate;   // static mortars
["staticHowitzers", _howitzers] call _fnc_saveToTemplate; // static howitzers

["mortarMagazineHE", "rhs_mag_3vo18_10"]                                                                          call _fnc_saveToTemplate;     //this line determines available HE-shells for the static mortars - !needs to be compatible with the mortar! -- Example: ["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] - ENTER ONLY ONE OPTION
["mortarMagazineSmoke", "rhs_mag_d832du_10"]                                                                      call _fnc_saveToTemplate;     //this line determines smoke-shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] - ENTER ONLY ONE OPTION
["mortarMagazineFlare", "rhs_mag_3vs25m_10"]                                                                      call _fnc_saveToTemplate;     //this line determines flare shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Flare_white"] - ENTER ONLY ONE OPTION

["howitzerMagazineHE", "rhs_mag_3of56_10"]                                                                        call _fnc_saveToTemplate;	    //this line determines available HE-shells for the static howitzers - !needs to be compatible with the howitzer! -- same syntax as above - ENTER ONLY ONE OPTION


//Minefield definition
//CFGVehicles variant of Mines are needed "ATMine", "APERSTripMine", "APERSMine"
["minefieldAT", ["ATMine"]]       call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

#include "VehicleData\YULAK_YPG_Vehicle_Attributes.sqf"

/////////////////////
///  Identities   ///
/////////////////////

#include "CharacterData\YULAK_Western_Identities.sqf"

["insignia", []] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", []];
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["designatedGrenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];

_loadoutData set ["lightATLaunchers",   [["rhs_weap_rpg75", "", "", "", [],                                           [], ""]]];
_loadoutData set ["lightHELaunchers",   [["rhs_weap_rpg7",  "", "", "", ["rhs_rpg7_OG7V_mag"],                        [], ""]]];
_loadoutData set ["ATLaunchers",        [["rhs_weap_rpg7",  "", "", "", ["rhs_rpg7_PG7VM_mag", "rhs_rpg7_PG7VR_mag"], [], ""]]];
_loadoutData set ["AALaunchers",        [["rhs_weap_igla",  "", "", "", ["rhs_mag_9k38_rocket"],                      [], ""]]];
_loadoutData set ["sidearms",           []];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]]; 				
_loadoutData set ["APMines", ["APERSMine_Range_Mag"]]; 				
_loadoutData set ["lightExplosives", ["DemoCharge_Remote_Mag"]]; 	
_loadoutData set ["heavyExplosives", ["SatchelCharge_Remote_Mag"]]; 

_loadoutData set ["antiInfantryGrenades", ["rhs_mag_rgn", "rhs_mag_rgo"]];
_loadoutData set ["antiTankGrenades", ["rhsgref_mag_rkg3em"]];
_loadoutData set ["smokeGrenades", ["rhs_mag_rdg2_white"]];
_loadoutData set ["signalsmokeGrenades", ["rhs_nspd", "rhs_nspn_green", "rhs_nspn_red", "rhs_nspn_yellow"]];


//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["MMM_COTNV14", "rhs_1PN138"]];
_loadoutData set ["binoculars", ["VTN_B15"]];
_loadoutData set ["rangefinders", ["rhs_pdu4"]];

_loadoutData set ["traitorUniforms", ["U_BG_Guerrilla_6_1"]];		                            
_loadoutData set ["traitorVests", ["V_TacVest_oli", "V_TacVest_camo", "V_BandollierB_oli"]];	
_loadoutData set ["traitorHats", ["H_Watchcap_camo", "H_Watchcap_khk", "H_Bandanna_khk", "H_Cap_oli", "H_Booniehat_oli", "rhs_headband", "Aegis_H_Milcap_nohs_grn_F"]];

_loadoutData set ["officerUniforms", ["ibr_U_B_yul_M88"]];
_loadoutData set ["officerVests", ["ibr_yul_vest"]];
_loadoutData set ["officerHats", ["H_Beret_grn"]];

_loadoutData set ["uniforms", []];
_loadoutData set ["vests", []];
_loadoutData set ["heavyVests", []];
_loadoutData set ["backpacks", []];
_loadoutData set ["slBackpacks", []];
_loadoutData set ["largeBackpacks", []];
_loadoutData set ["longRangeRadios", ["B_RadioBag_01_green_F"]];           //long range radios used by radiomen
_loadoutData set ["helmets", []];
_loadoutData set ["heavyHelmets", []];
_loadoutData set ["sniHats", ["H_Booniehat_oli_hs"]];

_loadoutData set ["cloakUniforms", ["U_B_W_FullGhillie_wdl_F"]];
_loadoutData set ["cloakVests", ["V_TacVest_grn", "rhs_6b5", "rhs_chicom_khk", "rhsgref_chestrig"]];
_loadoutData set ["cloakRifles", ["rhs_weap_svdp_npz", "rhs_acc_tgpv2", "", "rhs_acc_dh520x56",     ["rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmr_7N14"], [], ""]];
_loadoutData set ["cloakCarbines", ["arifle_AKSM_F", "", "", "", ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""]];
_loadoutData set ["cloakSidearms", ["rhs_weap_pya", "", "", "", ["rhs_mag_9x19_17", "rhs_mag_9x19_7n31_17"], [], ""]];
_loadoutData set ["cloakGlasses", ["G_Balaclava_oli", "G_Bandanna_oli", "Aegis_G_scrimNet_under_olive_F", "RUS_Balaclava_VKPO_Green_1", "RUS_Balaclava_VKPO_Green_2", "rhs_balaclava", "rhs_balaclava1_olive"]];

private _facewearEquipment = [
    "Aegis_G_Headset_black_F",
    "Aegis_G_Headset_Olive_F",
    "G_Headset_Tactical",
    "G_Headset_Tactical_grn",
    "G_Headset_Tactical_khk"
];
private _faceCovers = [
    "G_Balaclava_blk",
    "G_Balaclava_lowprofile",
    "G_Balaclava_oli",
    "G_Bandanna_blk",
    "G_Bandanna_oli",
    "G_Bandanna_tan"
];
private _neckCovers = [
    "G_Shemag_khk",
    "G_Shemag_oli",
    "G_Shemag_shades",
    "G_Shemag_tactical",
    "rhsusf_shemagh_od",
    "rhsusf_shemagh2_od",
    "rhsusf_shemagh_tan",
    "rhsusf_shemagh2_tan",
    "rhsusf_shemagh_gogg_od",
    "rhsusf_shemagh2_gogg_od",
    "rhsusf_shemagh_gogg_tan",
    "rhsusf_shemagh2_gogg_tan"
];
private _glassesGoggles = [
    "G_Combat",
    "G_Lowprofile",
    "G_Combat_Goggles_blk_F",
    "Aegis_G_Condor_EyePro_F",
    "rhsusf_shemagh_gogg_od",
    "rhsusf_shemagh2_gogg_od",
    "rhsusf_shemagh_gogg_tan",
    "rhsusf_shemagh2_gogg_tan",
    "rhsusf_oakley_goggles_clr",
    "rhsusf_oakley_goggles_blk"
];

if(_hasWS) then {
    _facewearEquipment append [
        "G_Headset_lxWS"
    ];
};
if(_hasDGR) then {
    _faceCovers append [
        "dgr_balaclava6",
        "dgr_balaclava7",
        "dgr_balaclava32",
        "dgr_balaclava34",
        "dgr_bandana_oli"
    ];
    _facewearEquipment append [
        "dgr_headgear",
        "dgr_headgear2",
        "dgr_headgear4",
        "dgr_headgear5",
        "dgr_headgear6"
    ];
};
if(_hasJCAEquipment) then {
    _facewearEquipment append [
        "JCA_G_Headset_Combat_01_black_F",
        "JCA_G_Headset_Combat_01_olive_F",
        "JCA_G_shemagh_01_headset_olive_F",
        "JCA_G_shemagh_01_headset_glasses_olive_F",
        "JCA_G_balaclava_01_headset_black_F",
        "JCA_G_balaclava_01_headset_olive_F",
        "JCA_G_balaclava_01_headset_glasses_olive_F"
    ];
    _neckCovers append [
        "JCA_G_shemagh_01_glasses_olive_F"
    ];
    _glassesGoggles append [
        "JCA_G_shemagh_01_glasses_olive_F",
        "JCA_G_Glasses_Tactical_clear_black_F",
        "JCA_G_Glasses_Tactical_tinted_black_F",
        "JCA_G_Glasses_Tactical_faded_black_F",
        "JCA_G_Glasses_Tactical_clear_olive_F",
        "JCA_G_Glasses_Tactical_tinted_olive_F",
        "JCA_G_Glasses_Tactical_faded_olive_F"
    ];
    _faceCovers append [
        "JCA_G_balaclava_01_glasses_olive_F",
        "JCA_G_balaclava_01_olive_F"
    ];
};

_loadoutData set ["faceEquipment", _facewearEquipment];
_loadoutData set ["faceCovering", _faceCovers];
_loadoutData set ["neckCovering", _neckCovers];
_loadoutData set ["eyeCovering", _glassesGoggles];


//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied. TODO
if(A3A_hasACE) then {
    /*
    Basic Medical:       3 Bandages
    Standard Medical:    5 Bandages, 2 Tourniquets
    Squad Lead Medical:  6 Bandages, 4 Tourniquets, 1 Splint
    Doctor Medical:     12 Bandages, 2 Tourniquets, 2 Splints, 4 Morphine, 2 Epinephrine, 1 PAK
    */
    _loadoutData set ["items_medical_basic",    ["ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing"]                                                                                                                                                                                                                                                                                                                                                                                     call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_medical_standard", ["ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_tourniquet", "ACE_tourniquet"]                                                                                                                                                                                                                                                                                                  call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_medical_leader",   ["ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_tourniquet", "ACE_tourniquet", "ACE_tourniquet", "ACE_tourniquet", "ACE_splint"]                                                                                                                                                                                                                          call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_medical_medic",    ["ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_tourniquet", "ACE_tourniquet", "ACE_splint", "ACE_splint", "ACE_morphine", "ACE_morphine", "ACE_morphine", "ACE_morphine", "ACE_epinephrine", "ACE_epinephrine", "ACE_personalAidKit"]  call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_miscEssentials",   ["ACE_IR_Strobe_Item", "ACE_EntrenchingTool", "ACE_Flashlight_XL50"]                                                                                                                                                                                                                                                                                                                                                                                                       call A3A_fnc_itemset_miscEssentials ];
} else {
    /*
    Basic Medical:      1 FAK
    Standard Medical:   3 FAKs
    Squad Lead Medical: 5 FAKs
    Doctor Medical:     1 Medikit
    */
    _loadoutData set ["items_medical_basic",    ["FirstAidKit"] call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_medical_standard", ["FirstAidKit", "FirstAidKit", "FirstAidKit"] call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_medical_leader",   ["FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit"] call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_medical_medic",    ["Medikit"] call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_miscEssentials",   [] call A3A_fnc_itemset_miscEssentials];
};

//Unit type specific item sets. Add or remove these, depending on the unit types in use.

private   _squadLeaderItems = ["MineDetector"];
private      _riflemanItems = [];
private         _medicItems = [];
private     _grenadierItems = ["rhs_ec75_mag"];
private          _demoItems = ["rhs_ec200_mag", "MineDetector"];
private      _engineerItems = ["ToolKit"];
private _lightAntiTankItems = [];
private      _antiTankItems = [];
private       _antiAirItems = [];
private _machineGunnerItems = [];
private      _marksmanItems = [];
private        _sniperItems = [];
private        _policeItems = [];
private          _crewItems = [];
private       _unarmedItems = [];

if (A3A_hasACE) then {
    _squadLeaderItems append   [];
    _riflemanItems append      [];
    _medicItems append         [];
    _grenadierItems append     [];
    _demoItems append          [];
    _engineerItems append      [];
    _lightAntiTankItems append [];
    _antiTankItems append      [];
    _antiAirItems append       [];
    _machineGunnerItems append [];
    _marksmanItems append      [];
    _sniperItems append        [];
    _policeItems append        [];
    _crewItems append          [];
    _unarmedItems append       [];
};

_loadoutData set ["items_squadLeader_extras",      _squadLeaderItems];
_loadoutData set ["items_rifleman_extras",         _riflemanItems];
_loadoutData set ["items_medic_extras",            _medicItems];
_loadoutData set ["items_grenadier_extras",        _grenadierItems];
_loadoutData set ["items_explosivesExpert_extras", _demoItems];
_loadoutData set ["items_engineer_extras",         _engineerItems];
_loadoutData set ["items_lat_extras",              _lightAntiTankItems];
_loadoutData set ["items_at_extras",               _antiTankItems];
_loadoutData set ["items_aa_extras",               _antiAirItems];
_loadoutData set ["items_machineGunner_extras",    _machineGunnerItems];
_loadoutData set ["items_marksman_extras",         _marksmanItems];
_loadoutData set ["items_sniper_extras",           _sniperItems];
_loadoutData set ["items_police_extras",           _policeItems];
_loadoutData set ["items_crew_extras",             _crewItems];
_loadoutData set ["items_unarmed_extras",          _unarmedItems];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

_policeMuzzles = [

];
_policeAttachmentsBarrel = [

];
_policeAttachmentsRail = [

];
_policeOpticsDovetail = [

];
_policeOpticsRail = [

];
_policeUnderbarrels = [

];

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;

_policeLoadoutData set ["uniforms", ["ibr_yul_cop_uniform"]];
_policeLoadoutData set ["vests", ["V_Chestrig_blk", "V_TacVest_blk", "V_TacVest_blk", "rhs_belt_holster"]];
_policeLoadoutData set ["helmets", ["ibr_yul_cophelmet", "H_Beret_blk", "H_Beret_blk"]];

_policeLoadoutData set ["SMGs", [
    ["rhs_weap_ak74n_2", "",                "", "", ["rhs_30Rnd_545x39_7N10_plum_AK", "rhs_30Rnd_545x39_7N22_plum_AK", "rhs_30Rnd_545x39_7N6M_plum_AK"], [], ""],
    ["rhs_weap_aks74_2", "",                "", "", ["rhs_30Rnd_545x39_7N10_plum_AK", "rhs_30Rnd_545x39_7N22_plum_AK", "rhs_30Rnd_545x39_7N6M_plum_AK"], [], ""],
    ["rhs_weap_aks74_2", "rhs_acc_dtk1983", "", "", ["rhs_30Rnd_545x39_7N10_plum_AK", "rhs_30Rnd_545x39_7N22_plum_AK", "rhs_30Rnd_545x39_7N6M_plum_AK"], [], ""],
    
    ["rhs_weap_pp2000", "", "", "",                 ["rhs_mag_9x19mm_7n31_20", "rhs_mag_9x19mm_7n21_20"], [], ""],
    ["rhs_weap_pp2000", "", "", "Aegis_optic_1p87", ["rhs_mag_9x19mm_7n31_20", "rhs_mag_9x19mm_7n21_20"], [], ""]
]];
_policeLoadoutData set ["sidearms", [
    ["rhsusf_weap_m1911a1",    "", "", "", ["rhsusf_mag_7x45acp_MHP"], [], ""],
    ["rhs_weap_makarov_pm", "", "", "", ["rhs_mag_9x18_8_57N181S"], [], ""],
    ["rhs_weap_makarov_pm", "", "", "", ["rhs_mag_9x18_8_57N181S"], [], ""],
    ["rhs_weap_makarov_pm", "", "", "", ["rhs_mag_9x18_8_57N181S"], [], ""]
]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;

// define baseline equipment

private _militiaUniforms = [
    "U_BG_Guerrilla_6_1",
    "Aegis_U_lxWS_ION_Casualtna_F",
    "U_B_ION_Uniform_01_tshirt_black_F",
    "rhsgref_uniform_woodland_olive",
    "rhs_uniform_g3_blk",
    "rhs_uniform_g3_rgr"
];
private _militiaBags = [
    "B_AssaultPack_blk",
    "B_AssaultPack_rgr",
    "B_AssaultPack_khk",
    "B_AssaultPack_sgg",
    "rhsusf_falconii"
];
private _militiaLargeBags = [
    "B_FieldPack_oli",
    "rhs_rd54",
    "rhs_rk_sht_30_olive",
    "rhs_rk_sht_30_olive_engineer_empty",
    "UMBTS_Olive",
    "rhs_assault_umbts",
    "UMBTS_Olive_engineer"
];
private _militiaLeaderBags = [
    "B_AssaultPackSpec_blk",
    "B_AssaultPackSpec_rgr",
    "B_FieldPack_oli"
];
private _militiaVests = [
    "",
    "",
    "V_Rangemaster_belt",
    "V_Rangemaster_belt_oli",
    "rhsgref_chestrig",
    "rhsgref_chicom",
    "V_ChestrigF_blk",
    "V_ChestrigF_rgr",
    "V_ChestrigF_oli",
    "V_ChestrigF_khk",
    "Aegis_V_ChestrigEast_oli_F",
    "V_Pocketed_black_F",
    "V_BandollierB_rgr",
    "V_BandollierB_oli",
    "PRACS_SLA_6sh92",
    "PRACS_SLA_6sh92_R",
    "PRACS_SLA_6sh92_VOG"
];
private _militiaHeavyVests = [
    "V_TacVest_blk",
    "V_TacVest_camo",
    "V_TacVest_grn",
    "V_TacVest_oli"
];
private _militiaHelmets = [
    "rhssaf_bandana_smb",
    "H_Bandanna_gry",
    "H_Bandanna_khk",
    "H_Bandanna_sgg",
    "H_Watchcap_blk",
    "H_Watchcap_camo",
    "H_Watchcap_khk",
    "rhssaf_booniehat_woodland",
    "H_Booniehat_blk",
    "H_Booniehat_oli",
    "H_Cap_grn",
    "H_Cap_oli",
    "H_Cap_red",
    "rhs_headband",
    "Aegis_H_Milcap_mohs_grn_F"
];
private _militiaHeavyHelmets = [
    "rhsgref_helmet_M1_erdl",
    "rhsgref_helmet_M1_bare",
    "rhsgref_helmet_M1_bare_alt01",
    "rhsgref_helmet_M1_painted",
    "rhsgref_helmet_M1_painted_alt01"
];

// make equipment additions

if(_hasArtOfWar) then {
    _militiaLargeBags append [
        "B_CivilianBackpack_01_Everyday_Black_F"
    ];
};
if(_hasContact) then {
    _militiaUniforms append [
        "U_I_L_Uniform_01_deserter_F"
    ];
    _militiaBags append [
        "B_AssaultPack_eaf_F"
    ];
    _militiaLeaderBags append [
        "B_FieldPack_green_F"
    ];
    _militiaLargeBags append [
        "B_FieldPack_green_F"
    ];
    _militiaHelmets append [
        "H_Booniehat_mgrn"
    ];
};
if(_hasCSLA) then {
    _militiaUniforms append [
        "FIA_uniwld",
        "FIA_uniwld10",
        "FIA_uniwld7"
    ];
    _militiaBags append [
        "CSLA_bp85msn"
    ];
    _militiaHelmets append [
        "FIA_capGn",
        "FIA_Hairs_Brown",
        "FIA_Budajka"
    ];
};
if(_hasGM) then {
    _militiaUniforms append [
        "gm_xx_uniform_soldier_bdu_rolled_80_oli",
        "gm_xx_uniform_soldier_bdu_nogloves_80_oli",
        "gm_ge_uniform_soldier_tshirt_90_oli",
        "gm_xx_army_uniform_fighter_02_wdl",
        "gm_xx_army_uniform_fighter_01_oli",
        "gm_xx_army_uniform_fighter_04_wdl"
    ];
    _militiaHelmets append [
        "gm_ge_headgear_hat_boonie_oli",
        "gm_ge_headgear_hat_boonie_wdl",
        "gm_ge_headgear_hat_beanie_blk"
    ];
};
if(_hasSOG) then {
    _militiaUniforms append [
        "vn_b_uniform_macv_01_07",
        "vn_b_uniform_macv_01_04",
        "vn_b_uniform_macv_04_01",
        "vn_b_uniform_macv_05_07",
        "vn_b_uniform_macv_06_06",
        "vn_b_uniform_macv_06_07",
        "vn_b_uniform_nz_02_01",
        "vn_b_uniform_nz_05_01"
    ];
    _militiaLargeBags append [
        "vn_b_pack_p08_01"
    ];
    _militiaHelmets append [
        "vn_b_boonie_02_01",
        "vn_b_boonie_02_06",
        "vn_b_boonie_02_04",
        "vn_b_boonie_04_06",
        "vn_b_boonie_04_01",
        "vn_b_boonie_05_06",
        "vn_b_boonie_05_04",
        "vn_b_boonie_01_06",
        "vn_b_boonie_01_01",
        "vn_b_boonie_01_09"
    ];
    _militiaHeavyHelmets append [
        "vn_b_helmet_m1_01_01",
        "vn_b_helmet_m1_01_01",
        "vn_b_helmet_m1_01_01",
        "vn_b_helmet_m1_01_01",
        "vn_b_helmet_m1_01_01",
        "vn_b_helmet_m1_14_01",
        "vn_b_helmet_m1_02_01",
        "vn_b_helmet_m1_03_01"
    ];
};
if(_hasDGR) then {
    _militiaUniforms append [
        "dgr_uniform_pmc8",
        "dgr_uniform_pmc1"
    ];
};
if(_hasLawsOfWar) then {
    _militiaBags append [
        "B_LegStrapBag_black_F",
        "B_LegStrapBag_olive_F",
        "B_Messenger_Black_F",
        "B_Messenger_Olive_F"
    ];
};
if(_hasRF) then {
    _militiaHeavyVests append [
        "Aegis_V_TacVest_RigB_camo_RF",
        "Aegis_V_TacVest_RigB_grn_RF",
        "Aegis_V_TacVest_RigB_oli_RF",
        "V_TacVest_rig_blk_RF",
        "Aegis_V_TacVest_Rig_camo_RF",
        "Aegis_V_TacVest_Rig_grn_RF",
        "V_TacVest_rig_oli_RF"
    ];
};

// set final equipment

_militiaLoadoutData set ["uniforms", _militiaUniforms];
_militiaLoadoutData set ["vests", _militiaVests];
_militiaLoadoutData set ["heavyVests", _militiaHeavyVests];
_militiaLoadoutData set ["backpacks", _militiaBags];
_militiaLoadoutData set ["largeBackpacks", _militiaLargeBags];
_militiaLoadoutData set ["slBackpacks", _militiaLeaderBags];
_militiaLoadoutData set ["helmets", _militiaHelmets];
_militiaLoadoutData set ["heavyHelmets", _militiaHeavyHelmets];

// define baseline attachments

private _militiaRifleMuzzles = [
    "", 4,
    "rhs_acc_dtkakm", 6,
    "rhs_acc_dtk1l", 2
];
private _militiaCarbineMuzzles = [
    "", 2,
    "rhs_acc_uuk", 5,
    "rhs_acc_dtk1983", 2,
    "rhs_acc_dtk2", 1,
    "rhs_acc_pgs64_74un", 4
];
private _militiaAttachments = [
    "", 10,
    "rhs_acc_2dpZenit", 4
];
private _militiaOptics = [
    "", 10,
    "rhs_acc_pgo7v", 1,
    "rhs_acc_nita", 1,
    "rhs_acc_ekp1", 3
];
private _militiaOpticsRail = [
    "", 3,
    "Aegis_optic_1p87", 2,
    "rhs_acc_rakursPM", 3,
    "optic_Yorris", 1,
    "optic_Aco", 3,
    "rhs_acc_ekp8_18", 4,
    "rhsusf_acc_RX01", 1
];
private _militiaOptics_leader = [
    "", 3,
    "rhs_acc_1p29", 2,
    "rhs_acc_ekp1", 1,
    "rhs_acc_ekp8_02", 2,
    "rhs_acc_pgo7v", 3,
    "rhs_acc_1p78", 3
    // additional 3 for mag. optic
];
private _militiaOpticsRail_leader = [
    "", 1,
    "Aegis_optic_ICO", 3,
    "optic_MRCO", 1,
    "Aegis_optic_1p87", 2,
    "rhs_acc_ekp8_18", 2
];
private _militiaRifleMagazines = [
    "rhs_30Rnd_762x39mm_bakelite",
    "rhs_30Rnd_762x39mm_bakelite_89",
    "rhs_30Rnd_762x39mm_polymer",
    "rhs_30Rnd_762x39mm_polymer_89",
    "rhs_30Rnd_762x39mm",
    "rhs_30Rnd_762x39mm_89"
];
private _militiaCarbineMagazines = [
    "rhs_30Rnd_545x39_7N10_AK",
    "rhs_30Rnd_545x39_7N22_AK",
    "rhs_30Rnd_545x39_7N6_AK", 
    "rhs_30Rnd_545x39_7N6M_AK"
];
private _militiaGrenadeMagazines = [
    "rhs_VOG25",
    "rhs_VG40MD"
];

// make attachment additions
if(_hasJCAArsenal) then {
    _militiaOpticsRail append [
        "JCA_optic_MRO_black", 1
    ];
};
if(_hasRF) then {
    _militiaOpticsRail_leader append [
        "optic_VRCO_RF", 1
    ];
};
if(_hasGM) then {
    _militiaOpticsRail_leader append [
        "gm_c79a1_blk", 3
    ];
} else {
    _militiaOpticsRail_leader append [
        "rhsusf_acc_ELCAN", 3
    ];
};

// define baseline weapons

private _militiaSlRifles = [
    ["rhs_weap_akm",      _militiaRifleMuzzles, _militiaAttachments, "",                        _militiaRifleMagazines, [], ""], 1,
    ["rhs_weap_akmn",     _militiaRifleMuzzles, _militiaAttachments, _militiaOptics_leader,     _militiaRifleMagazines, [], ""], 8,
    ["rhs_weap_akmn_npz", _militiaRifleMuzzles, _militiaAttachments, _militiaOpticsRail_leader, _militiaRifleMagazines, [], ""], 4,
    ["rhs_weap_akms",     _militiaRifleMuzzles, _militiaAttachments, "",                        _militiaRifleMagazines, [], ""], 2
];
private _militiaRifles = [
    ["rhs_weap_akm",      _militiaRifleMuzzles, _militiaAttachments, "",                 _militiaRifleMagazines, [], ""], 2,
    ["rhs_weap_akmn",     _militiaRifleMuzzles, _militiaAttachments, _militiaOptics,     _militiaRifleMagazines, [], ""], 6,
    ["rhs_weap_akmn_npz", _militiaRifleMuzzles, _militiaAttachments, _militiaOpticsRail, _militiaRifleMagazines, [], ""], 1,
    ["rhs_weap_akms",     _militiaRifleMuzzles, _militiaAttachments, "",                 _militiaRifleMagazines, [], ""], 4
];
private _militiaCarbines = [
    ["rhs_weap_aks74u",  _militiaCarbineMuzzles, "", "",             _militiaCarbineMagazines, [], ""], 5,
    ["rhs_weap_aks74un", _militiaCarbineMuzzles, "", _militiaOptics, _militiaCarbineMagazines, [], ""], 1
];
private _militiaGrenadeLaunchers = [
    ["rhs_weap_akm_gp25",      _militiaRifleMuzzles, _militiaAttachments, "",                 _militiaRifleMagazines, _militiaGrenadeMagazines, ""], 4,
    ["rhs_weap_akmn_gp25",     _militiaRifleMuzzles, _militiaAttachments, _militiaOptics,     _militiaRifleMagazines, _militiaGrenadeMagazines, ""], 7,
    ["rhs_weap_akms_gp25",     _militiaRifleMuzzles, _militiaAttachments, "",                 _militiaRifleMagazines, _militiaGrenadeMagazines, ""], 2,
    ["rhs_weap_akmn_gp25_npz", _militiaRifleMuzzles, _militiaAttachments, _militiaOpticsRail, _militiaRifleMagazines, _militiaGrenadeMagazines, ""], 2
];
private _militiaSMGs = [
    ["rhs_weap_pp2000", "", "", ["", 65, "Aegis_optic_1p87", 25, "rhs_acc_rakursPM", 10], ["rhs_mag_9x19mm_7n31_20", "rhs_mag_9x19mm_7n21_20"], [], ""], 5
];
private _militiaLMGs = [
    ["rhs_weap_rpk74m",     ["rhs_acc_dtkrpk", 40, "", 10, "rhs_acc_dtk3", 20, "rhs_acc_uuk", 20, "rhs_acc_dtk1983", 10], "",     _militiaOptics_leader + _militiaOptics,     ["rhs_60Rnd_545X39_7N22_AK"], [], ""], 4,
    ["rhs_weap_rpk74m_npz", ["rhs_acc_dtkrpk", 40, "", 10, "rhs_acc_dtk3", 20, "rhs_acc_uuk", 20, "rhs_acc_dtk1983", 10], "", _militiaOpticsRail_leader + _militiaOpticsRail, ["rhs_60Rnd_545X39_7N22_AK"], [], ""], 1
];
private _militiaMarksmanRifles = [
    ["rhs_weap_m38",      "", "", "",                 ["rhsgref_5Rnd_762x54_m38"], [], ""], 3,
    ["rhs_weap_m38_rail", "", "", "rhs_acc_dh520x56", ["rhsgref_5Rnd_762x54_m38"], [], ""], 4
];
private _militiaSniperRifles = [
    ["rhs_weap_svdp",        "", "", ["rhs_acc_pso1m21", 50, "rhs_acc_pso1m2", 40, "rhs_acc_1pn93_1", 10], ["rhs_10Rnd_762x54mmR_7N14"], [], ""], 6,
    ["rhs_weap_svdp_wd",     "", "", ["rhs_acc_pso1m21", 50, "rhs_acc_pso1m2", 40, "rhs_acc_1pn93_1", 10], ["rhs_10Rnd_762x54mmR_7N14"], [], ""], 2,
    ["rhs_weap_svdp_npz",    "", "", "rhs_acc_dh520x56",                                                   ["rhs_10Rnd_762x54mmR_7N14"], [], ""], 3,
    ["rhs_weap_svdp_wd_npz", "", "", "rhs_acc_dh520x56",                                                   ["rhs_10Rnd_762x54mmR_7N14"], [], ""], 1
];
private _militiaSidearms = [
    ["hgun_Rook40_F", "", "", "", ["17Rnd_9x21_Mag"],        [], ""], 4,
    ["rhs_weap_6p53", "", "", "", ["rhs_18rnd_9x21mm_7N28"], [], ""], 6
];

// make weapon additions

if(_hasGM) then {
    _militiaSlRifles append [
        ["gm_akmn_wud",  ["", 90, "gm_bayonet_6x3_blk", 10], ["", 70, "gm_flashlightp2_wht_akhandguard_blu", 30], ["gm_zvn64_ak", 1, "gm_pka_dovetail_gry", 2, "gm_pka_dovetail_blk", 1] + _militiaOptics_leader, _militiaRifleMagazines, [], ""], 3,
        ["gm_akmsn_wud", ["", 90, "gm_bayonet_6x3_blk", 10], ["", 70, "gm_flashlightp2_wht_akhandguard_blu", 30], ["gm_zvn64_ak", 1, "gm_pka_dovetail_gry", 2, "gm_pka_dovetail_blk", 1] + _militiaOptics_leader, _militiaRifleMagazines, [], ""], 1
    ];
    _militiaRifles append [
        ["gm_akmn_wud",  ["", 90, "gm_bayonet_6x3_blk", 10], ["", 70, "gm_flashlightp2_wht_akhandguard_blu", 30], ["", 6, "gm_pka_dovetail_gry", 2, "gm_pka_dovetail_blk", 1, "gm_zvn64_ak", 5] + _militiaOptics, _militiaRifleMagazines, [], ""], 2,
        ["gm_akmsn_wud", ["", 90, "gm_bayonet_6x3_blk", 10], ["", 70, "gm_flashlightp2_wht_akhandguard_blu", 30], ["", 6, "gm_pka_dovetail_gry", 2, "gm_pka_dovetail_blk", 1, "gm_zvn64_ak", 5] + _militiaOptics, _militiaRifleMagazines, [], ""], 1
    ];
    _militiaGrenadeLaunchers append [
        ["gm_akm_pallad_wud", "", "", ["", 65, "gm_zvn65_alk", 35], _militiaRifleMagazines, ["gm_1rnd_40x47mm_he_ngo74", "1Rnd_Smoke_Grenade_shell"], ""], 2
    ];
    _militiaSMGs append [
        ["gm_pm63_blk", "", "", "", ["gm_25Rnd_9x18mm_B_pst_pm63_blk"], [], ""], 2
    ];
    _militiaSidearms append [
        ["gm_pm_blk", "", "", "", ["gm_8Rnd_9x18mm_B_pst_pm_blk"], [], ""], 9
    ];
};
if(_hasCSLA) then {
    _militiaRifles append [
        ["CSLA_Sa58P", "", "", "", ["CSLA_Sa58_30rnd_7_62vz43"], [], ""], 2,
        ["CSLA_Sa58V", "", "", "", ["CSLA_Sa58_30rnd_7_62vz43"], [], ""], 1
    ];
    _militiaGrenadeLaunchers append [
        ["CSLA_VG70", "", "", "", ["CSLA_Sa58_30rnd_7_62vz43"], ["CSLA_26_5vz70", "CSLA_26_5sigCrD"], ""], 1
    ];
    _militiaSidearms append [
        ["CSLA_Pi52",   "", "", "", ["CSLA_Pi52_8rnd_7_62Pi52"], [], ""], 5,
        ["CSLA_Pi75lr", "", "", "", ["CSLA_Pi75_15Rnd_9Luger"],  [], ""], 1,
        ["CSLA_Pi82",   "", "", "", ["CSLA_Pi82_12rnd_9Pi82"],   [], ""], 9,
        ["US85_1911",   "", "", "", ["US85_1911_7Rnd_045ACP"],   [], ""], 1
    ];
} else {
    _militiaRifles append [
        ["rhs_weap_savz58p_black", ["", 40, "rhsgref_acc_zendl", 60], "", "", ["rhs_30Rnd_762x39mm_Savz58"], [], ""], 2,
        ["rhs_weap_savz58v_black", ["", 40, "rhsgref_acc_zendl", 60], "", "", ["rhs_30Rnd_762x39mm_Savz58"], [], ""], 1
    ];
};
if(_hasApex && !_hasCSLA && !_hasGM) then {
    _militiaSidearms append [
        ["hgun_Pistol_01_F", "", "", "", ["10Rnd_9x21_Mag"], [], ""], 9
    ];
};
// set final weapons

_militiaLoadoutData set ["slRifles", _militiaSlRifles];
_militiaLoadoutData set ["rifles", _militiaRifles];
_militiaLoadoutData set ["carbines", _militiaCarbines];
_militiaLoadoutData set ["grenadeLaunchers", _militiaGrenadeLaunchers];
_militiaLoadoutData set ["SMGs", _militiaSMGs];
_militiaLoadoutData set ["machineGuns", _militiaLMGs];
_militiaLoadoutData set ["marksmanRifles", _militiaMarksmanRifles];
_militiaLoadoutData set ["sniperRifles", _militiaSniperRifles];
_militiaLoadoutData set ["sidearms", _militiaSidearms];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

_militaryMuzzles = [

];
_militaryAttachmentsBarrel = [

];
_militaryAttachmentsRail = [

];
_militaryOpticsDovetail = [

];
_militaryOpticsRail = [

];
_militaryUnderbarrels = [

];

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData set ["uniforms", ["ibr_U_B_yul_M88"]];
_militaryLoadoutData set ["vests", ["ibr_yul_vest"]];
_militaryLoadoutData set ["backpacks", ["B_AssaultPack_khk", "B_AssaultPack_rgr", "B_Carryall_oli", "B_FieldPack_oli", "B_Kitbag_rgr", "B_Kitbag_sgg", "B_TacticalPack_rgr", "B_TacticalPack_oli"]];
_militaryLoadoutData set ["largeBackpacks", []];
_militaryLoadoutData set ["slBackpacks", []];
_militaryLoadoutData set ["helmets", ["H_HelmetYu", "H_Booniehat_YU"]];
_militaryLoadoutData set ["binoculars", ["Binocular"]];

_militaryLoadoutData set ["rifles", [
    ["rhs_weap_ak74", "rhs_acc_dtk1983", "",                 "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],
    ["rhs_weap_ak74", "rhs_acc_dtk1983", "rhs_acc_2dpZenit", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],
    ["rhs_weap_ak74", "rhs_acc_dtk1983", "rhs_acc_2dpZenit", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],

    ["rhs_weap_ak74n", "rhs_acc_dtk1983", "",                 "",                ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],
    ["rhs_weap_ak74n", "rhs_acc_dtk3",    "",                 "rhs_acc_ekp8_02", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],
    ["rhs_weap_ak74n", "rhs_acc_dtk1983", "rhs_acc_2dpZenit", "rhs_acc_1p63",    ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],
    ["rhs_weap_ak74n", "rhs_acc_dtk1983", "rhs_acc_2dpZenit", "rhs_acc_pkas",    ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],
    
    ["rhs_weap_aks74", "rhs_acc_dtk1983", "",                 "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],
    ["rhs_weap_aks74", "rhs_acc_dtk3",    "rhs_acc_2dpZenit", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],
    ["rhs_weap_aks74", "rhs_acc_dtk1983", "rhs_acc_2dpZenit", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],

    ["rhs_weap_aks74n", "rhs_acc_dtk1983", "",                 "",                      ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],
    ["rhs_weap_aks74n", "rhs_acc_dtk3",    "",                 "rhs_acc_ekp1",          ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],
    ["rhs_weap_aks74n", "rhs_acc_dtk1983", "rhs_acc_2dpZenit", "rhs_acc_okp7_dovetail", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],
    ["rhs_weap_aks74n", "rhs_acc_dtk1983", "rhs_acc_2dpZenit", "rhs_acc_pkas",          ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],

    ["rhs_weap_savz58v_ris", "",                  "",                 "",                 ["rhs_30Rnd_762x39mm_Savz58"], [], ""],
    ["rhs_weap_savz58v_ris", "rhsgref_acc_zendl", "",                 "Aegis_optic_1p87", ["rhs_30Rnd_762x39mm_Savz58"], [], ""],
    ["rhs_weap_savz58v_ris", "rhsgref_acc_zendl", "rhs_acc_2dpZenit", "rhs_acc_ekp8_18",  ["rhs_30Rnd_762x39mm_Savz58"], [], ""],
    ["rhs_weap_savz58v_ris", "rhsgref_acc_zendl", "rhs_acc_2dpZenit", "optic_Yorris",     ["rhs_30Rnd_762x39mm_Savz58"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
    ["rhs_weap_aks74u", "rhs_acc_uuk",  "",  "",                ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],
    ["rhs_weap_aks74u", "rhs_acc_dtk3", "",  "",                ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],

    ["rhs_weap_aks74un", "rhs_acc_dtk1", "", "rhs_acc_pkas",    ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],
    ["rhs_weap_aks74un", "rhs_acc_uuk",  "", "rhs_acc_pkas",    ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],
    ["rhs_weap_aks74un", "rhs_acc_dtk1", "", "rhs_acc_ekp1",    ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""],
    ["rhs_weap_aks74un", "rhs_acc_dtk3", "", "rhs_acc_ekp8_02", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
    ["rhs_weap_ak74_gp25", "",                "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],
    ["rhs_weap_ak74_gp25", "rhs_acc_dtk3",    "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],
    ["rhs_weap_ak74_gp25", "rhs_acc_dtk1983 ", "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],

    ["rhs_weap_ak74n_gp25", "",                "", "",                      ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],
    ["rhs_weap_ak74n_gp25", "rhs_acc_dtk3",    "", "",                      ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],
    ["rhs_weap_ak74n_gp25", "rhs_acc_dtk1983 ", "", "rhs_acc_ekp1",          ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],
    ["rhs_weap_ak74n_gp25", "",                "", "rhs_acc_ekp8_02",       ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],
    ["rhs_weap_ak74n_gp25", "rhs_acc_dtk3",    "", "rhs_acc_ok97_dovetail", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],
    ["rhs_weap_ak74n_gp25", "rhs_acc_dtk1983 ", "", "rhs_acc_pkas",          ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],

    ["rhs_weap_aks74_gp25", "",                "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],
    ["rhs_weap_aks74_gp25", "rhs_acc_dtk3",    "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],
    ["rhs_weap_aks74_gp25", "rhs_acc_dtk1983 ", "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""]
]];
_militaryLoadoutData set ["SMGs", [
    ["KA_PP19", "", "", "",              ["KA_64Rnd_9x18_PMM_FMJ_mag "], [], ""],
    ["KA_PP19", "", "", "",              ["KA_64Rnd_9x18_PMM_FMJ_mag "], [], ""],
    ["KA_PP19", "", "", "KA_kobra_PP19", ["KA_64Rnd_9x18_PMM_FMJ_mag "], [], ""],

    ["rhs_weap_pp2000", "", "", "",                       ["rhs_mag_9x19mm_7n31_20", "rhs_mag_9x19mm_7n21_20"], [], ""],
    ["rhs_weap_pp2000", "", "", "Aegis_optic_1p87",       ["rhs_mag_9x19mm_7n31_20", "rhs_mag_9x19mm_7n21_20"], [], ""],
    ["rhs_weap_pp2000", "", "", "optic_Yorris",           ["rhs_mag_9x19mm_7n31_20", "rhs_mag_9x19mm_7n21_20"], [], ""],
    ["rhs_weap_pp2000", "", "", "rhs_acc_okp7_picatinny", ["rhs_mag_9x19mm_7n31_20", "rhs_mag_9x19mm_7n21_20"], [], ""]
]];
_militaryLoadoutData set ["machineGuns", [
    ["rhs_weap_rpk74m", "rhs_acc_dtkrpk", "",                 "",                ["rhs_45Rnd_545X39_7N10_AK", "rhs_45Rnd_545X39_7N22_AK", "rhs_45Rnd_545X39_7N6_AK", "rhs_45Rnd_545X39_7N6M_AK"], [], ""],
    ["rhs_weap_rpk74m", "rhs_acc_dtkrpk", "",                 "rhs_acc_1p63",    ["rhs_45Rnd_545X39_7N10_AK", "rhs_45Rnd_545X39_7N22_AK", "rhs_45Rnd_545X39_7N6_AK", "rhs_45Rnd_545X39_7N6M_AK"], [], ""],
    ["rhs_weap_rpk74m", "rhs_acc_dtk2",   "",                 "rhs_acc_pkas",    ["rhs_45Rnd_545X39_7N10_AK", "rhs_45Rnd_545X39_7N22_AK", "rhs_45Rnd_545X39_7N6_AK", "rhs_45Rnd_545X39_7N6M_AK"], [], ""],
    ["rhs_weap_rpk74m", "rhs_acc_dtk2",   "",                 "rhs_acc_ekp1",    ["rhs_45Rnd_545X39_7N10_AK", "rhs_45Rnd_545X39_7N22_AK", "rhs_45Rnd_545X39_7N6_AK", "rhs_45Rnd_545X39_7N6M_AK"], [], ""],
    ["rhs_weap_rpk74m", "rhs_acc_dtk2",   "rhs_acc_2dpZenit", "rhs_acc_pkas",    ["rhs_45Rnd_545X39_7N10_AK", "rhs_45Rnd_545X39_7N22_AK", "rhs_45Rnd_545X39_7N6_AK", "rhs_45Rnd_545X39_7N6M_AK"], [], ""],
    ["rhs_weap_rpk74m", "rhs_acc_dtkrpk", "rhs_acc_2dpZenit", "rhs_acc_ekp8_02", ["rhs_45Rnd_545X39_7N10_AK", "rhs_45Rnd_545X39_7N22_AK", "rhs_45Rnd_545X39_7N6_AK", "rhs_45Rnd_545X39_7N6M_AK"], [], ""],
    ["rhs_weap_rpk74m", "rhs_acc_dtkrpk", "rhs_acc_2dpZenit", "",                ["rhs_45Rnd_545X39_7N10_AK", "rhs_45Rnd_545X39_7N22_AK", "rhs_45Rnd_545X39_7N6_AK", "rhs_45Rnd_545X39_7N6M_AK"], [], ""],

    // probability to choose a pkm instead of an rpk is 2:1
    ["rhs_weap_pkm", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkm", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkm", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkm", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkm", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkm", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkm", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkm", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkm", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkm", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkm", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkm", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkm", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkm", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""]
]];
_militaryLoadoutData set ["marksmanRifles", [
    ["Aegis_srifle_SVD_f", "", "", "",                 ["10Rnd_762x54_Mag"], [], ""],
    ["Aegis_srifle_SVD_f", "", "", "rhs_acc_dh520x56", ["10Rnd_762x54_Mag"], [], ""],
    ["Aegis_srifle_SVD_f", "", "", "optic_SOS",        ["10Rnd_762x54_Mag"], [], ""]
]];
_militaryLoadoutData set ["sniperRifles", [
    ["rhs_weap_svds", "", "", "",                ["rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N14"], [], ""],
    ["rhs_weap_svds", "", "", "rhs_acc_pso1m2",  ["rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N14"], [], ""],
    ["rhs_weap_svds", "", "", "rhs_acc_pso1m21", ["rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N14"], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
    ["rhs_weap_6p53", "", "", "", ["rhs_18rnd_9x21mm_7N28", "rhs_18rnd_9x21mm_7N29"], [], ""]
]];

//////////////////////////
//  Elite Loadout Data  //
//////////////////////////

_eliteMuzzles = [

];
_eliteAttachmentsBarrel = [

];
_eliteAttachmentsRail = [

];
_eliteOpticsDovetail_squadLeader = [

];
_eliteOpticsRail_squadLeader = [

];
_eliteOpticsDovetail = [

];
_eliteOpticsRail = [

];
_eliteUnderbarrels = [

];

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData set ["uniforms", ["ibr_U_B_yul_M88"]];
_eliteLoadoutData set ["vests", ["ibr_yul_vest"]];
_eliteLoadoutData set ["backpacks", ["Aegis_B_patrolBackpack_grn_F", "Aegis_B_patrolBackpack_wdl_F", "Aegis_B_patrolBackpack_oli_F", "min_rf_backpack_green", "min_rf_backpack_green", "B_Carryall_oli", "B_Carryall_oli", "B_Carryall_oli", "B_Kitbag_wdl_F"]];
_eliteLoadoutData set ["slBackpacks", []];
_eliteLoadoutData set ["largeBackpacks", []];
_eliteLoadoutData set ["helmets", ["H_HelmetYu"]];
_eliteLoadoutData set ["binoculars", ["rhs_pdu4"]];

_eliteLoadoutData set ["rifles", [
    ["rhs_weap_ak74m", "rhs_acc_dtk1983", "rhs_acc_2dpZenit", "rhs_acc_pkas",          ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    ["rhs_weap_ak74m", "rhs_acc_dtk1",    "rhs_acc_perst1ik", "rhs_acc_1p63",          ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    ["rhs_weap_ak74m", "rhs_acc_dtk3",    "rhs_acc_2dpZenit", "rhs_acc_ekp8_02",       ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    ["rhs_weap_ak74m", "rhs_acc_dtk3",    "rhs_acc_2dpZenit", "rhs_acc_okp7_dovetail", ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    ["rhs_weap_ak74m", "rhs_acc_uuk",     "rhs_acc_2dpZenit", "rhs_acc_pkas",          ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    ["rhs_weap_ak74m", "rhs_acc_uuk",     "rhs_acc_2dpZenit", "rhs_acc_ekp8_02",       ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    ["rhs_weap_ak74m", "rhs_acc_uuk",     "rhs_acc_perst1ik", "rhs_acc_1pn93_2",       ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],

    ["rhs_weap_ak74m_npz", "rhs_acc_uuk", "rhs_acc_2dpZenit", "Aegis_optic_ICO",      ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    ["rhs_weap_ak74m_npz", "rhs_acc_dtk1983", "rhs_acc_perst1ik", "Aegis_optic_1p87", ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    ["rhs_weap_ak74m_npz", "rhs_acc_dtk3", "rhs_acc_2dpZenit", "rhs_acc_ekp8_18",     ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],

    ["rhs_weap_ak74m_zenitco01", "rhs_acc_uuk", "rhs_acc_perst3_2dp_h", "rhs_acc_ekp8_02", ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    ["rhs_weap_ak74m_zenitco01", "rhs_acc_uuk", "rhs_acc_perst3_2dp_h", "rhs_acc_pkas",    ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    
    ["rhs_weap_ak74m_zenitco01_b33", "rhs_acc_dtk3", "rhs_acc_perst3_2dp_h", "rhs_acc_okp7_picatinny", ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    ["rhs_weap_ak74m_zenitco01_b33", "rhs_acc_dtk1", "rhs_acc_perst3_2dp_h", "optic_Yorris",           ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    ["rhs_weap_ak74m_zenitco01_b33", "rhs_acc_uuk", "rhs_acc_perst3_2dp_h", "Aegis_optic_1p87",        ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""]
]];
_eliteLoadoutData set ["carbines", [
    ["rhs_weap_aks74un", "rhs_acc_dtk1", "", "rhs_acc_pkas",    ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    ["rhs_weap_aks74un", "rhs_acc_uuk",  "", "rhs_acc_pkas",    ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    ["rhs_weap_aks74un", "rhs_acc_dtk1", "", "rhs_acc_1p63",    ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    ["rhs_weap_aks74un", "rhs_acc_dtk3", "", "rhs_acc_ekp8_02", ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],

    ["arifle_AKSM_F", "", "", "", ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    ["arifle_AKSM_F", "", "", "", ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
    ["rhs_weap_ak74m_gp25", "rhs_acc_dtk1983", "rhs_acc_2dpZenit", "rhs_acc_pkas",          ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""],
    ["rhs_weap_ak74m_gp25", "rhs_acc_dtk1",    "rhs_acc_2dpZenit", "rhs_acc_1p63",          ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""],
    ["rhs_weap_ak74m_gp25", "rhs_acc_dtk3",    "rhs_acc_2dpZenit", "rhs_acc_ekp8_02",       ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""],
    ["rhs_weap_ak74m_gp25", "rhs_acc_dtk3",    "rhs_acc_2dpZenit", "rhs_acc_okp7_dovetail", ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""],
    ["rhs_weap_ak74m_gp25", "rhs_acc_uuk",     "rhs_acc_2dpZenit", "rhs_acc_pkas",          ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""],
    ["rhs_weap_ak74m_gp25", "rhs_acc_uuk",     "rhs_acc_2dpZenit", "rhs_acc_ekp8_02",       ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""],
    ["rhs_weap_ak74m_gp25", "rhs_acc_uuk",     "rhs_acc_2dpZenit", "rhs_acc_1pn93_2",       ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""],

    ["rhs_weap_ak74m_gp25_npz", "rhs_acc_uuk", "rhs_acc_2dpZenit", "Aegis_optic_ICO",  ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""],
    ["rhs_weap_ak74m_gp25_npz", "rhs_acc_uuk", "rhs_acc_2dpZenit", "Aegis_optic_1p87", ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""],
    ["rhs_weap_ak74m_gp25_npz", "rhs_acc_uuk", "rhs_acc_2dpZenit", "rhs_acc_ekp8_18",  ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""]
]];
_eliteLoadoutData set ["SMGs", [
    ["KA_PP19", "", "", "",              ["KA_64Rnd_9x18_PMM_FMJ_mag "], [], ""],
    ["KA_PP19", "", "", "KA_kobra_PP19", ["KA_64Rnd_9x18_PMM_FMJ_mag "], [], ""],
    ["KA_PP19", "", "", "KA_kobra_PP19", ["KA_64Rnd_9x18_PMM_FMJ_mag "], [], ""],
    ["KA_PP19", "", "", "KA_kobra_PP19", ["KA_64Rnd_9x18_PMM_FMJ_mag "], [], ""],

    ["KA_PP19_MTK83", "", "", "optic_Yorris",     ["KA_64Rnd_9x18_PMM_FMJ_mag "], [], ""],
    ["KA_PP19_MTK83", "", "", "Aegis_optic_1p87", ["KA_64Rnd_9x18_PMM_FMJ_mag "], [], ""],
    ["KA_PP19_MTK83", "", "", "rhs_acc_ekp8_18",  ["KA_64Rnd_9x18_PMM_FMJ_mag "], [], ""],
    ["KA_PP19_MTK83", "", "", "rhs_acc_rakurspm", ["KA_64Rnd_9x18_PMM_FMJ_mag "], [], ""],

    ["rhs_weap_pp2000", "", "", "optic_Yorris", ["rhs_mag_9x19mm_7n31_20", "rhs_mag_9x19mm_7n21_20"], [], ""]
]];
_eliteLoadoutData set ["machineGuns", [
   ["rhs_weap_pkp", "", "", "",                      ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
   ["rhs_weap_pkp", "", "", "rhs_acc_ekp8_02",       ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
   ["rhs_weap_pkp", "", "", "rhs_acc_pkas",          ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
   ["rhs_weap_pkp", "", "", "rhs_acc_okp7_dovetail", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
   ["rhs_weap_pkp", "", "", "rhs_acc_nita",          ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
   ["rhs_weap_pkp", "", "", "rhs_acc_1p63",          ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
   ["rhs_weap_pkp", "", "", "rhs_acc_1p29",          ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
   ["rhs_weap_pkp", "", "", "rhs_acc_1p78",          ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
   ["rhs_weap_pkp", "", "", "rhs_acc_pso1m21_pkp",   ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],

    //chance to get a pkp instead of a pkm is 3:1
   ["rhs_weap_pkm", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
   ["rhs_weap_pkm", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
   ["rhs_weap_pkm", "", "", "", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""]
]];
_eliteLoadoutData set ["marksmanRifles", [
    ["rhs_weap_vss", "", "", "rhs_acc_pso1m21", ["rhs_10Rnd_9x39mm_SP5"], [], ""],
    ["rhs_weap_vss", "", "", "rhs_acc_1p29",    ["rhs_10Rnd_9x39mm_SP5"], [], ""],

    ["rhs_weap_vss_grip", "", "rhs_acc_perst_1ik_ris", "rhs_acc_1pn93_1", ["rhs_10Rnd_9x39mm_SP5"], [], "rhs_acc_grip_ffg2"],
    ["rhs_weap_vss_grip", "", "rhs_acc_perst_1ik_ris", "rhs_acc_1pn34",   ["rhs_10Rnd_9x39mm_SP5"], [], "rhs_acc_grip_rk2"],
    ["rhs_weap_vss_grip", "", "",                  "rhs_acc_pso1m21", ["rhs_10Rnd_9x39mm_SP5"], [], "rhs_acc_grip_ffg2"],
    ["rhs_weap_vss_grip", "", "",                  "rhs_acc_1p29",    ["rhs_10Rnd_9x39mm_SP5"], [], "rhs_acc_grip_rk2"],

    ["rhs_weap_vss_grip_npz", "", "",                  "rhs_acc_dh520x56",     ["rhs_10Rnd_9x39mm_SP5"], [], "rhs_acc_grip_rk2"],
    ["rhs_weap_vss_grip_npz", "", "rhs_acc_perst_1ik_ris", "MMM_acc_IT_1TWS_615A", ["rhs_10Rnd_9x39mm_SP5"], [], "rhs_acc_grip_ffg2"],
    ["rhs_weap_vss_grip_npz", "", "",                  "rhs_acc_dh520x56",     ["rhs_10Rnd_9x39mm_SP5"], [], "rhs_acc_grip_ffg2"]
]];
_eliteLoadoutData set ["sniperRifles", [
    ["rhs_weap_svdp", "",              "", "rhs_acc_pso1m2", ["rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmr_7N14"], [], ""],
    ["rhs_weap_svdp", "",              "", "rhs_acc_pso1m2", ["rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmr_7N14"], [], ""],
    ["rhs_weap_svdp", "rhs_acc_tgpv2", "", "rhs_acc_pso1m2", ["rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmr_7N14"], [], ""],
    ["rhs_weap_svdp", "",              "", "rhs_acc_1pn34",  ["rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmr_7N14"], [], ""],
    ["rhs_weap_svdp", "rhs_acc_tgpv2", "", "rhs_acc_1pn34",  ["rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmr_7N14"], [], ""],

    ["rhs_weap_svdp_npz", "",              "", "rhs_acc_dh520x56",     ["rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmr_7N14"], [], ""],
    ["rhs_weap_svdp_npz", "",              "", "MMM_acc_IT_1TWS_615A", ["rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmr_7N14"], [], ""],
    ["rhs_weap_svdp_npz", "rhs_acc_tgpv2", "", "rhs_acc_dh520x56",     ["rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmr_7N14"], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
    ["rhs_weap_pya", "", "", "", ["rhs_mag_9x19_17", "rhs_mag_9x19_7n31_17"], [], ""],
    ["rhs_weap_pya", "", "", "", ["rhs_mag_9x19_17", "rhs_mag_9x19_7n31_17"], [], ""],
    ["rhs_weap_pya", "", "", "", ["rhs_mag_9x19_17", "rhs_mag_9x19_7n31_17"], [], ""],

    ["rhs_weap_pp2000_folded", "", "", "Aegis_optic_1p87", ["rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n31_44"], [], ""]
]];

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfMuzzles = [
    "rhs_acc_dtk1", 2,
    "rhs_acc_dtk3", 3,
    "rhs_acc_pbs1", 6,
    "rhs_acc_dtk4long", 4,
    "", 2
];
private _sfAttachmentsBarrel = [
    "rhs_acc_perst1ik", 20,
    "rhs_acc_2dpZenit", 3,
    "", 1
];
private _sfAttachmentsRail = [
    "rhs_acc_perst3", 11,
    "rhs_acc_perst3_2dp_h", 6,
    "rhs_acc_perst1ik_ris", 8,
    "rhs_acc_2dpZenit_ris", 1,
    "", 3
];
private _sfOpticsDovetail_squadLeader = [
    "rhs_acc_1p29", 3,
    "rhs_acc_1p63", 5,
    "rhs_acc_1p78", 3,
    "rhs_acc_ekp8_02", 2,
    "rhs_acc_pgo7v", 1,
    "rhs_acc_pkas", 6
];
private _sfOpticsRail_squadLeader = [
    "Aegis_optic_1p87", 1,
    "rhs_acc_rakursPM", 1,
    "rhsusf_acc_ELCAN", 4,
    "optic_ERCO_blk_F", 3,
    "optic_MRCO", 3
];
private _sfOpticsDovetail = [
    "rhs_acc_ekp1", 4,
    "rhs_acc_ekp8_02", 7,
    "rhs_acc_okp7_dovetail", 4,
    "rhs_acc_pkas", 8,
    "rhs_acc_1p63", 3,
    "rhs_acc_pgo7v", 2,
    "rhs_acc_nita", 1
];
private _sfOpticsRail = [
    "rhs_acc_rakursPM", 2,
    "Aegis_optic_1p87", 6,
    "optic_ACO", 3,
    "rhs_acc_ekp8_18", 4,
    "Aegis_optic_ICO", 1,
    "rhs_acc_okp7_picatinny", 5,
    "rhsusf_acc_RX01", 1
];
private _sfUnderbarrels = [
    "rhs_acc_grip_ffg2", 5,
    "rhs_acc_grip_rk2", 2,
    "rhs_acc_grip_rk6", 4,
    "rhsusf_acc_rvg_blk", 2,
    "", 4
];


private _sfSlRifles = [
    ["rhs_weap_ak103", _sfMuzzles, _sfAttachmentsBarrel, _sfOpticsDovetail_squadLeader, ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""], 1,
    ["rhs_weap_ak103_npz", _sfMuzzles, _sfAttachmentsBarrel, _sfOpticsRail_squadLeader, ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""], 1,
    ["rhs_weap_ak103_zenitco01", _sfMuzzles, _sfAttachmentsRail, _sfOpticsDovetail_squadLeader, ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], _sfUnderbarrels], 2,
    ["rhs_weap_ak103_zenitco01_b33", _sfMuzzles, _sfAttachmentsRail, _sfOpticsRail_squadLeader, ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], _sfUnderbarrels], 3,
    ["rhs_weap_asval", "", "", _sfOpticsDovetail_squadLeader, ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], ""], 1,
    ["rhs_weap_asval_grip", "", ["rhs_acc_2dpZenit_ris", 1, "rhs_acc_perst1ik_ris", 2], _sfOpticsDovetail_squadLeader, ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], _sfUnderbarrels], 2,
    ["rhs_weap_asval_grip_npz", "", ["rhs_acc_2dpZenit_ris", 1, "rhs_acc_perst1ik_ris", 2], _sfOpticsRail_squadLeader, ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], _sfUnderbarrels], 2,
    ["rhs_weap_asval_npz", "", "", _sfOpticsRail_squadLeader, ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], ""], 1
];
private _sfRifles = [
    ["rhs_weap_ak103", _sfMuzzles, _sfAttachmentsBarrel, _sfOpticsDovetail, ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""], 3,
    ["rhs_weap_ak103_npz", _sfMuzzles, _sfAttachmentsBarrel, _sfOpticsRail, ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""], 2,
    ["rhs_weap_ak103_zenitco01", _sfMuzzles, _sfAttachmentsRail, _sfOpticsDovetail, ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], _sfUnderbarrels], 5,
    ["rhs_weap_ak103_zenitco01_b33", _sfMuzzles, _sfAttachmentsRail, _sfOpticsRail, ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], _sfUnderbarrels], 7,
    ["rhs_weap_asval", "", "", _sfOpticsDovetail, ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], ""], 2,
    ["rhs_weap_asval_grip", "", ["rhs_acc_2dpZenit_ris", 2, "rhs_acc_perst1ik_ris", 1], _sfOpticsDovetail, ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], _sfUnderbarrels], 2,
    ["rhs_weap_asval_grip_npz", "", ["rhs_acc_2dpZenit_ris", 2, "rhs_acc_perst1ik_ris", 1], _sfOpticsRail , ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], _sfUnderbarrels], 4,
    ["rhs_weap_asval_npz", "", "", _sfOpticsRail, ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], ""], 1
];
private _sfCarbines = [
    ["rhs_weap_ak104", _sfMuzzles, _sfAttachmentsBarrel, _sfOpticsDovetail, ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""], 5,
    ["rhs_weap_ak104_npz", _sfMuzzles, _sfAttachmentsBarrel, _sfOpticsRail, ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""], 4,
    ["rhs_weap_ak104_zenitco01", _sfMuzzles, _sfAttachmentsRail, _sfOpticsDovetail, ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], _sfUnderbarrels], 3,
    ["rhs_weap_ak104_zenitco01_b33", _sfMuzzles, _sfAttachmentsRail, _sfOpticsRail, ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], _sfUnderbarrels], 1
];
private _sfGLs = [
    ["rhs_weap_ak103_gp25", _sfMuzzles, "", _sfOpticsDovetail, ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40TB", "rhs_VG40OP_white", "rhs_VG40MD", "rhs_GRD40_White", "rhs_GRD40_red"], ""], 2,
    ["rhs_weap_ak103_gp25_npz", _sfMuzzles, "", _sfOpticsRail, ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40TB", "rhs_VG40OP_white", "rhs_VG40MD", "rhs_GRD40_White", "rhs_GRD40_red"], ""], 3
];
private _sfSMGs = [
    ["KA_PP19_MTK83", "KA_PBS_1_Silencer_PP19", "", _sfOpticsRail, ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""], 2,
    ["KA_PP19_MTK83", "KA_Vityaz_PBS_1_Silencer", "KA_Vityaz_Laser_IR", _sfOpticsRail, ["KA_30Rnd_9x19_7N31_AP_Mag", "KA_30Rnd_9x19_LIBRASNAIL_AP_Mag"], [], ""], 5
];
private _sfLMGs = [
    ["rhs_weap_pkp", "", "", _sfOpticsDovetail + ["rhs_acc_1p78", 3, "rhs_acc_1p29", 4], ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""]
];
private _sfMarksmanRifles = [
    ["rhs_weap_vss", "", "", ["rhs_acc_1pn93_1", 1, "rhs_acc_pso1m21", 2, "rhs_acc_1p29", 1], ["rhs_10Rnd_9x39mm_SP5", "rhs_10Rnd_9x39mm_SP6"], [], ""], 2,
    ["rhs_weap_vss_grip", "", "rhs_acc_perst_1ik_ris", ["rhs_acc_1pn93_1", 1, "rhs_acc_pso1m21", 2, "rhs_acc_1p29", 1], ["rhs_10Rnd_9x39mm_SP5", "rhs_10Rnd_9x39mm_SP6"], [], _sfUnderbarrels], 7,
    ["rhs_weap_vss_grip_npz", "", "rhs_acc_perst_1ik_ris", ["rhs_acc_dh520x56", 3, "MMM_acc_IT_1TWS_615A", 1], ["rhs_10Rnd_9x39mm_SP5", "rhs_10Rnd_9x39mm_SP6"], [], _sfUnderbarrels], 3
];
private _sfSniperRifles = [
    ["MMM_weap_SV98M", "", "", "rhs_acc_dh520x56", ["MMM_mag_SV98_7N1", "MMM_mag_SV98_7N14"], [], ""]
];
private _sfSidearms = [
    ["rhs_weap_pb_6p9", "rhs_acc_6p9_suppressor", "", "", ["rhs_mag_9x18_8_57N181S"], [], ""], 5, 
    ["rhs_weap_pya", "", "", "", ["rhs_mag_9x19_17", "rhs_mag_9x19_7n31_17"], [], ""], 1,
    ["rhs_weap_pp2000_folded", "", "", _sfOpticsRail, ["rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n31_44"], [], ""], 2
];

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData set ["uniforms", ["rhs_uniform_flora_patchless"]];
_sfLoadoutData set ["vests", ["rhs_6b23_6sh92", "rhs_6b23_6sh92_headset", "rhs_6b23_6sh92_radio", "rhs_6b23_6sh92_vog", "rhs_6b23_6sh92_vog_headset", "rhs_6b23_engineer", "rhs_6b23_medic", "rhs_6b23_rifleman", "rhs_6b23_sniper", "rhs_6b23_vydra_3m", "rhs_6b23_6sh116_flora", "rhs_6b23_6sh116_vog_flora"]];
_sfLoadoutData set ["backpacks", ["min_rf_backpack_green", "min_rf_backpack_green", "Aegis_B_patrolBackpack_wdl_F", "rhs_tortila_olive", "rhs_tortila_olive", "rhs_tortila_olive", "min_rf_torna_vsr", "B_Carryall_oli"]];
_sfLoadoutData set ["largeBackpacks", []];
_sfLoadoutData set ["slBackpacks", []];
_sfLoadoutData set ["helmets", ["rhs_6b26", "rhs_6b26_ess", "rhs_6b7_1m_flora"]];
_sfLoadoutData set ["binoculars", ["rhs_pdu4"]];

_sfLoadoutData set ["slRifles", _sfSlRifles];
_sfLoadoutData set ["rifles", _sfRifles];
_sfLoadoutData set ["carbines", _sfCarbines];
_sfLoadoutData set ["grenadeLaunchers", _sfGLs];
_sfLoadoutData set ["SMGs", _sfSMGs];
_sfLoadoutData set ["machineGuns", _sfLMGs];
_sfLoadoutData set ["marksmanRifles", _sfMarksmanRifles];
_sfLoadoutData set ["sniperRifles", _sfSniperRifles];
_sfLoadoutData set ["sidearms", _sfSidearms];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["uniforms", ["ibr_U_B_yul_M88"]];
_crewLoadoutData set ["vests", ["ibr_yul_vest"]];
_crewLoadoutData set ["helmets", ["H_HelmetYu"]];

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["U_I_pilotCoveralls"]];
_pilotLoadoutData set ["vests", []];
_pilotLoadoutData set ["helmets", ["H_PilotHelmetFighter_O"]];


/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////
//These define the loadouts for different unit types.
//For example, rifleman, grenadier, squad leader, etc.
//In 95% of situations, you *should not need to edit these*.
//Almost all factions can be set up just by modifying the loadout data above.
//However, these exist in case you really do want to do a lot of custom alterations.
private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 15, "heavyHelmets", 85]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "faceEquipment", 60, "faceCovering", 8, "neckCovering", 20, "eyeCovering", 10]] call _fnc_setFacewear;
    [selectRandomWeighted ["vests", 58, "heavyVests", 42]] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandomWeighted ["backpacks", 20, "slBackpacks", 80]] call _fnc_setBackpack;

    [selectRandomWeighted ["rifles", 40, "slRifles", 60]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["binoculars"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 25, "faceCovering", 25, "neckCovering", 12.5, "eyeCovering", 37.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 90, "backpacks", 10]] call _fnc_setBackpack;

    [selectRandomWeighted ["rifles", 60, "carbines", 40]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["faceEquipment"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;


    [selectRandomWeighted ["rifles", 40, "carbines", 60]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
    [selectRandomWeighted ["helmets", 90, "heavyHelmets", 10]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 38, "eyeCovering", 52, "neckCovering", 10]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted ["backpacks", 40, "largeBackpacks", 60]] call _fnc_setBackpack;
    [selectRandomWeighted ["rifles", 12.5, "carbines", 50, "SMGs", 37.5]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_medic"] call _fnc_addItemSet;
    ["items_medic_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
    [selectRandomWeighted ["helmets", 65, "heavyHelmets", 35]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 12.5, "neckCovering", 50, "eyeCovering", 12.5, "faceCovering", 25]] call _fnc_setFacewear;
    [selectRandomWeighted ["vests", 65, "heavyVests", 35]]call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 25, "backpacks", 50, "largeBackpacks", 25]] call _fnc_setBackpack;

    ["grenadeLaunchers"] call _fnc_setPrimary;
    
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_grenadier_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 4] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
    [selectRandomWeighted ["helmets", 85, "heavyHelmets", 15]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 20, "faceCovering", 40, "eyeCovering", 7, "neckCovering", 33]] call _fnc_setFacewear;
    [selectRandomWeighted ["vests", 30, "heavyVests", 70]] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted ["backpacks", 60, "largeBackpacks", 40]] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;


    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_explosivesExpert_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["lightExplosives", 2] call _fnc_addItem;
    if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 38, "eyeCovering", 38, "faceCovering", 8, "neckCovering", 16]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 65, "backpacks", 35]] call _fnc_setBackpack;

    [selectRandomWeighted ["carbines", 5, "SMGs", 3]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_engineer_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 12, "faceCovering", 40, "eyeCovering", 35, "neckCovering", 13]] call _fnc_setFacewear;
    [selectRandomWeighted ["vests", 70, "heavyVests", 30]] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandomWeighted ["rifles", 3, "carbines", 2]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 2] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
    [selectRandomWeighted ["helmets", 60, "heavyHelmets", 40]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 8, "faceCovering", 50, "eyeCovering", 25, "neckCovering", 17]] call _fnc_setFacewear;
    [selectRandomWeighted ["vests", 30, "heavyVests", 70]] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted ["backpacks", 1, "largeBackpacks", 3]] call _fnc_setBackpack;

    [selectRandomWeighted ["rifles", 5, "carbines", 2]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["ATLaunchers"] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
    [selectRandomWeighted ["helmets", 55, "heavyHelmets", 45]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 8, "faceCovering", 50, "eyeCovering", 25, "neckCovering", 17]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted ["backpacks", 2, "largeBackpacks", 7]] call _fnc_setBackpack;

    [selectRandomWeighted ["rifles", 2, "carbines", 3]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    [selectRandomWeighted ["helmets", 42, "heavyHelmets", 58]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 8, "neckCovering", 42, "eyeCovering", 33, "faceCovering", 17]] call _fnc_setFacewear;
    [selectRandomWeighted ["vests", 65, "heavyVests", 35]] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted ["backpacks", 3, "largeBackpacks", 1]] call _fnc_setBackpack;

    ["machineGuns"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_machineGunner_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 63, "neckCovering", 37]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["marksmanRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_marksman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    [selectRandomWeighted ["helmets", 3, "sniHats", 2]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 43, "faceCovering", 37, "neckCovering", 20]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandomWeighted ["sniperRifles", 4, "marksmanRifles", 1]] call _fnc_setPrimary;
    ["primary", 7] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["SMGs"] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_police_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_crew_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
    ["traitorHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 75, "neckCovering", 10, "eyeCovering", 15]] call _fnc_setFacewear;
    ["traitorVests"] call _fnc_setVest;
    ["traitorUniforms"] call _fnc_setUniform;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};
private _officerTemplate = {
    ["officerHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1]] call _fnc_setFacewear;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;
    
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};
private _patrolSniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    ["cloakGlasses"] call _fnc_setFacewear;
    ["cloakVests"] call _fnc_setVest;
    ["cloakUniforms"] call _fnc_setUniform;

    ["cloakRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["cloakSidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _patrolSpotterTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    ["cloakGlasses"] call _fnc_setFacewear;
    ["cloakVests"] call _fnc_setVest;
    ["cloakUniforms"] call _fnc_setUniform;

    ["cloakCarbines"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["cloakSidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];


[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
    params ["_name", "_loadoutTemplate"];
    private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
    private _finalName = _prefix + _name;
    [_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate, [], [_prefix]],
	["Standard", _policeTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate, [], ["other"]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Pilot", _crewTemplate, [], ["other"]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _officerTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate, [], ["other"]]], _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;