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

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "YLF"] call _fnc_saveToTemplate;

["flag", "Flag_AAF_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\Yulakia\flag_ylf_co.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "ylf_flag"] call _fnc_saveToTemplate;

["vehiclesBasic", []] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", []] call _fnc_saveToTemplate;
["vehiclesLightArmed", []] call _fnc_saveToTemplate;
["vehiclesTruck", []] call _fnc_saveToTemplate;
["vehiclesAT", []] call _fnc_saveToTemplate;
["vehiclesAA", []] call _fnc_saveToTemplate;

["vehiclesBoat", []] call _fnc_saveToTemplate;

["vehiclesPlane", []] call _fnc_saveToTemplate;
["vehiclesMedical", []] call _fnc_saveToTemplate;

["vehiclesCivCar", []] call _fnc_saveToTemplate;
["vehiclesCivTruck", []] call _fnc_saveToTemplate;
["vehiclesCivHeli", []] call _fnc_saveToTemplate;
["vehiclesCivBoat", []] call _fnc_saveToTemplate;
["vehiclesCivPlane", []] call _fnc_saveToTemplate;
["vehiclesCivSupply", []] call _fnc_saveToTemplate;

["staticMGs", []] call _fnc_saveToTemplate;
["staticAT", []] call _fnc_saveToTemplate;
["staticAA", []] call _fnc_saveToTemplate;
["staticMortars", []] call _fnc_saveToTemplate;
["staticMortarMagHE", ""] call _fnc_saveToTemplate;
["staticMortarMagSmoke", ""] call _fnc_saveToTemplate;

["minesAT", ["ATMine"]] call _fnc_saveToTemplate;
["minesAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", ["SatchelCharge_Remote_Mag", "rhsusf_m112x4_mag", "rhsusf_m112_mag", "rhs_charge_M2tet_x2_mag", "rhssaf_tm500_mag", "rhs_ec400_sand_mag", "rhs_ec400_mag", "rhssaf_tm200_mag", "rhs_ec200_mag", "rhs_ec200_sand_mag"]] call _fnc_saveToTemplate;
["breachingExplosivesTank", ["SatchelCharge_Remote_Mag", "rhsusf_m112x4_mag", "rhsusf_m112_mag", "rhs_charge_M2tet_x2_mag", "rhssaf_tm500_mag", "rhs_ec400_sand_mag", "rhs_ec400_mag"]] call _fnc_saveToTemplate;

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","tf_anprc155_coyote"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["TFAR_anprc155","TFAR_anprc155_coyote"]};
_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

// uniforms used by AI rebels
private _rebUniforms = [
    "Civie_V1_Olv",
    "Civie_V1_Blk",
    "Civic_V2_Blk",
    "Civic_V2_Olv",
    "Civie_V3_Blk",
    "Civie_V3_Olv",
    "AAF_PMC_SOLDIER",
    "Rebel_BOKO_Tee",
    "U_BG_Guerrilla_6_1",
    "U_I_G_resistanceLeader_F",
    "U_BG_Guerilla1_1",
    "U_BG_Guerilla2_2",
    "U_BG_Guerilla2_3",
    "U_BG_Guerilla3_1",
    "U_C_HunterBody_grn"
];

// uniforms not used by AI rebels
private _civUniforms = [
    "U_C_Poloshirt_blue",
    "U_C_Poloshirt_burgundy",
    "U_C_Poloshirt_salmon",
    "U_C_Poloshirt_stripped",
    "U_C_Poloshirt_tricolour",
    "U_C_Poloshirt_redwhite",
    "U_BG_Guerilla2_1",
    "U_Marshal",
    "U_C_Man_casual_7_F",
    "U_C_Man_casual_8_F",
    "U_C_Man_casual_9_F"
];

// cloth headgear
private _unarmoredHeadgear = [
    "FP_Bandana_Black",
    "FP_Bandana_Coyote",
    "FP_Boonie_Green",
    "FP_CapHs_Black",
    "FP_CapHs_Green",
    "USHANKA_BLACK",
    "H_Bandanna_gry",
    "H_Bandanna_blu",
    "H_Bandanna_cbr",
    "H_Bandanna_khk",
    "H_Bandanna_sgg",
    "H_Bandanna_sand",
    "H_Watchcap_blk",
    "H_Watchcap_cbr",
    "H_Watchcap_camo",
    "H_Watchcap_khk",
    "H_Booniehat_khk",
    "H_Booniehat_oli",
    "H_Booniehat_tan",
    "H_Cap_blk",
    "H_Cap_grn",
    "H_Cap_oli",
    "H_Cap_tan",
    "H_Booniehat_blk",
    "rhs_beanie_green",
    "rhssaf_bandana_smb"
];

if (_hasContact) then {
    _rebUniforms append [
        "U_C_E_LooterJacket_01_F"
    ];
    _civUniforms append [
        "U_C_Uniform_Farmer_01_F"
    ];
    _unarmoredHeadgear append [
        "H_Booniehat_mgrn"
    ];
};
if (_hasApex) then {
    _rebUniforms append [
        "U_I_C_Soldier_Bandit_1_F",
        "U_I_C_Soldier_Bandit_3_F",
        "U_I_C_Soldier_Para_5_F"
    ];
    _civUniforms append [
        "U_C_Man_casual_3_F",
        "U_C_Man_casual_6_F",
        "U_C_Man_casual_4_F",
        "U_C_Man_casual_5_F"
    ];
};
if(_hasRF) then {
    _rebUniforms append [
        "U_BG_Guerrilla_RF",
        "U_C_PilotJacket_black_RF",
        "U_C_PilotJacket_open_black_RF",
        "U_C_PilotJacket_brown_RF",
        "U_C_PilotJacket_open_brown_RF",
        "U_C_PilotJacket_lbrown_RF",
        "U_C_PilotJacket_open_lbrown_RF"
    ];
};
if(_hasWs) then {
    _rebUniforms append [
        "U_lxWS_ION_Casual_4"
    ];
    _civUniforms append [
        "U_lxWS_ION_Casual_3"
    ];
};
if(_hasLawsOfWar) then {
    _unarmoredHeadgear append [
        "H_Hat_Safari_olive_F"
    ];
};

["uniforms", _rebUniforms + _civUniforms] call _fnc_saveToTemplate; // add uniforms to arsenal

["headgear", _unarmoredHeadgear] call _fnc_saveToTemplate;          // headgear used by rebels prior to getting armored helmets

/////////////////////
///  Identities   ///
/////////////////////

// Faces given to rebel AI
private _characters = [
    "WhiteHead_02",
    "WhiteHead_18",
    "WhiteHead_04",
    "WhiteHead_07",
    "WhiteHead_08",
    "Ivan",
    "WhiteHead_16",
    "WhiteHead_11",
    "WhiteHead_22_l",
    "WhiteHead_17",
    "WhiteHead_21",
    "WhiteHead_12",
    "WhiteHead_14",
    "WhiteHead_20",
    "WhiteHead_33",
    "RuHead_00",
    "RuHead_02",
    "RuHead_03",
    "RuHead_04",
    "RuHead_05",
    "RuHead_06",
    "RuHead_07",
    "RuHead_08",
    "RuHead_09",
    "RuHead_11",
    "RuHead_12",
    "Vissim"
];

// Voices given to rebel AI
// Uses Czech as a 'Yulakian' language
private _voices = [
    "RHS_Male01CZ",
    "RHS_Male02CZ",
    "RHS_Male03CZ",
    "RHS_Male04CZ",
    "RHS_Male05CZ"
];

if (_hasWS) then {
    _characters append [
        "lxWS_Gustavo_Head",
        "lxWS_Journalist_Head"
    ];
};
if (_hasLawsOfWar) then {
    _characters append [
        "WhiteHead_23"
    ];
};
if (_hasContact) then {
    _characters append [
        "WhiteHead_24",
        "RussianHead_4",
        "LivonianHead_5",
        "WhiteHead_25",
        "LivonianHead_2",
        "RussianHead_1",
        "WhiteHead_27",
        "WhiteHead_28",
        "LivonianHead_3",
        "RussianHead_3",
        "RussianHead_2",
        "LivonianHead_10",
        "WhiteHead_32",
        "WhiteHead_30",
        "LivonianHead_8",
        "LivonianHead_4",
        "LivonianHead_9"
    ];
};

["faces",  _characters] call _fnc_saveToTemplate;
["voices", _voices]     call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps",       ["ItemMap"]];
_loadoutData set ["watches",    ["ItemWatch"]];
_loadoutData set ["compasses",  ["ItemCompass"]];
_loadoutData set ["binoculars", ["VTN_B8"]];

_loadoutData set ["uniforms", _rebUniforms];

_loadoutData set ["facewear", []];

_loadoutData set ["items_medical_basic",    ["BASIC"]    call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic",    ["MEDIC"]    call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials",   []           call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};

private _prefix = "militia";
private _unitTypes = [
    ["Petros", _squadLeaderTemplate],
    ["SquadLeader", _squadLeaderTemplate],
    ["Rifleman", _riflemanTemplate],
    ["staticCrew", _riflemanTemplate],
    ["Medic", _riflemanTemplate, [["medic", true]]],
    ["Engineer", _riflemanTemplate, [["engineer", true]]],
    ["ExplosivesExpert", _riflemanTemplate, [["explosiveSpecialist", true]]],
    ["Grenadier", _riflemanTemplate],
    ["LAT", _riflemanTemplate],
    ["AT", _riflemanTemplate],
    ["AA", _riflemanTemplate],
    ["MachineGunner", _riflemanTemplate],
    ["Marksman", _riflemanTemplate],
    ["Sniper", _riflemanTemplate],
    ["Unarmed", _riflemanTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
