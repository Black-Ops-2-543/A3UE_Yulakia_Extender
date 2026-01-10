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

#include "..\..\script_component.hpp" // TAKE NOTE OF THIS. WITHOUT THIS, YOU CAN'T USE MACROS LIKE QPATHTOFOLDER.

////////////////////////////
//   Rivals Information   //
////////////////////////////

["name", "Spetsnaz" ] call _fnc_saveToTemplate;
["nameLeader", "Vladimir Gusanov"] call _fnc_saveToTemplate;

//////////////////////////////////////
//       	Identities    			//
//////////////////////////////////////

#include "CharacterData\YULAK_Eastern_Identities.sqf"

//////////////////////////
//       Vehicles       //
//////////////////////////

private _UAVs = ["O_R_UAV_01_F"];
if (_hasWs) then {
	_UAVs append ["Aegis_O_R_UAV_02_lxWS"];
};

["ammobox", "Box_FIA_Support_F"] call _fnc_saveToTemplate;
["surrenderCrate", "Box_Syndicate_Wps_F"] call _fnc_saveToTemplate;

["vehiclesRivalsLightArmed", ["FP_Spetsnaz_Alpha_UAZ_Kord", "FP_Spetsnaz_Alpha_Tigr_Armed"]] call _fnc_saveToTemplate;
["vehiclesRivalsTrucks", ["O_R_Truck_03_covered_F"]] call _fnc_saveToTemplate;
["vehiclesRivalsCars", ["FP_Spetsnaz_Alpha_Tigr"]] call _fnc_saveToTemplate;
["vehiclesRivalsAPCs", ["RUS_GRU_btr82a", "TV_kgn25_NSVT", "O_R_APC_Wheeled_04_cannon_ard_F"]] call _fnc_saveToTemplate;
["vehiclesRivalsTanks", ["rhs_t14_tv", "rhs_t90sm_tv"]] call _fnc_saveToTemplate;
["vehiclesRivalsHelis", ["RHS_Mi8mt_vvs"]] call _fnc_saveToTemplate;			
["vehiclesRivalsUavs", _UAVs] call _fnc_saveToTemplate;			

["staticLowWeapons", ["FP_Spetsnaz_Alpha_Turret_Kord_Low", "FP_Spetsnaz_Alpha_Turret_AGS30"]] call _fnc_saveToTemplate;
["staticAT", ["FP_Spetsnaz_Alpha_Turret_Kornet"]] call _fnc_saveToTemplate;
["staticMortars", ["rhs_2b14_82mm_vdv"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "rhs_mag_3vo18_10"] call _fnc_saveToTemplate;

["handGrenadeAmmo", ["rhs_mag_rgn", "rhs_mag_rgo"]] call _fnc_saveToTemplate;
["mortarAmmo", ["Sh_82mm_AMOS"]] call _fnc_saveToTemplate;

["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine", "APERSBoundingMine"]] call _fnc_saveToTemplate;

