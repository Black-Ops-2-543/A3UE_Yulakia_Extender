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

#include "..\..\script_component.hpp"

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "YLF"] call _fnc_saveToTemplate;
["flag", "Flag_AAF_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Pictures\YULAK_ylf_flag.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "flag_YULAK_YLF"] call _fnc_saveToTemplate;

private _basicVehicles = [
    "B_G_Quadbike_01_F"
];

private _lightUnarmedVehicles = [
    "B_G_Offroad_01_F"
];

private _lightArmedVehicles = [
    "B_G_Offroad_01_armed_F"
];

private _truckVehicles = [
    "C_Truck_02_transport_F",
    "C_Truck_02_covered_F"
];

private _boats = [
    "I_G_Boat_Transport_01_F"
];

private _atVehicles = [
    "I_G_Offroad_01_AT_F"
];
private _aaVehicles = [
    "Aegis_O_R_Truck_02_aa_F",
    "RHS_Ural_Zu23_MSV_01"
];
private _planes = [
    "RHS_AN2_B"
];

private _civCars = [
    "C_Offroad_01_F",
    "a3a_Van_02_black_transport_F"
];

private _civTrucks = [
    "Aegis_C_Truck_02_cargo_Malden_F",
    "Aegis_C_Truck_02_flatbed_Malden_F"
];

private _civHelis = [
    "Aegis_C_Heli_Light_01_Civil_F_malden"
];

private _civBoats = [
    "rhsgref_civ_canoe",
    "Aegis_C_Boat_Transport_02_F_Malden",
    "C_Boat_Civil_01_F"
];

private _staticMG = [
    "I_G_HMG_02_high_F"
];

private _staticAT = [];

private _staticAA = [
    "rhsgref_ins_g_ZU23"
];

if (_hasGM) then {
    _basicVehicles append [
        "gm_ge_army_k125"
    ];
    _lightUnarmedVehicles append [
        "gm_dk_army_typ247_cargo",
        "gm_ge_army_w123_cargo"
    ];
    _lightArmedVehicles append [ 
        "gm_dk_army_u1300l_container"
    ];
    _truckVehicles append [
        "gm_gc_army_ural4320_cargo_noinsignia"
    ];
    _civCars append [
        "gm_ge_civ_typ247",
        "gm_ge_civ_typ253",
        "gm_ge_civ_typ251",
        "gm_ge_dbp_typ247"
    ];
    _civTrucks append [
        "gm_ge_civ_u1300l",
        "gm_gc_civ_ural375d_cargo"
    ];
    _civHelis append [
        "gm_gc_civ_mi2p",
        "gm_ge_adak_bo105m_vbh_noinsignia"
    ];
    _staticAT append [
        "gm_gc_army_spg9_tripod"
    ];
    _staticMG append [
        "gm_gc_army_dshkm_aatripid",
        "gm_ge_army_mg3_aatripod_csw"
    ];
} else {
    _truckVehicles append [
        "rhsgref_ins_g_ural"
    ];
    _civTrucks append [
        "C_Van_01_Transport_F",
        "RHS_Ural_Civ_01"
    ];
    _civHelis append [
        "C_Heli_Light_02_civil_F"
    ];
    _staticAT append [
        "rhsgref_ins_SPG9"
    ];
    _staticMG append [
        "rhs_KORD_high_VDV"
    ];
};

if (_hasRF) then {
    _lightArmedVehicles append [
        "I_G_Pickup_hmg_rf"
    ];
    _civCars append [
        "Aegis_C_Pickup_RF_Malden"
    ];
};

if (_hasCSLA) then {
    _truckVehicles append [
        "CSLA_V3So_noinsignia"
    ];
    _civCars append [
        "CSLA_CS_CATOR_noinsignia"
    ];
} else {
    _truckVehicles append [
        "rhsgref_ins_g_gaz66o"
    ];
};

if (_hasSOG) then {
    _staticAA append [
        "vn_b_sf_static_m45"
    ];
};

if (_hasWs) then {
    _truckVehicles append [
        "C_Truck_02_flatbed_lxWS",
        "C_Truck_02_cargo_lxWS"
    ];
    _civTrucks append [
        "C_Truck_02_flatbed_lxWS",
        "C_Truck_02_cargo_lxWS"
    ];
    _atVehicles append [
        "I_G_Offroad_01_armor_AT_lxWS",
        "I_G_Offroad_01_armor_armed_lxWS",
        "I_G_Offroad_01_armor_base_lxWS"
    ];
    _aaVehicles append [
        "I_A_Truck_02_aa_lxWS",
        "I_G_Offroad_AA_lxWS",
        "I_Tura_Offroad_armor_AA_lxWS"
    ];
};

if (_hasApex) then {
    _planes append [
        "C_Plane_Civil_01_F"
    ];
    _lightUnarmedVehicles append [
        "C_Offroad_02_unarmed_F"
    ];
    _civCars append [
        "C_Offroad_02_unarmed_F"
    ];
    _civBoats append [
        "Aegis_C_Scooter_Transport_01_F_Tanoa"
    ];
    _boats append [
        "B_GEN_Boat_Transport_02_F"
    ];
};

if (_hasContact) then {
    _civCars append [
        "C_Tractor_01_F"
    ];
};

if (!_hasGM && !_hasCSLA) then {
    _civCars append [
        "C_Hatchback_01_F"
    ];
} else {
    if (_hasGM) then {
        _civCars append [
            "gm_ge_civ_w123"
        ];
    };
    if (_hasCSLA) then {
        _civCars append [
            "CSLA_CIV_Sakura1200"
        ];
    };
};

["vehiclesBasic", _basicVehicles] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", _lightUnarmedVehicles] call _fnc_saveToTemplate;
["vehiclesLightArmed", _lightArmedVehicles] call _fnc_saveToTemplate;
["vehiclesTruck", _truckVehicles] call _fnc_saveToTemplate;

["vehiclesAT", _atVehicles] call _fnc_saveToTemplate;
["vehiclesAA", _aaVehicles] call _fnc_saveToTemplate;
["vehiclesPlane", _planes] call _fnc_saveToTemplate;

["vehiclesBoat", _boats] call _fnc_saveToTemplate;

["vehiclesCivCar", _civCars] call _fnc_saveToTemplate;
["vehiclesCivTruck", _civTrucks] call _fnc_saveToTemplate;
["vehiclesCivHeli", _civHelis] call _fnc_saveToTemplate;
["vehiclesCivBoat", _civBoats] call _fnc_saveToTemplate;
["vehiclesCivSupply", ["C_Van_01_box_F"]] call _fnc_saveToTemplate;

["staticMGs", _staticMG] call _fnc_saveToTemplate;
["staticAT", _staticAT] call _fnc_saveToTemplate;
["staticAA", _staticAA] call _fnc_saveToTemplate;
["staticMortars", ["RUS_MSV_2b14"]] call _fnc_saveToTemplate;
["staticMortarMagHE", ["rhs_mag_3vo18_10"]] call _fnc_saveToTemplate;
["staticMortarMagSmoke", ["rhs_mag_d832du_10"]] call _fnc_saveToTemplate;

["minesAT", ["ATMine"]] call _fnc_saveToTemplate;
["minesAPERS", ["APERSMine"]] call _fnc_saveToTemplate;



["breachingExplosivesAPC", ["SatchelCharge_Remote_Mag", "rhsusf_m112x4_mag", "rhsusf_m112_mag", "rhs_charge_M2tet_x2_mag", "rhssaf_tm500_mag", "rhs_ec400_sand_mag", "rhs_ec400_mag", "rhssaf_tm200_mag", "rhs_ec200_mag", "rhs_ec200_sand_mag"]] call _fnc_saveToTemplate;
["breachingExplosivesTank", ["SatchelCharge_Remote_Mag", "rhsusf_m112x4_mag", "rhsusf_m112_mag", "rhs_charge_M2tet_x2_mag", "rhssaf_tm500_mag", "rhs_ec400_sand_mag", "rhs_ec400_mag"]] call _fnc_saveToTemplate;

#include "VehicleData\YULAK_YLF_Vehicle_Attributes.sqf"

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialPrimaryWeapons = [
    "Opf_arifle_SKS_F",
    "Opf_arifle_SKS_oak_F",
    "ibr_crossbow_wood",
    "rhs_weap_Izh18",
    "rhs_weap_l1a1_wood",
    "rhs_weap_m38"
];
private _initialSecondaryWeapons = [
    "rhs_weap_6p53"
];
private _initialMagazines = [
    "rhs_10Rnd_762x39mm",
    "rhs_10Rnd_762x39mm_89",
    "ibr_arrow_mag",
    "rhsgref_1Rnd_00Buck",
    "rhsgref_1Rnd_Slug",
    "rhs_mag_20Rnd_762x51_m80_fnfal",
    "rhs_mag_20Rnd_762x51_m61_fnfal",
    "rhsgref_5Rnd_762x54_m38",
    "rhs_18rnd_9x21mm_7N28",
    "rhs_18rnd_9x21mm_7N29"
];
private _initialVests = [
    "min_rf_combat_belt_green",
    "V_Rangemaster_belt",
    "V_Rangemaster_belt_oli",
    "V_Rangemaster_belt_cbr",
    "V_Rangemaster_belt_blk",
    "V_BandollierB_blk",
    "V_BandollierB_cbr",
    "V_BandollierB_khk",
    "V_BandollierB_oli",
    "V_BandollierB_rgr",
    "V_ChestrigF_blk",
    "V_ChestrigF_rgr",
    "V_ChestrigF_oli"
];
private _initialBackpacks = [
    "B_AssaultPack_blk",
    "B_AssaultPack_rgr",
    "B_AssaultPack_khk",
    "B_AssaultPack_sgg"
];
private _initialInventoryItems = [
    "Chemlight_blue",
    "Chemlight_green",
    "Chemlight_red",
    "Chemlight_yellow"
];

if (_hasContact) then {
    _initialPrimaryWeapons append [
        "sgun_HunterShotgun_01_F",
        "sgun_HunterShotgun_01_sawedoff_F"
    ];
    _initialMagazines append [
        "2Rnd_12Gauge_Pellets",
        "2Rnd_12Gauge_Slug"
    ];
};
if (_hasApex) then {
    _initialSecondaryWeapons append [
        "hgun_Pistol_01_F",
        "hgun_P07_blk_F"
    ];
    _initialMagazines append [
        "10Rnd_9x21_Mag",
        "16Rnd_9x21_Mag_v2"
    ];
};
if (_hasLawsOfWar) then {
    _initialVests append [
        "V_LegStrapBag_black_F",
        "V_LegStrapBag_olive_F",
        "V_Pocketed_black_F",
        "V_Pocketed_olive_F"
    ];
};
if (A3A_hasACE) then {
    _initialInventoryItems append [
        "ACE_Cellphone",
        "ACE_Flashlight_XL50",
        "ACE_MapTools",
        "ACE_EntrenchingTool",
        "ACE_DefusalKit",
        "ACE_CableTie",
        "ACE_EarPlugs",
        "ACE_Sandbag_empty",
        "ACE_fieldDressing",
        "ACE_wirecutter"
    ];
};

// all equipment in the arsenal at game start
private _initialRebelEquipment = _initialPrimaryWeapons + _initialSecondaryWeapons + _initialMagazines + _initialVests + _initialBackpacks + _initialInventoryItems;
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

// uniforms used by AI rebels
private _rebUniforms = [
    "Civie_V1_Olv",
    "Civie_V1_Blk",
    "Civie_V2_Blk",
    "Civie_V2_Olv",
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
if (_hasRF) then {
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
if (_hasWs) then {
    _rebUniforms append [
        "U_lxWS_ION_Casual4"
    ];
    _civUniforms append [
        "U_lxWS_ION_Casual3"
    ];
};
if (_hasLawsOfWar) then {
    _unarmoredHeadgear append [
        "H_Hat_Safari_olive_F"
    ];
};

["uniforms", _rebUniforms + _civUniforms] call _fnc_saveToTemplate; // add uniforms to arsenal

["headgear", _unarmoredHeadgear] call _fnc_saveToTemplate;          // headgear used by rebels prior to getting armored helmets

/////////////////////
///  Identities   ///
/////////////////////

#include "CharacterData\YULAK_Western_Identities.sqf"

//////////////////////////
//       Loadouts       //
//////////////////////////

private _facewear = [
    "G_aviator",
    "G_Bandanna_aviator",
    "G_Bandanna_blk",
    "G_Bandanna_khk",
    "G_Bandanna_oli",
    "G_Bandanna_tan",
    "G_Cigarette",
    "G_Shemag_khk",
    "G_Shemag_oli",
    "G_Shemag_shades",
    "rhs_scarf",
    "rhsusf_shemagh_grn",
    "rhsusf_shemagh_od",
    "rhsusf_shemagh2_grn",
    "rhsusf_shemagh2_od"
];

private _balaclavas = [
    "RUS_Balaclava_black_1",
    "RUS_Balaclava_black_2",
    "RUS_Balaclava_green_3",
    "RUS_Balaclava_green_4",
    "RUS_Balaclava_olive_1",
    "RUS_Balaclava_olive_2",
    "RUS_Balaclava_VKPO_Green_1",
    "RUS_Balaclava_VKPO_Green_2",
    "RUS_Balaclava_VKPO_Winter_Green_1",
    "RUS_Balaclava_VKPO_Winter_Green_2",
    "rhs_balaclava",
    "rhs_balaclava1_green",
    "G_Balaclava_blk",
    "G_Balaclava_oli"
];


private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps",       ["ItemMap"]];
_loadoutData set ["watches",    ["ItemWatch"]];
_loadoutData set ["compasses",  ["ItemCompass"]];
_loadoutData set ["binoculars", ["VTN_B8"]];

_loadoutData set ["uniforms", _rebUniforms];

_loadoutData set ["facewear", _facewear + _facewear + _balaclavas]; // increase chance of non-balaclava facewear

if(A3A_hasACE) then {
    /*
    Basic Medical:      2 Bandages
    Standard Medical:   3 Bandages, 1 Tourniquet
    Squad Lead Medical: 6 Bandages, 2 Tourniquets
    Doctor Medical:     9 Bandages, 4 Tourniquets, 1 Splint, 2 Morphine
    */
    _loadoutData set ["items_medical_basic",    ["ACE_fieldDressing", "ACE_fieldDressing"] call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_medical_standard", ["ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_tourniquet"] call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_medical_leader",   ["ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing", "ACE_packingBandage", "ACE_packingBandage", "ACE_tourniquet", "ACE_tourniquet"] call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_medical_medic",    ["ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_tourniquet", "ACE_tourniquet", "ACE_tourniquet", "ACE_tourniquet", "ACE_splint", "ACE_morphine", "ACE_morphine"] call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_miscEssentials",   [] call A3A_fnc_itemset_miscEssentials];
} else {
    /*
    Basic Medical:      1 FAK
    Standard Medical:   2 FAKs
    Squad Lead Medical: 3 FAKs
    Doctor Medical:     1 Medikit
    */
    _loadoutData set ["items_medical_basic",    ["FirstAidKit"] call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_medical_standard", ["FirstAidKit", "FirstAidKit"] call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_medical_leader",   ["FirstAidKit", "FirstAidKit", "FirstAidKit"] call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_medical_medic",    ["Medikit"] call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_miscEssentials",   [] call A3A_fnc_itemset_miscEssentials];
};

////////////////////////
//  Rebel Unit Types  //
////////////////////////

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
