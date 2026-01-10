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

//////////////////////////
//       Vehicles       //
//////////////////////////    

private _civCars = [
    "C_Offroad_01_F", 0.2,
    "a3a_Van_02_black_transport_F", 0.2,
	"UAZ_pat", 0.2,
	"UAZ_01_transport_F", 0.2,
	"UAZ_02_transport_F", 0.2,
	"UAZ_03_transport_F", 0.2,
	"UAZ_04_transport_F", 0.2
];                               

private _civTrucks = [
    "Aegis_C_Truck_02_cargo_Malden_F", 0.2,
    "Aegis_C_Truck_02_flatbed_Malden_F", 0.2
];

private _civHelis = [
	"Aegis_C_Heli_Light_01_Civil_F_malden",  0.2
];

private _civBoats = [
    "rhsgref_civ_canoe", 0.2,
    "Aegis_C_Boat_Transport_02_F_Malden", 0.2,
    "C_Boat_Civil_01_F", 0.2
];

private _civRepair = [
	"C_Truck_02_box_F", 0.2
];

private _civMedical = [
	"O_R_Truck_02_medical_F", 0.2
];

private _civFuel = [
	"C_Truck_02_fuel_F", 0.2
];

if (_hasGM) then {
	_civCars append [
        "gm_ge_civ_typ247", 0.2,
        "gm_ge_civ_typ253", 0.2,
        "gm_ge_civ_typ251", 0.2
    ];
	_civTrucks append [
        "gm_ge_civ_u1300l", 0.2,
        "gm_gc_civ_ural375d_cargo", 0.2,
		"gm_ge_dbp_typ247", 0.2
    ];
	_civHelis append [
        "gm_gc_civ_mi2p", 0.2,
		"gm_ge_adak_bo105m_vbh_noinsignia", 0.2
    ];
	_civMedical append [
		"gm_ge_ff_u1300l_medic", 0.2
	];
} else {
	_civTrucks append [
        "C_Van_01_Transport_F", 0.2,
        "RHS_Ural_Civ_01", 0.2
    ];
    _civHelis append [
        "C_Heli_Light_02_civil_F", 0.2
    ];
};

if (_hasRF) then {
	_civCars append [
        "Aegis_C_Pickup_RF_Malden", 0.2
    ];
	_civRepair append [
		"C_Pickup_repair_rf", 0.2
	];
};

if (_hasCSLA) then {
	_civCars append [
        "CSLA_CS_CATOR_noinsignia", 0.2
    ];
};

if (_hasWS) then {
	_civTrucks append [
        "C_Truck_02_flatbed_lxWS", 0.2,
        "C_Truck_02_cargo_lxWS", 0.2
    ];
};

if (_hasApex) then {
	_civCars append [
        "C_Offroad_02_unarmed_F", 0.2
    ];
    _civBoats append [
        "Aegis_C_Scooter_Transport_01_F_Tanoa", 0.2
    ];
};

if (_hasContact) then {
    _civCars append [
        "C_Tractor_01_F", 0.2
    ];
};

if (!_hasGM && !_hasCSLA) then {
    _civCars append [
        "C_Hatchback_01_F", 0.2
    ];
} else {
    if (_hasGM) then {
        _civCars append [
            "gm_ge_civ_w123", 0.2
        ];
    };
    if (_hasCSLA) then {
        _civCars append [
            "CSLA_CIV_Sakura1200", 0.2
        ];
    };
};

["vehiclesCivCar", _civCars] call _fnc_saveToTemplate;                    //this line determines civilian cars -- Example: ["vehiclesCivCar", ["C_Offroad_01_F"]] -- Array, can contain multiple assets

["vehiclesCivIndustrial", _civTrucks] call _fnc_saveToTemplate;             //this line determines civilian trucks -- Example: ["vehiclesCivIndustrial", ["C_Truck_02_transport_F"]] -- Array, can contain multiple assets

["vehiclesCivHeli", _civHelis] call _fnc_saveToTemplate;                   //this line determines civilian helis -- Example: ["vehiclesCivHeli", ["C_Heli_Light_01_civil_F"]] -- Array, can contain multiple assets

["vehiclesCivBoat", _civBoats] call _fnc_saveToTemplate;                   //this line determines civilian boats -- Example: ["vehiclesCivBoat", ["C_Boat_Civil_01_F"]] -- Array, can contain multiple assets

["vehiclesCivRepair", _civRepair] call _fnc_saveToTemplate;                 //this line determines civilian repair vehicles

["vehiclesCivMedical", _civMedical] call _fnc_saveToTemplate;                //this line determines civilian medic vehicles

["vehiclesCivFuel", _civFuel] call _fnc_saveToTemplate;                   //this line determines civilian fuel vehicles

["vehiclesCivPlanes", ["RHS_AN2", 0.2, "C_Plane_Civil_01_F", 0.2]] call _fnc_saveToTemplate;

["variants", [
    ["gm_ge_ff_u1300l_medic", ["gm_ge_civ_drk_01",     1]],
    ["O_R_Truck_02_medical_F", ["Sand",    1]],
    ["gm_ge_dbp_typ247", ["gm_moccabrown", 0.25, "gm_lichtgrau", 0.25, "gm_bambooyellow", 0.25, "gm_navyblue", 0.25]]
]] call _fnc_saveToTemplate;