["variants", [
    ["O_R_Truck_03_covered_F", ["WoodlandHex", 1]],
	["RUS_GRU_btr82a", ["tricolourhard", 1]],
	["O_R_APC_Wheeled_04_cannon_ard_F", ["WoodlandHex", 1]]
]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

/*
["Weapon Classname", "Muzzle Classname", "Accessory Classname", "Scope Classname", ["Magazine Classname 1", "Magazine Classname 2", ...], ["GL Magazine Classname 1", ...], "Bipod Classname"]
*/
private _loadoutData = call _fnc_createLoadoutData;
private _rifles = [
	["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "optic_MRCO",             ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_ffg2"],
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "optic_MRCO",             ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhsusf_acc_grip2"],
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "optic_Aco",              ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_ffg2"],
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "rhsusf_acc_su230a_mrds", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_rk6"],
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "rhsusf_acc_su230a_mrds", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_acc_grip_ffg2"],
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "Aegis_optic_1p87",       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhsusf_acc_grip2"],
	["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "Aegis_optic_ICO",        ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_grip_ffg2"],
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "Aegis_optic_ICO",        ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_grip_rk6"],
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "Aegis_optic_1p87",       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_grip_rk2"],
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "Aegis_optic_1p87",       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_grip_rk6"],
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "Aegis_optic_1p87",       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_grip_ffg2"],
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "rhs_acc_okp7_picatinny", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_grip_rk2"],
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "rhs_acc_okp7_picatinny", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_grip_rk2"],
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "Aegis_optic_ICO",        ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_grip_rk6"],
    ["MMM_weap_AK12", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "optic_Aco",              ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "rhs_grip_ffg2"]
];
private _carbines = [
	["arifle_AK12U_F", "rhs_acc_tgpa", "rhs_acc_perst1ik_ris", "Aegis_optic_1p87",       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "bipod_02_F_blk"],
    ["arifle_AK12U_F", "rhs_acc_tgpa", "rhs_acc_perst1ik_ris", "optic_Aco",              ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "bipod_02_F_blk"],
    ["arifle_AK12U_F", "rhs_acc_tgpa", "rhs_acc_perst1ik_ris", "rhs_acc_rakursPM",       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "bipod_02_F_blk"],
    ["arifle_AK12U_F", "rhs_acc_tgpa", "rhs_acc_perst1ik_ris", "rhs_acc_okp7_picatinny", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "bipod_02_F_blk"],
    ["arifle_AK12U_F", "rhs_acc_tgpa", "rhs_acc_perst1ik_ris", "rhs_acc_ekp8_18",        ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "bipod_02_F_blk"],
    ["arifle_AK12U_F", "rhs_acc_tgpa", "rhs_acc_perst1ik_ris", "optic_Aco",              ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "bipod_02_F_blk"],
    ["arifle_AK12U_F", "rhs_acc_tgpa", "rhs_acc_perst1ik_ris", "Aegis_optic_1p87",       ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "bipod_02_F_blk"],
    ["arifle_AK12U_F", "rhs_acc_tgpa", "rhs_acc_perst1ik_ris", "rhs_acc_okp7_picatinny", ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], [], "bipod_02_F_blk"]
];
private _gls = [
	["MMM_weap_AK12_GP34", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "Aegis_optic_ICO",         ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], "rhs_grip_ffg2"],
    ["MMM_weap_AK12_GP34", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "Aegis_optic_ICO",         ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], "rhs_grip_rk6"],
    ["MMM_weap_AK12_GP34", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "Aegis_optic_1p87",        ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], "rhs_grip_rk2"],
    ["MMM_weap_AK12_GP34", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "Aegis_optic_1p87",        ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], "rhs_grip_rk6"],
    ["MMM_weap_AK12_GP34", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "Aegis_optic_1p87",        ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], "rhs_grip_ffg2"],
    ["MMM_weap_AK12_GP34", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "rhs_acc_okp7_picatinny",  ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], "rhs_grip_rk2"],
    ["MMM_weap_AK12_GP34", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "rhs_acc_okp7_picatinny",  ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], "rhs_grip_rk2"],
    ["MMM_weap_AK12_GP34", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "Aegis_optic_ICO",         ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], "rhs_grip_rk6"],
    ["MMM_weap_AK12_GP34", "MMM_acc_PMS", "rhs_acc_perst3_2dp_h", "optic_Aco",               ["MMM_mag_30rnd_545x39_AK12_7N10", "MMM_mag_30rnd_545x39_AK12_7N22", "MMM_mag_30rnd_545x39_AK12_7N6", "MMM_mag_30rnd_545x39_AK12_7N6M", "MMM_mag_30rnd_545x39_AK12_7U1"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_GDM40", "rhs_VG40OP_white", "rhs_GRD40_Red"], "rhs_grip_ffg2"]
];
private _mgs = [
	["LMG_min_rf_6p69", "", "", "optic_MRCO",             ["150Rnd_762x54_Box"], [], ""],
    ["LMG_min_rf_6p69", "", "", "optic_MRCO",             ["150Rnd_762x54_Box"], [], ""],
    ["LMG_min_rf_6p69", "", "", "Aegis_optic_ICO",        ["150Rnd_762x54_Box"], [], ""],
    ["LMG_min_rf_6p69", "", "", "Aegis_optic_ICO",        ["150Rnd_762x54_Box"], [], ""],
    ["LMG_min_rf_6p69", "", "", "rhsusf_acc_su230a_mrds", ["150Rnd_762x54_Box"], [], ""],
    ["LMG_min_rf_6p69", "", "", "rhsusf_acc_su230a_mrds", ["150Rnd_762x54_Box"], [], ""],
    ["LMG_min_rf_6p69", "", "", "Aegis_optic_1p87",       ["150Rnd_762x54_Box"], [], ""]
];
private _marksmanRifles = [
	["srifle_min_rf_vs_121", "muzzle_min_rf_pbs_1", "rhs_acc_perst1ik_ris", "optic_DMS", ["10Rnd_762x54_Mag"], [], "rhs_acc_harris_swivel"]
];
private _ATLaunchers = [
	["launch_min_rf_RPG32", "", "", "", ["RPG32_F"], [], ""]
];
private _HELaunchers = [
	["launch_min_rf_RPG32", "", "", "", ["RPG32_HE_F"], [], ""]
];
private _AALaunchers = [
	["Verba_9k333", "", "", "", ["9m336"], [], ""]
];
private _pistols = [
	["rhs_weap_6b_6p9", "rhs_acc_6p9_suppressor", "", "", ["rhs_mag_9x18_8_57N181S"], [], ""]
];

private _nvgs = ["O_NVGoggles_blk_F"];
if (A3A_hasACE) then {
    _nvgs append ["ACE_NVG_Gen4_Black", "ACE_NVG_Gen4_Green", "ACE_NVG_Wide_Black", "ACE_NVG_Wide_Green"];
} else {
    _nvgs append ["NVGoggles_INDEP", "NVGoggles_OPFOR"];
};
if (_hasContact) then {
    _nvgs append ["O_NVGoggles_grn_F"];
};
if (_hasApex) then {
    _nvgs append ["NVGogglesB_grn_F", "NVGogglesB_blk_F"];
};

if (_hasTanks) then {
	_ATLaunchers = [
		["launch_O_Vorona_green_F", "", "", "", ["Vorona_HEAT"], [], ""]
	];
	_HELaunchers = [
		["launch_O_Vorona_green_F", "", "", "", ["Vorona_HE"], [], ""]
	];
} else { if (_hasContact) then {
	_ATLaunchers = [
		["launch_RPG32_camo_F", "", "", "", ["RPG32_F"], [], ""]
	];
	_HELaunchers = [
		["launch_RPG32_camo_F", "", "", "", ["RPG32_HE_F"], [], ""]
	];
}};

_loadoutData set ["rifles", _rifles];
_loadoutData set ["carbines", _carbines];
_loadoutData set ["grenadeLaunchers", _gls];
_loadoutData set ["machineGuns", _mgs];
_loadoutData set ["marksmanRifles", _marksmanRifles];
_loadoutData set ["lightATLaunchers", _ATLaunchers];
_loadoutData set ["lightHELaunchers", _HELaunchers];
_loadoutData set ["AALaunchers", _AALaunchers];
_loadoutData set ["sidearms", _pistols];

_loadoutData set ["ATMines", [
	"ATMine_Range_Mag"
]];
_loadoutData set ["APMines", [
	"rhs_mine_smine35_press_mag"
]];
_loadoutData set ["lightExplosives", [
	"rhs_ec200_mag"
]];
_loadoutData set ["heavyExplosives", [
	"rhs_ec400_mag"
]];
_loadoutData set ["antiInfantryGrenades", [
	"rhs_mag_rgn",
	"rhs_mag_rgo"
]];
_loadoutData set ["smokeGrenades", [
	"rhs_mag_rdg2_white"
]];
_loadoutData set ["signalsmokeGrenades", [
	"rhs_nspd",
	"rhs_nspn_green",
	"rhs_nspn_red",
	"rhs_nspn_yellow"
]];

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", _nvgs];
_loadoutData set ["binoculars", ["VTN_B15"]];
_loadoutData set ["Rangefinder", ["rhs_pdu4"]];

private _basicUniforms = [
	"Aegis_U_O_LightCombatFatigues_rutaiga_F"
];
private _heavyUniforms = [
	"Aegis_U_O_CombatFatigues_rutaiga_F",
	"Aegis_U_O_CombatFatigues_rutaiga_F",
	"Aegis_U_O_CombatFatigues_rutaiga_F",
	"Aegis_U_O_CombatFatigues_02_rutaiga_F"
];
private _officerUniforms = [
	"Aegis_U_O_Luchnik_officer_taiga_F"
];
private _vests = [
	"Aegis_V_OCarrierLuchnik_F",
	"Aegis_V_OCarrierLuchnik_Lite_F",
	"Aegis_V_OCarrierLuchnik_Lite_F"
];
private _heavyVests = [
	"Aegis_V_OCarrierLuchnik_CQB_F",
	"Aegis_V_OCarrierLuchnik_CQB_F",
	"Aegis_V_OCarrierLuchnik_CQB_F",
	"Aegis_V_OCarrierLuchnik_GL_F"
];
private _backpacks = [
	"B_AssaultPack_taiga_F"
];
private _helmets = [
	"H_Booniehat_taiga_hs",
	"H_HelmetLuchnik_cover_rutaiga_F",
	"H_HelmetLuchnik_cover_rutaiga_F",
	"H_HelmetLuchnik_cover_rutaiga_F",
	"H_HelmetLuchnik_cover_rutaiga_F",
	"H_HelmetLuchnik_cover_rutaiga_F"
];
private _crewHelmets = [
	"Aegis_H_Milcap_nohs_taiga_F"
];
private _masks = [
	"G_Balaclava_oli",
	"G_Balaclava_light_eaf_F",
	"RUS_Balaclava_Green_3",
	"RUS_Balaclava_Green_4",
	"RUS_Balaclava_Olive_1",
	"RUS_Balaclava_Olive_2",
	"RUS_Balaclava_VKPO_Green_1",
	"RUS_Balaclava_VKPO_Green_2",
	"rhs_balaclava",
	"rhs_balaclava1_olive"
];

if (_hasApex) then {
	_masks append [
		"G_Balaclava_TI_tna_f",
		"G_Balaclava_TI_G_tna_f"
	];
};
if (_hasWs) then {
	_masks append [
		"G_Balaclava_oli_lxWS"
	];
};
if (_hasContact) then {
	_backpacks append [
		"B_Carryall_taiga_F",
		"B_FieldPack_taiga_F",
		"B_FieldPack_taiga_F"
	];
};

_loadoutData set ["uniforms", _basicUniforms];
_loadoutData set ["heavyUniforms", _heavyUniforms];
_loadoutData set ["offuniforms", _officerUniforms];
_loadoutData set ["vests", _vests];
_loadoutData set ["heavyVests", _heavyVests];
_loadoutData set ["backpacks", _backpacks];
_loadoutData set ["helmets", _helmets];
_loadoutData set ["crewHelmets", _crewHelmets];
_loadoutData set ["fullmask", _masks];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
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
    _loadoutData set ["items_miscEssentials",   ["ACE_IR_Strobe_Item", "ACE_EntrenchingTool", "ACE_Flashlight_XL50"]                                                                                                                                                                                                                                                                                                                                                                                call A3A_fnc_itemset_miscEssentials ];
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

// No single item should exist in every single array. Use "items_miscEssentials" for those.
// No medical item should exist in any array. Use the medical itemsets for those.
private   _squadLeaderItems = [];
private      _riflemanItems = [];
private         _medicItems = [];
private     _grenadierItems = [];
private          _demoItems = [];
private      _engineerItems = [];
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
      _squadLeaderItems append [];
         _riflemanItems append [];
            _medicItems append [];
        _grenadierItems append [];
             _demoItems append [];
         _engineerItems append [];
    _lightAntiTankItems append [];
         _antiTankItems append [];
          _antiAirItems append [];
    _machineGunnerItems append [];
         _marksmanItems append [];
           _sniperItems append [];
           _policeItems append [];
             _crewItems append [];
          _unarmedItems append [];
};

_loadoutData set ["items_squadLeader_extras",      _squadLeaderItems  ];
_loadoutData set ["items_rifleman_extras",         _riflemanItems     ];
_loadoutData set ["items_medic_extras",            _medicItems        ];
_loadoutData set ["items_grenadier_extras",        _grenadierItems    ];
_loadoutData set ["items_explosivesExpert_extras", _demoItems         ];
_loadoutData set ["items_engineer_extras",         _engineerItems     ];
_loadoutData set ["items_lat_extras",              _lightAntiTankItems];
_loadoutData set ["items_at_extras",               _antiTankItems     ];
_loadoutData set ["items_aa_extras",               _antiAirItems      ];
_loadoutData set ["items_machineGunner_extras",    _machineGunnerItems];
_loadoutData set ["items_marksman_extras",         _marksmanItems     ];
_loadoutData set ["items_sniper_extras",           _sniperItems       ];
_loadoutData set ["items_police_extras",           _policeItems       ];
_loadoutData set ["items_crew_extras",             _crewItems         ];
_loadoutData set ["items_unarmed_extras",          _unarmedItems      ];


//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["vests", [""]];
_crewLoadoutData set ["helmets", [""]];

private _pilotLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["vests", [""]];
_pilotLoadoutData set ["helmets", [""]];