["animations", [
    ["gm_ge_ff_u1300l_medic", ["sign_medic_unhide",1]],
	["gm_ge_dbp_typ247"], ["cargo_rack_01_unhide",1,"sirenLights_02_unhide",1,"cover_01_hoops_unhide",0,"cover_02_hoops_unhide",1,"cargo_rack_04_unhide",1,"cargo_rack_05_unhide",1,"sirenLights_03_unhide",0,"cover_02_unhide",1,"pipes_01_unhide",0,"pipes_02_unhide",1,"ladder_01_unhide",1,"ladder_02_unhide",0,"sirenLights_01_unhide",0,"sirenLights_05_unhide",0,"cargo_rack_03_unhide",1,"wheel_1_1_cap_unhide",0]
]] call _fnc_saveToTemplate;

/////////////////////////////////
///  Identities and currency  ///
/////////////////////////////////

#include "CharacterData\YULAK_Western_Identities.sqf"

["currencySymbol", "YKR"] call _fnc_saveToTemplate; // Yulakian Krone

//////////////////////////
//       Loadouts       //
//////////////////////////

private _civUniforms = [
    "U_C_Man_casual_1_F",
    "U_C_Man_casual_2_F",
    "U_C_Man_casual_3_F",
    "U_C_Man_casual_4_F",
    "U_C_Man_casual_5_F",
    "U_C_Man_casual_6_F",
    "U_C_ArtTShirt_01_v1_F",
    "U_C_ArtTShirt_01_v2_F",
    "U_C_ArtTShirt_01_v3_F",
    "U_C_ArtTShirt_01_v4_F",
    "U_C_ArtTShirt_01_v5_F",
    "U_C_ArtTShirt_01_v6_F",
    "U_NikosBody",
    "U_NikosAgedBody",
    "U_C_Poloshirt_blue",
    "U_C_Poloshirt_burgundy",
    "U_C_Poloshirt_stripped",
    "U_C_Poloshirt_tricolour",
    "U_C_Poloshirt_salmon",
    "U_C_Poloshirt_redwhite",
    "U_OrestesBody",
    "U_C_Poor_1",
    "U_C_HunterBody_grn",
    "U_I_L_Uniform_01_tshirt_skull_F",
    "U_I_L_Uniform_01_tshirt_black_F",
    "U_I_L_Uniform_01_tshirt_sport_F",
    "U_C_Scientist",
    "U_C_Uniform_Scientist_02_formal_F",
    "U_C_Uniform_Scientist_02_F",
    "U_C_Uniform_Scientist_01_F"
];                                                                                    //Uniforms given to Normal Civs

private _pressUniforms = [
    "U_C_Journalist",
    "U_Marshal"
];                                                                                  //Uniforms given to Press/Journalists

private _workerUniforms = [
    "U_C_WorkerCoveralls",
    "U_C_Uniform_Farmer_01_F"
];                                                                                 //Uniforms given to Workers at Factories/Resources

private _dlcUniforms = [];

if (_hasApex) then {
    _dlcUniforms append ["U_C_man_sport_1_F", "U_C_man_sport_2_F", "U_C_man_sport_3_F"];
};

if (_hasLawsOfWar) then {
    _dlcUniforms append ["U_C_Paramedic_01_F", "U_C_Mechanic_01_F"];
};

["uniforms", _civUniforms + _pressUniforms + _workerUniforms + _dlcUniforms] call _fnc_saveToTemplate;

["RussianMen"] call _fnc_saveNames;

private _civHats = [
    "H_Bandanna_blu",
    "H_Bandanna_cbr",
    "H_Bandanna_gry",
    "H_Bandanna_khk",
    "H_Bandanna_sand",
    "H_Bandanna_sgg",
    "H_Bandanna_surfer",
    "H_Bandanna_surfer_blk",
    "H_Bandanna_surfer_grn",
    "H_Cap_blk",
    "H_Cap_blu",
    "H_Cap_grn",
    "H_Cap_grn_BI",
    "H_Cap_oli",
    "H_Cap_red",
    "H_Cap_surfer",
    "H_Cap_tan",
    "H_StrawHat",
    "H_StrawHat_dark",
    "H_Hat_checker"
];

["headgear", _civHats] call _fnc_saveToTemplate;                                                                //Headgear given to Normal Civs, Workers, Undercover Rebels.

private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["uniforms", _civUniforms];
_loadoutData set ["pressUniforms", _pressUniforms];
_loadoutData set ["workerUniforms", _workerUniforms];
_loadoutData set ["pressVests", ["V_Press_F"]];
_loadoutData set ["helmets", _civHats];
private _pressHelmets = if (_hasLawsOfWar) then {
    ["H_Cap_press", "H_PASGT_basic_blue_press_F", "H_PASGT_neckprot_blue_press_F"];
} else {
    ["H_Cap_press"];
};
_loadoutData set ["pressHelmets", _pressHelmets];

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];


private _manTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _workerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["workerUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _pressTemplate = {
    ["pressHelmets"] call _fnc_setHelmet;
    ["pressVests"] call _fnc_setVest;
    ["pressUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _prefix = "militia";
private _unitTypes = [
    ["Press", _pressTemplate],
    ["Worker", _workerTemplate],
    ["Man", _manTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