/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////

private _cellLeaderTemplate = {
	["crewHelmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["offuniforms"] call _fnc_setUniform;

	["rifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;
	["primary", 5] call _fnc_addAdditionalMuzzleMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_leader"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _mercenaryTemplate = {
	["helmets"] call _fnc_setHelmet;
	["fullmask"] call _fnc_setFacewear;
	["heavyVests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	[selectRandom ["grenadeLaunchers", "rifles", "rifles"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_leader"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _enforcerTemplate = {
	["helmets"] call _fnc_setHelmet;
	["fullmask"] call _fnc_setFacewear;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["rifles"] call _fnc_setPrimary;
	["primary", 4] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_leader"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _partisanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["fullmask"] call _fnc_setFacewear;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	if (random 1 < 0.15) then {
		["backpacks"] call _fnc_setBackpack;
		["lightHELaunchers"] call _fnc_setLauncher;
		["launcher", 3] call _fnc_addMagazines;
	} else {
		["sidearms"] call _fnc_setHandgun;
		["handgun", 2] call _fnc_addMagazines;
	};

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

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

private _minutemanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["fullmask"] call _fnc_setFacewear;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

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
	["helmets"] call _fnc_setHelmet;
	["fullmask"] call _fnc_setFacewear;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

  	["carbines"] call _fnc_setPrimary;
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

private _saboteurTemplate = {
	["helmets"] call _fnc_setHelmet;
	["fullmask"] call _fnc_setFacewear;
	[selectRandom ["vests", "heavyVests"]] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["grenadeLaunchers"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;
	["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

	if (random 1 < 0.15) then {
		["lightHELaunchers"] call _fnc_setLauncher;
		["launcher", 2] call _fnc_addMagazines;
	} else {
		["sidearms"] call _fnc_setHandgun;
		["handgun", 2] call _fnc_addMagazines;
	};

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
	["helmets"] call _fnc_setHelmet;
	["fullmask"] call _fnc_setFacewear;
	["heavyVests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

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

private _atTemplate = {
	["helmets"] call _fnc_setHelmet;
	["fullmask"] call _fnc_setFacewear;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["lightATLaunchers"] call _fnc_setLauncher;
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
	["helmets"] call _fnc_setHelmet;
	["fullmask"] call _fnc_setFacewear;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
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

private _oppressorTemplate = {
	["helmets"] call _fnc_setHelmet;
	["fullmask"] call _fnc_setFacewear;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["machineGuns"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

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

private _sharpshooterTemplate = {
	["helmets"] call _fnc_setHelmet;
	["fullmask"] call _fnc_setFacewear;
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
	["Rangefinder"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _crewTemplate = {
	["crewHelmets"] call _fnc_setHelmet;
	[selectRandomWeighted [[], 1.5, "fullmask", 1.25, "facewear", 1]] call _fnc_setFacewear;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["carbines"] call _fnc_setPrimary;
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
	[selectRandomWeighted [[], 1.5, "facewear", 1, "fullmask", 1]] call _fnc_setFacewear;
	["uniforms"] call _fnc_setUniform;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_unarmed_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _commanderTemplate = {
	[selectRandomWeighted ["helmets", 0.3, "headgear", 0.7]] call _fnc_setHelmet;
	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["vests"] call _fnc_setVest;
	[["offuniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_unarmed_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

///////////////////////
//  Rivals Units     //
///////////////////////
private _prefix = "militia";
private _unitTypes = [
	["CellLeader", _cellLeaderTemplate, [], [_prefix, true]],
	["Mercenary", _mercenaryTemplate, [], [_prefix, true]],
	["Minuteman", _minutemanTemplate, [], [_prefix, true]],
	["Enforcer", _enforcerTemplate, [], [_prefix, true]],
	["Partisan", _partisanTemplate, [], [_prefix, true]],
	["Saboteur", _saboteurTemplate, [], [_prefix, true]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix, true]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix, true]],
	["SpecialistAT", _atTemplate, [], [_prefix, true]],
	["SpecialistAA", _aaTemplate, [], [_prefix, true]],
	["Oppressor", _oppressorTemplate, [], [_prefix, true]],
	["Sharpshooter", _sharpshooterTemplate, [], [_prefix, true]]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////
[_prefix, [["Crew", _crewTemplate, [], [_prefix, true]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, [["Pilot", _crewTemplate, [], [_prefix, true]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, [["Commander", _commanderTemplate, [], [_prefix, true]]], _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, [["Unarmed", _unarmedTemplate, [], [_prefix, true]]], _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;