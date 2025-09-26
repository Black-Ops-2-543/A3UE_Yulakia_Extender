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

//////////////////////////
//   Side Information   //
//////////////////////////

#include "..\..\script_component.hpp" // TAKE NOTE OF THIS. WITHOUT THIS, YOU CAN'T USE MACROS LIKE QPATHTOFOLDER.

["name", "YPG"] call _fnc_saveToTemplate;
["spawnMarkerName", "Yulakian Support Corridor"] call _fnc_saveToTemplate;

["flag", "Flag_AAF_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\Yulakia\flag_ypg_co.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "ypg_flag"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox",        "I_supplyCrate_F"]  call _fnc_saveToTemplate;
["surrenderCrate", "Box_IND_Wps_F"]    call _fnc_saveToTemplate; 
["equipmentBox",   "Box_AAF_Equip_F"] call _fnc_saveToTemplate;


[       "vehiclesBasic", ["rhs_uaz_open_MSV_01"]]                                           call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["rhs_uaz_open_MSV_01", "RHS_UAZ_MSV_01", "Gaz_tigr_ua"]]          call _fnc_saveToTemplate;	
[  "vehiclesLightArmed", ["Gas_tigr_sts_ua",     "Gas_tigr_m_ua",  "rhsgref_BRDM2_HQ_msv"]] call _fnc_saveToTemplate; 

[      "vehiclesTrucks", ["O_R_Truck_02_F"]]         call _fnc_saveToTemplate;		    
[ "vehiclesCargoTrucks", ["O_R_Truck_02_cargo_F"]]   call _fnc_saveToTemplate;	
[  "vehiclesAmmoTrucks", ["O_R_Truck_02_Ammo_F"]]    call _fnc_saveToTemplate;	
["vehiclesRepairTrucks", ["O_R_Truck_02_box_F"]]     call _fnc_saveToTemplate;	
[  "vehiclesFuelTrucks", ["O_R_Truck_02_fuel_F"]]    call _fnc_saveToTemplate;	
[     "vehiclesMedical", ["O_R_Truck_02_medical_F"]] call _fnc_saveToTemplate;

[   "vehiclesLightAPCs", ["FP_UAF_M113_HMG", "TSB_BRDM2_r", "rhs_btr80_msv"]]                                                                                           call _fnc_saveToTemplate;
[        "vehiclesAPCs", ["rhs_btr80a_vdv"]]                                                                                                                            call _fnc_saveToTemplate;              
[    "vehiclesAirborne", ["RUS_VDV_bmd2",    "FP_UAF_M113_HMG"]]                                                                                                        call _fnc_saveToTemplate;
[        "vehiclesIFVs", ["RUS_MSV_bmp3",    "rhs_bmp2d_msv",    "rhs_bmp2_msv",            "rhs_bmp1p_msv"]]                                                           call _fnc_saveToTemplate; 
[       "vehiclesTanks", ["rhs_t90_tv",      "mkk_t80_ue1_r",    "mkk_t80bv_r",             "rhs_t80a",      "rhs_t80a", "rhs_t72bc_tv", "rhs_t72bb_tv", "leopard1_b"]] call _fnc_saveToTemplate;             
[          "vehiclesAA", ["mkk_zsu_23_4m4",  "TSB_BRDM2_ZU23_r", "Aegis_O_R_Truck_02_aa_F"]]                                                                            call _fnc_saveToTemplate;                                                             

["vehiclesTransportBoats", ["O_R_Boat_Transport_01_ard_F"]]                                  call _fnc_saveToTemplate;	                      
[      "vehiclesGunBoats", ["O_R_Boat_Armed_01_hmg_ard_F"]]                                  call _fnc_saveToTemplate;                               
[    "vehiclesAmphibious", ["FP_UAF_M113_HMG",             "rhs_bmp2_msv", "rhs_btr80_msv"]] call _fnc_saveToTemplate;       

[      "vehiclesPlanesCAS", ["PRACS_SLA_SU22"]]                     call _fnc_saveToTemplate;                                          
[       "vehiclesPlanesAA", ["PRACS_SLA_MiG23", "PRACS_SLA_MiG21"]] call _fnc_saveToTemplate;                       
["vehiclesPlanesTransport", ["PRACS_AN12B"]]                        call _fnc_saveToTemplate;	                                     

[      "vehiclesHelisLight", ["RHS_Mi8mt_vvsc", "RHS_Mi8T_vvsc"]]   call _fnc_saveToTemplate;    
[  "vehiclesHelisTransport", ["RHS_Mi8mt_vvsc", "RHS_Mi8T_vvsc"]]   call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", ["RHS_Mi8MTV3_vvsc"]]                  call _fnc_saveToTemplate;             
[     "vehiclesHelisAttack", ["RHS_Mi24V_vvsc", "RHS_Mi24P_vvsc"]]  call _fnc_saveToTemplate;  

["vehiclesArtillery", ["RUS_MSV_2s3m1", "RUS_MSV_2b26"]]            call _fnc_saveToTemplate;		 
["magazines", createHashMapFromArray [
["RUS_MSV_2s3m1", ["rhs_mag_HE_2a33"]],
["RUS_MSV_2b26",["VTN_9M522_40"]]
]] call _fnc_saveToTemplate;	

["uavsPortable", ["O_R_UAV_01_F"]]                                       call _fnc_saveToTemplate;                                              // unmanned aerial vehicle(drone), unarmed or armed(Western Sahara style), must be able to be disassembled


//Config special vehicles
["vehiclesMilitiaLightArmed", ["Gas_tigr_sts_ua",     "Gas_tigr_m_ua"]]  call _fnc_saveToTemplate;                                              // same as "vehiclesLightArmed" but for milita forces
[    "vehiclesMilitiaTrucks", ["RUS_MP_ural432031"]]                     call _fnc_saveToTemplate;                                              // same as "vehiclesTrucks" but for milita forces
[      "vehiclesMilitiaCars", ["rhs_uaz_open_MSV_01", "RHS_UAZ_MSV_01"]] call _fnc_saveToTemplate;                                              // same as "vehiclesLightUnarmed" but for milita forces

["vehiclesMilitiaAPCs", ["FP_UAF_M113_HMG", "rhsgref_BRDM2_msv"]]        call _fnc_saveToTemplate;                                              // Militia APCs will be used at roadblocks and attacks at first 4 war levels

["vehiclesPolice", ["Gas_tigr_ua"]]                                      call _fnc_saveToTemplate;                                              // cars used by police forces

[      "staticMGs", ["RHS_M2StaticMG_WD",   "rhs_KORD_high_VDV",      "rhs_KORD_high_VDV"]]                       call _fnc_saveToTemplate;     // static machine guns
[       "staticAT", ["RHS_TOW_TriPod_WD",   "rhs_Kornet_9M133_2_vdv", "rhs_Kornet_9M133_2_vdv", "rhs_SPG9M_VDV"]] call _fnc_saveToTemplate;     // static anti-tank weapons 
[       "staticAA", ["rhs_Igla_AA_pod_vdv", "rhs_Igla_AA_pod_vdv",    "RHS_ZU23_VDV"]]                            call _fnc_saveToTemplate;     // static anti-aircraft weapons
[  "staticMortars", ["RUS_MSV_2b14"]]                                                                             call _fnc_saveToTemplate;     // static mortars
["staticHowitzers", ["RUS_MSV_2a18m"]]                                                                            call _fnc_saveToTemplate;     // static howitzers

["mortarMagazineHE", "rhs_mag_3vo18_10"]                                                                          call _fnc_saveToTemplate;     //this line determines available HE-shells for the static mortars - !needs to be compatible with the mortar! -- Example: ["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] - ENTER ONLY ONE OPTION
["mortarMagazineSmoke", "rhs_mag_d832du_10"]                                                                      call _fnc_saveToTemplate;     //this line determines smoke-shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] - ENTER ONLY ONE OPTION
["mortarMagazineFlare", "rhs_mag_3vs25m_10"]                                                                      call _fnc_saveToTemplate;     //this line determines flare shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Flare_white"] - ENTER ONLY ONE OPTION

["howitzerMagazineHE", "rhs_mag_3of56_10"]                                                                        call _fnc_saveToTemplate;	    //this line determines available HE-shells for the static howitzers - !needs to be compatible with the howitzer! -- same syntax as above - ENTER ONLY ONE OPTION


//Minefield definition
//CFGVehicles variant of Mines are needed "ATMine", "APERSTripMine", "APERSMine"
["minefieldAT", ["ATMine"]]       call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

//SLAT cages, camo nets, logs, doors etc
["animations", [
    ["Gas_tigr_ua",             [     "spare_hide", 0.40]],
    ["Gas_tigr_sts_ua",         [     "spare_hide", 0.20]],
    ["Gas_tigr_m_ua",           [     "spare_hide", 0.25]],
    ["rhs_uaz_open_MSV_01",     [     "spare_hide", 0.65,              "light_hide", 0.75]],
    ["RHS_UAZ_MSV_01",          [     "spare_hide", 0.65,              "light_hide", 0.75]],
    ["O_R_Truck_02_cargo_F",    [ "hideSpareWheel", 0.25,              "hideBumper", 0.67,    "hideWindowProtector", 0.85]],
    ["FP_UAF_M113_HMG",         ["IFF_Panels_Hide", 1.00, "Hide_Turret_Armor_Front", 0.15, "Hide_Turret_Armor_Side", 0.40]],
    ["RSB_BRDM2_ZU23_r",        [            "ogr", 0.85,                  "shield", 0.85,             "maskirovka", 0.70,          "instr2", 0.80,             "box", 0.60]],
    ["rhs_btr80a_msv",          ["crate_l1_unhide", 0.50,         "crate_l2_unhide", 0.50,        "crate_r1_unhide", 0.50, "crate_r2_unhide", 0.50,  "wheel_1_unhide", 0.65]],
    ["rhs_t80a",                [ "kshield_unhide", 0.00,            "kdeck_unhide", 0.00,       "sideskirt_unhide", 0.00,  "fbskirt_unhide", 0.25,  "ftskirt_unhide", 1.00,      "log_unhide", 0.30,      "snorkel_unhide", 0.00]],
    ["Aegis_O_R_Truck_02_aa_F", [    "shield_hide", 0.00,              "hideCrates", 0.05,         "hideSpareWheel", 0.20,    "hideRoofRack", 1.00,    "hideBeacon_1", 0.00,      "hideBumper", 0.10, "hideWindowProtector", 0.05]],
    ["rhs_bmp2d_msv",           ["crate_l1_unhide", 0.40,         "crate_l2_unhide", 0.40,        "crate_l3_unhide", 0.40, "crate_r1_unhide", 0.40, "crate_r2_unhide", 0.40, "crate_r3_unhide", 0.40,       "wood_1_unhide", 0.35]],
    ["rhs_bmp2_msv",            ["crate_l1_unhide", 0.40,         "crate_l2_unhide", 0.40,        "crate_l3_unhide", 0.40, "crate_r1_unhide", 0.40, "crate_r2_unhide", 0.40, "crate_r3_unhide", 0.40,       "wood_1_unhide", 0.35]],
    ["rhs_bmp1p_msv",           ["crate_l1_unhide", 0.40,         "crate_l2_unhide", 0.40,        "crate_l3_unhide", 0.40, "crate_r1_unhide", 0.40, "crate_r2_unhide", 0.40, "crate_r3_unhide", 0.40,       "wood_1_unhide", 0.35]],
    ["RUS_VDV_bmd2",            ["crate_l1_unhide", 0.40,         "crate_l2_unhide", 0.40,        "crate_l3_unhide", 0.40, "crate_r1_unhide", 0.40, "crate_r2_unhide", 0.40, "crate_r3_unhide", 0.40,       "wood_1_unhide", 0.60, "wood_2_unhide", 0.20, "antena2_hide", 0.95]],
    ["RUS_MP_ural432031",       [     "maskirovka", 1.00,                    "tent", 0.00,         "znak_ludi_tent", 1.00,       "znak_60km", 1.00,    "znak_kolonna", 1.00,       "znak_ludi", 1.00,             "Door_LF", 0.00,       "Door_RF", 0.00,   "AddBenches", 1.00]],
    ["mkk_t80_ue1_r",           [       "showRope", 0.80,                "showWood", 0.00,               "showOpvt", 1.00,        "showTent", 0.75,        "showUbka", 0.90,         "showBag", 0.40,            "showBox1", 0.40,      "showBox2", 0.40,     "showBox3", 0.40, "showBox4", 0.40, "showBox5", 0.40,"showLoker1", 1.00, "showLoker2", 1.00]]
]] call _fnc_saveToTemplate;

//vehicle skins
["variants", [
    ["Gas_tigr_m_ua",          ["Ukrain",   1]],
    ["Gas_tigr_sts_ua",        ["Ukrain",   1]],
    ["rhs_uaz_open_MSV_01",    ["Camo",     1]],
    ["RHS_UAZ_MSV_01",         ["Camo",     1]],
    ["rhsgref_BRDM2_HQ_msv",   ["3tone",    1]],
    ["O_R_Truck_02_F",         ["Ardistan", 1]],
    ["O_R_Truck_02_cargo_F",   ["Ardistan", 1]],
    ["O_R_Truck_02_fuel_F",    ["Ardistan", 1]],
    ["O_R_Truck_02_medical_F", ["Ardistan", 1]],
    ["TSB_BRDM2_r",            ["Woodland", 1]],
    ["leopard1_b",             ["Green",    1]],
    ["TSB_BRDM2_ZU23_r",       ["Woodland", 1]],
    ["rhsgref_BRDM2_msv",      ["3tone",    1]]
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////
//Faces and Voices given to AI Factions.

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

if (_hasWS) then {
    _characters append ["lxWS_Gustavo_Head", "lxWS_Journalist_Head"];
};
if (_hasLawsOfWar) then {
    _characters append ["WhiteHead_23"];
};
if (_hasContact) then {
    _characters append ["WhiteHead_24", "RussianHead_4", "LivonianHead_5", "WhiteHead_25", "LivonianHead_2", "RussianHead_1", "WhiteHead_27", "WhiteHead_28", "LivonianHead_3", "RussianHead_3", "RussianHead_2", "LivonianHead_10", "WhiteHead_32", "WhiteHead_30", "LivonianHead_8", "LivonianHead_4", "LivonianHead_9"];
};

["faces", _characters] call _fnc_saveToTemplate;


private _languages = [
    "RHS_Male01RUS",
    "RHS_Male02RUS",
    "RHS_Male03RUS",
    "RHS_Male04RUS",
    "RHS_Male05RUS"
];
if (_hasContact) then {
    _languages append ["Male01RUS", "Male02RUS", "Male03RUS"];
};

["voices", _languages] call _fnc_saveToTemplate;

["insignia", []] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["designatedGrenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];

_loadoutData set ["lightATLaunchers",   [["rhs_weap_rpg26", "", "", "", ["RPG26_F"],                                  [], ""]]];
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
_loadoutData set ["backpacks", []];
_loadoutData set ["longRangeRadios", ["B_RadioBag_01_green_F"]];           //long range radios used by radiomen
_loadoutData set ["helmets", []];

_loadoutData set ["facewear", ["min_rf_scarf_desert", "min_rf_scarf_olive", "FaceWear_Balaclava", "G_Headset_light", "G_Balaclava_blk", "G_Balaclava_oli", "G_Bandanna_blk", "G_Bandanna_khk", "G_Bandanna_oli", "G_Bandanna_tan", "Aegis_G_Headset_black_F", "Aegis_G_Headset_Olive_F", "fleece_scarf"]];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

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
    _squadLeaderItems append   ["ACE_Flashlight_XL50", "ACE_EntrenchingTool", "ACE_IR_Strobe_Item", "ACE_Clacker"];
    _riflemanItems append      ["ACE_Flashlight_XL50"];
    _medicItems append         ["ACE_Flashlight_XL50", "ACE_bloodIV_500", "ACE_bloodIV_500", "ACE_personalAidKit", "ACE_splint", "ACE_tourniquet", "ACE_tourniquet", "ACE_tourniquet", "ACE_tourniquet", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot"];
    _grenadierItems append     ["ACE_Flashlight_XL50", "ACE_Clacker"];
    _demoItems append          ["ACE_Flashlight_XL50", "ACE_DefusalKit", "ACE_M26_Clacker"];
    _engineerItems append      ["ACE_Flashlight_XL50", "ACE_EntrenchingTool", "ACE_DefusalKit"];
    _lightAntiTankItems append ["ACE_Flashlight_XL50"];
    _antiTankItems append      ["ACE_Flashlight_XL50"];
    _antiAirItems append       ["ACE_Flashlight_XL50"];
    _machineGunnerItems append ["ACE_Flashlight_XL50", "ACE_SpareBarrel", "ACE_Tripod"];
    _marksmanItems append      ["ACE_Flashlight_XL50"];
    _sniperItems append        ["ACE_Flashlight_XL50", "ACE_ATragMX", "ACE_SpottingScope", "ACE_Kestrel4500"];
    _policeItems append        ["ACE_Flashlight_XL50"];
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

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData set ["uniforms", ["rhs_uniform_flora_patchless"]];
_sfLoadoutData set ["vests", ["rhs_6b23_6sh92", "rhs_6b23_6sh92_headset", "rhs_6b23_6sh92_radio", "rhs_6b23_6sh92_vog", "rhs_6b23_6sh92_vog_headset", "rhs_6b23_engineer", "rhs_6b23_medic", "rhs_6b23_rifleman", "rhs_6b23_sniper", "rhs_6b23_vydra_3m", "rhs_6b23_6sh116_flora", "rhs_6b23_6sh116_vog_flora"]];
_sfLoadoutData set ["backpacks", ["min_rf_backpack_green", "min_rf_backpack_green", "Aegis_B_patrolBackpack_wdl_F", "rhs_tortila_olive", "rhs_tortila_olive", "rhs_tortila_olive", "min_rf_torna_vsr", "B_Carryall_oli"]];
_sfLoadoutData set ["helmets", ["rhs_6b26", "rhs_6b26_ess", "rhs_6b7_1m_flora"]];
_sfLoadoutData set ["binoculars", ["rhs_pdu4"]];
//["Weapon", "Muzzle", "Rail", "Sight", [], [], "Bipod"];

_sfLoadoutData set ["rifles", [
    ["rhs_weap_ak103", "rhs_acc_dtk4screws", "rhs_acc_Zenit2dp", "rhs_acc_1p63", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],
    ["rhs_weap_ak103", "rhs_acc_pbs1",       "rhs_acc_Zenit2dp", "rhs_ekp8_02",  ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],
    ["rhs_weap_ak103", "rhs_acc_dtk4screws", "rhs_acc_perst1ik", "rhs_acc_1p63", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],
    ["rhs_weap_ak103", "rhs_acc_pbs1",       "rhs_acc_perst1ik", "rhs_acc_pkas", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],

    ["rhs_weap_ak103_npz", "rhs_acc_dtk4screws", "rhs_acc_Zenit2dp", "Aegis_optic_1p87", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],
    ["rhs_weap_ak103_npz", "rhs_acc_pbs1",       "rhs_acc_Zenit2dp", "Aegis_optic_ICO",  ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],
    ["rhs_weap_ak103_npz", "rhs_acc_pbs1",       "rhs_acc_perst1ik", "rhs_acc_ekp8_18",  ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],

    ["rhs_weap_ak103_zentico01", "rhs_acc_dtk4screws", "rhs_acc_2dpZenit_ris", "rhs_acc_okp7_dovetail", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_acc_grip_ffg2" ],
    ["rhs_weap_ak103_zentico01", "rhs_acc_pbs1",       "rhs_acc_perst3_2dp_h", "rhs_acc_nita",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_acc_grip_rk2"  ],
    ["rhs_weap_ak103_zentico01", "rhs_acc_dtk4screws", "rhs_acc_perst3_2dp_h", "rhs_acc_ekp1",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_acc_grip_rk6"  ],
    ["rhs_weap_ak103_zentico01", "rhs_acc_pbs1",       "rhs_acc_perst3_2dp_h", "rhs_acc_1p78",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhsusf_acc_rvg_blk"],

    ["rhs_weap_ak103_zentico01_b33", "rhs_acc_dtk4screws", "rhs_acc_2dpZenit_ris", "Aegis_optic_1p87",     ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_acc_grip_ffg2" ],
    ["rhs_weap_ak103_zentico01_b33", "rhs_acc_pbs1",       "rhs_acc_perst3_2dp_h", "optic_Yorris",         ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_acc_grip_rk2"  ],
    ["rhs_weap_ak103_zentico01_b33", "rhs_acc_dtk4screws", "rhs_acc_perst3_2dp_h", "rhs_acc_rakursPM",     ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_acc_grip_rk6"  ],
    ["rhs_weap_ak103_zentico01_b33", "rhs_acc_pbs1",       "rhs_acc_perst3_2dp_h", "optic_Aco",            ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhsusf_acc_rvg_blk"],
    ["rhs_weap_ak103_zentico01_b33", "rhs_acc_dtk4long",   "rhs_acc_2dpZenit_ris", "rhsusf_acc_RX01",      ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhsusf_acc_rvg_blk"],
    ["rhs_weap_ak103_zentico01_b33", "rhs_acc_pbs1",       "rhs_acc_perst3_2dp_h", "MMM_Acc_IT_1TWS_615A", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_acc_grip_rk2"  ],

    ["rhs_weap_asval", "", "", "rhs_acc_1p63",    ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], ""],
    ["rhs_weap_asval", "", "", "rhs_acc_ekp8_02", ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], ""],
    ["rhs_weap_asval", "", "", "rhs_acc_pkas",    ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], ""],

    ["rhs_weap_asval_grip", "", "rhs_acc_perst1ik_ris", "rhs_acc_1p63",          ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], "rhs_grip_ffg2"],
    ["rhs_weap_asval_grip", "", "rhs_acc_Zenit2dp",     "rhs_acc_ekp8_02",       ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], "rhs_grip_ffg2"],
    ["rhs_weap_asval_grip", "", "rhs_acc_Zenit2dp",     "rhs_acc_pkas",          ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], "rhs_grip_rk6" ],
    ["rhs_weap_asval_grip", "", "rhs_acc_perst1ik_ris", "rhs_acc_okp7_dovetail", ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], "rhs_grip_ffg2"],
    ["rhs_weap_asval_grip", "", "rhs_acc_Zenit2dp",     "",                      ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], "rhs_grip_rk6" ],
    ["rhs_weap_asval_grip", "", "rhs_acc_perst1ik_ris", "rhs_acc_pso1m21",       ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], ""             ],

    ["rhs_weap_asval_grip_npz", "", "rhs_acc_Zenit2dp",     "rhs_acc_ekp8_18",      ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], "rhs_grip_ffg2"],
    ["rhs_weap_asval_grip_npz", "", "rhs_acc_perst1ik_ris", "MMM_Acc_IT_1TWS_615A", ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], "rhs_grip_rk6" ],
    ["rhs_weap_asval_grip_npz", "", "rhs_acc_perst1ik_ris", "optic_Arco_blk_F",     ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], ""             ],

    ["rhs_weap_asval_npz", "", "rhs_acc_Zenit2dp", "optic_Arco_blk_F", ["rhs_20Rnd_9x39mm_SP5", "rhs_20Rnd_9x39mm_SP6"], [], ""]
]];
_sfLoadoutData set ["carbines", [
    ["rhs_weap_ak104", "rhs_acc_dtk4long",   "rhs_acc_perst1ik", "rhs_acc_1p63",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],
    ["rhs_weap_ak104", "rhs_acc_dtk4screws", "rhs_acc_Zenit2dp", "rhs_acc_okp7_dovetail", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],
    ["rhs_weap_ak104", "rhs_acc_pbs1",       "rhs_acc_Zenit2dp", "rhs_acc_ekp8_02",       ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],
    ["rhs_weap_ak104", "rhs_acc_pbs1",       "rhs_acc_perst1ik", "rhs_acc_ekp1",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],
    ["rhs_weap_ak104", "rhs_acc_pbs1",       "rhs_acc_perst1ik", "rhs_acc_pkas",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],

    ["rhs_weap_ak104_npz", "rhs_acc_dtk4screws", "rhs_acc_perst1ik", "MMM_Acc_IT_1TWS_615A",   ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],
    ["rhs_weap_ak104_npz", "rhs_acc_dtk4long",   "rhs_acc_Zenit2dp", "Aegis_optic_ICO",        ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],
    ["rhs_weap_ak104_npz", "rhs_acc_dtk4screws", "rhs_acc_Zenit2dp", "rhs_acc_okp7_picatinny", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],
    ["rhs_weap_ak104_npz", "rhs_acc_pbs1",       "rhs_acc_Zenit2dp", "rhs_acc_epk8_18",        ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],
    ["rhs_weap_ak104_npz", "rhs_acc_pbs1",       "rhs_acc_Zenit2dp", "rhsusf_acc_RX01",        ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],
    ["rhs_weap_ak104_npz", "rhs_acc_pbs1",       "rhs_acc_perst1ik", "rhsusf_acc_su230_mrds",  ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],
    ["rhs_weap_ak104_npz", "rhs_acc_pbs1",       "rhs_acc_perst1ik", "rhsusf_acc_su230",       ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""],

    ["rhs_weap_ak104_zenitco01", "rhs_acc_pbs1",       "rhs_acc_perst3",       "rhs_acc_ekp8_02",       ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_ffg2"],
    ["rhs_weap_ak104_zenitco01", "rhs_acc_pbs1",       "rhs_acc_perst3_2dp_h", "rhs_acc_pkas",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_rk6" ],
    ["rhs_weap_ak104_zenitco01", "rhs_acc_pbs1",       "rhs_acc_perst3_2dp_h", "rhs_acc_okp7_dovetail", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], ""             ],
    ["rhs_weap_ak104_zenitco01", "rhs_acc_dtk4screws", "rhs_acc_perst3_2dp_h", "rhs_acc_1p63",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_ffg2"],

    ["rhs_weap_ak104_zenitco01_b33", "rhs_acc_pbs1", "rhs_acc_perst3_2dp_h", "rhsusf_acc_su230", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhsusf_acc_grip3"],
    ["rhs_weap_ak104_zenitco01_b33", "rhs_acc_pbs1", "rhs_acc_perst3_2dp_h", "rhsusf_acc_ELCAN", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], [], "rhs_grip_ffg2"   ]
]];
_sfLoadoutData set ["grenadeLaunchers", [
    ["rhs_weap_ak103_gp25", "rhs_acc_dtk4screws", "", "rhs_acc_1p63",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40TB", "rhs_VG40OP_white", "rhs_VG40MD", "rhs_GDM40_white", "rhs_GRD40_red"], ""],
    ["rhs_weap_ak103_gp25", "rhs_acc_dtk4screws", "", "rhs_acc_ekp8_02",       ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40TB", "rhs_VG40OP_white", "rhs_VG40MD", "rhs_GDM40_white", "rhs_GRD40_red"], ""],
    ["rhs_weap_ak103_gp25", "rhs_acc_dtk4long",   "", "",                      ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40TB", "rhs_VG40OP_white", "rhs_VG40MD", "rhs_GDM40_white", "rhs_GRD40_red"], ""],
    ["rhs_weap_ak103_gp25", "rhs_acc_pbs1",       "", "rhs_acc_ekp1",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40TB", "rhs_VG40OP_white", "rhs_VG40MD", "rhs_GDM40_white", "rhs_GRD40_red"], ""],
    ["rhs_weap_ak103_gp25", "rhs_acc_pbs1",       "", "rhs_acc_pkas",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40TB", "rhs_VG40OP_white", "rhs_VG40MD", "rhs_GDM40_white", "rhs_GRD40_red"], ""],
    ["rhs_weap_ak103_gp25", "rhs_acc_pbs1",       "", "rhs_acc_nita",          ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40TB", "rhs_VG40OP_white", "rhs_VG40MD", "rhs_GDM40_white", "rhs_GRD40_red"], ""],
    ["rhs_weap_ak103_gp25", "rhs_acc_pbs1",       "", "rhs_acc_okp7_dovetail", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40TB", "rhs_VG40OP_white", "rhs_VG40MD", "rhs_GDM40_white", "rhs_GRD40_red"], ""],

    ["rhs_weap_ak103_gp25_npz", "rhs_acc_dtk4long",   "", "Aegis_optic_ICO",  ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40TB", "rhs_VG40OP_white", "rhs_VG40MD", "rhs_GDM40_white", "rhs_GRD40_red"], ""],
    ["rhs_weap_ak103_gp25_npz", "rhs_acc_dtk4long",   "", "rhsusf_acc_ELCAN", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40TB", "rhs_VG40OP_white", "rhs_VG40MD", "rhs_GDM40_white", "rhs_GRD40_red"], ""],
    ["rhs_weap_ak103_gp25_npz", "rhs_acc_dtk4screws", "", "rhs_acc_ekp8_18",  ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40TB", "rhs_VG40OP_white", "rhs_VG40MD", "rhs_GDM40_white", "rhs_GRD40_red"], ""],
    ["rhs_weap_ak103_gp25_npz", "rhs_acc_pbs1",       "", "Aegis_optic_1p87", ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_89"], ["rhs_VOG25P", "rhs_VG40TB", "rhs_VG40OP_white", "rhs_VG40MD", "rhs_GDM40_white", "rhs_GRD40_red"], ""]
]];
_sfLoadoutData set ["SMGs", [
    ["KA_PP19_MTK83", "KA_PBS_1_Silencer_PP19", "", "Aegis_optic_1p87", ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "KA_PBS_1_Silencer_PP19", "", "Aegis_optic_ICO",  ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "KA_PBS_1_Silencer_PP19", "", "rhs_acc_rakursPM", ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "KA_PBS_1_Silencer_PP19", "", "rhs_acc_ekp8_18",  ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "KA_PBS_1_Silencer_PP19", "", "rhsusf_acc_RX01",  ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "KA_PBS_1_Silencer_PP19", "", "optic_Aco_smg",    ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "KA_PBS_1_Silencer_PP19", "", "KA_M16A2_Scope",   ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],
    ["KA_PP19_MTK83", "KA_PBS_1_Silencer_PP19", "", "",                 ["KA_64Rnd_9x18_PMM_FMJ_Mag"], [], ""],

    ["KA_PP19_MTK83", "KA_Vityaz_PBS_1_Silencer", "KA_Vityaz_Laser_IR", "Aegis_optic_1p87", ["KA_30Rnd_9x19_7N31_AP_Mag", "KA_30Rnd_9x19_LIBRASNAIL_AP_Mag"], [], ""],
    ["KA_PP19_MTK83", "KA_Vityaz_PBS_1_Silencer", "KA_Vityaz_Laser_IR", "rhs_acc_rakursPM", ["KA_30Rnd_9x19_7N31_AP_Mag", "KA_30Rnd_9x19_LIBRASNAIL_AP_Mag"], [], ""],
    ["KA_PP19_MTK83", "KA_Vityaz_PBS_1_Silencer", "KA_Vityaz_Laser_IR", "rhs_acc_ekp8_18",  ["KA_30Rnd_9x19_7N31_AP_Mag", "KA_30Rnd_9x19_LIBRASNAIL_AP_Mag"], [], ""],
    ["KA_PP19_MTK83", "KA_Vityaz_PBS_1_Silencer", "KA_Vityaz_Laser_IR", "rhsusf_acc_RX01",  ["KA_30Rnd_9x19_7N31_AP_Mag", "KA_30Rnd_9x19_LIBRASNAIL_AP_Mag"], [], ""],
    ["KA_PP19_MTK83", "KA_Vityaz_PBS_1_Silencer", "KA_Vityaz_Laser_IR", "",                 ["KA_30Rnd_9x19_7N31_AP_Mag", "KA_30Rnd_9x19_LIBRASNAIL_AP_Mag"], [], ""]
]];
_sfLoadoutData set ["machineGuns", [
    ["rhs_weap_pkp", "", "", "rhs_acc_1p63",    ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "rhs_acc_nita",    ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "rhs_acc_ekp8_02", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "rhs_acc_ekp1",    ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "rhs_acc_pkas",    ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "rhs_acc_pso1m21", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "rhs_acc_1p78",    ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""],
    ["rhs_weap_pkp", "", "", "rhs_acc_1pn93_2", ["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_7BZ3", "rhs_100Rnd_762x54mmR_7N13", "rhs_100Rnd_762x54mmR_7N26"], [], ""]
]];
_sfLoadoutData set ["marksmanRifles", [
    ["rhs_weap_vss", "", "", "rhs_acc_pso1m21", ["rhs_10Rnd_9x39mm_SP5", "rhs_10Rnd_9x39mm_SP6"], [], ""],
    ["rhs_weap_vss", "", "", "rhs_acc_1p29",    ["rhs_10Rnd_9x39mm_SP5", "rhs_10Rnd_9x39mm_SP6"], [], ""],

    ["rhs_weap_vss_grip", "", "rhs_acc_perst_1ik", "rhs_acc_1pn93_1", ["rhs_10Rnd_9x39mm_SP5", "rhs_10Rnd_9x39mm_SP6"], [], "rhs_acc_grip_ffg2"],
    ["rhs_weap_vss_grip", "", "rhs_acc_perst_1ik", "rhs_acc_pso1m21", ["rhs_10Rnd_9x39mm_SP5", "rhs_10Rnd_9x39mm_SP6"], [], "rhs_acc_grip_rk2" ],
    ["rhs_weap_vss_grip", "", "rhs_acc_perst_1ik", "rhs_acc_pso1m21", ["rhs_10Rnd_9x39mm_SP5", "rhs_10Rnd_9x39mm_SP6"], [], "rhs_acc_grip_ffg2"],
    ["rhs_weap_vss_grip", "", "rhs_acc_perst_1ik", "rhs_acc_1p29",    ["rhs_10Rnd_9x39mm_SP5", "rhs_10Rnd_9x39mm_SP6"], [], "rhs_acc_grip_rk2" ],

    ["rhs_weap_vss_grip_npz", "", "rhs_acc_perst_1ik", "rhs_acc_dh520x56",     ["rhs_10Rnd_9x39mm_SP5", "rhs_10Rnd_9x39mm_SP6"], [], "rhs_acc_grip_rk2" ],
    ["rhs_weap_vss_grip_npz", "", "rhs_acc_perst_1ik", "MMM_acc_IT_1TWS_615A", ["rhs_10Rnd_9x39mm_SP5", "rhs_10Rnd_9x39mm_SP6"], [], "rhs_acc_grip_ffg2"],
    ["rhs_weap_vss_grip_npz", "", "rhs_acc_perst_1ik", "rhs_acc_dh520x56",     ["rhs_10Rnd_9x39mm_SP5", "rhs_10Rnd_9x39mm_SP6"], [], "rhs_acc_grip_ffg2"]
]];
_sfLoadoutData set ["sniperRifles", [
    ["MMM_weap_SV98M", "", "", "rhs_acc_dh520x56", ["MMM_mag_SV98_7N1", "MMM_mag_SV98_7N14"], [], ""]
]];
_sfLoadoutData set ["sidearms", [
    ["rhs_weap_6b_6p9", "rhs_acc_6p9_suppressor", "", "", ["rhs_mag_9x18_8_57N181S"], [], ""],
    ["rhs_weap_6b_6p9", "rhs_acc_6p9_suppressor", "", "", ["rhs_mag_9x18_8_57N181S"], [], ""],
    ["rhs_weap_6b_6p9", "rhs_acc_6p9_suppressor", "", "", ["rhs_mag_9x18_8_57N181S"], [], ""],
    ["rhs_weap_6b_6p9", "rhs_acc_6p9_suppressor", "", "", ["rhs_mag_9x18_8_57N181S"], [], ""],
    ["rhs_weap_6b_6p9", "rhs_acc_6p9_suppressor", "", "", ["rhs_mag_9x18_8_57N181S"], [], ""],

    ["rhs_weap_pya", "", "", "", ["rhs_mag_9x19_17", "rhs_mag_9x19_7n31_17"], [], ""],

    ["rhs_weap_pp2000_folded", "", "", "Aegis_optic_1p87", ["rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n31_44"], [], ""],
    ["rhs_weap_pp2000_folded", "", "", "Aegis_optic_1p87", ["rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n31_44"], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData set ["uniforms", ["ibr_U_B_yul_M88"]];
_militaryLoadoutData set ["vests", ["ibr_yul_vest"]];
_militaryLoadoutData set ["backpacks", ["B_AssaultPack_khk", "B_AssaultPack_rgr", "B_Carryall_oli", "B_FieldPack_oli", "B_Kitbag_rgr", "B_Kitbag_sgg", "B_TacticalPack_rgr", "B_TacticalPack_oli"]];
_militaryLoadoutData set ["helmets", ["H_HelmetYu", "H_Booniehat_YU"]];
_militaryLoadoutData set ["binoculars", ["Binocular"]];

_militaryLoadoutData set ["rifles", [
    ["rhs_weap_ak74", "rhs_acc_dtk1983", "",                 "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    ["rhs_weap_ak74", "rhs_acc_dtk1983", "rhs_acc_2dpZenit", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    ["rhs_weap_ak74", "rhs_acc_dtk1983", "rhs_acc_2dpZenit", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],

    ["rhs_weap_ak74n", "rhs_acc_dtk1983", "",                 "",                ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    ["rhs_weap_ak74n", "rhs_acc_dtk3",    "",                 "rhs_acc_ekp8_02", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    ["rhs_weap_ak74n", "rhs_acc_dtk1983", "rhs_acc_2dpZenit", "rhs_acc_1p63",    ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    ["rhs_weap_ak74n", "rhs_acc_dtk1983", "rhs_acc_2dpZenit", "rhs_acc_pkas",    ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    
    ["rhs_weap_aks74", "rhs_acc_dtk1983", "",                 "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    ["rhs_weap_aks74", "rhs_acc_dtk3",    "rhs_acc_2dpZenit", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    ["rhs_weap_aks74", "rhs_acc_dtk1983", "rhs_acc_2dpZenit", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],

    ["rhs_weap_aks74n", "rhs_acc_dtk1983", "",                 "",                      ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    ["rhs_weap_aks74n", "rhs_acc_dtk3",    "",                 "rhs_acc_ekp1",          ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    ["rhs_weap_aks74n", "rhs_acc_dtk1983", "rhs_acc_2dpZenit", "rhs_acc_okp7_dovetail", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    ["rhs_weap_aks74n", "rhs_acc_dtk1983", "rhs_acc_2dpZenit", "rhs_acc_pkas",          ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],

    ["rhsgref_weap_savz58v_ris", "",                  "",                 "",                 ["rhs_30Rnd_762x39mm_Savz58"], [], ""],
    ["rhsgref_weap_savz58v_ris", "rhsgref_acc_zendl", "",                 "Aegis_optic_1p87", ["rhs_30Rnd_762x39mm_Savz58"], [], ""],
    ["rhsgref_weap_savz58v_ris", "rhsgref_acc_zendl", "rhs_acc_2dpZenit", "rhs_acc_ekp8_18",  ["rhs_30Rnd_762x39mm_Savz58"], [], ""],
    ["rhsgref_weap_savz58v_ris", "rhsgref_acc_zendl", "rhs_acc_2dpZenit", "optic_Yorris",     ["rhs_30Rnd_762x39mm_Savz58"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
    ["rhs_weap_aks74u", "rhs_acc_ukk",  "",  "",                ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    ["rhs_weap_aks74u", "rhs_acc_dtk3", "",  "",                ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],

    ["rhs_weap_aks74un", "rhs_acc_dtk1", "", "rhs_acc_pkas",    ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    ["rhs_weap_aks74un", "rhs_acc_ukk",  "", "rhs_acc_pkas",    ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    ["rhs_weap_aks74un", "rhs_acc_dtk1", "", "rhs_acc_ekp1",    ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    ["rhs_weap_aks74un", "rhs_acc_dtk3", "", "rhs_acc_ekp8_02", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
    ["rhs_weap_ak74_gp25", "",                "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],
    ["rhs_weap_ak74_gp25", "rhs_acc_dtk3",    "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],
    ["rhs_weap_ak74_gp25", "ths_acc_dtk1983", "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],

    ["rhs_weap_ak74n_gp25", "",                "", "",                      ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],
    ["rhs_weap_ak74n_gp25", "rhs_acc_dtk3",    "", "",                      ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],
    ["rhs_weap_ak74n_gp25", "ths_acc_dtk1983", "", "rhs_acc_ekp1",          ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],
    ["rhs_weap_ak74n_gp25", "",                "", "rhs_acc_ekp8_02",       ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],
    ["rhs_weap_ak74n_gp25", "rhs_acc_dtk3",    "", "rhs_acc_ok97_dovetail", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],
    ["rhs_weap_ak74n_gp25", "ths_acc_dtk1983", "", "rhs_acc_pkas",          ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],

    ["rhs_weap_aks74_gp25", "",                "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],
    ["rhs_weap_aks74_gp25", "rhs_acc_dtk3",    "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""],
    ["rhs_weap_aks74_gp25", "ths_acc_dtk1983", "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white"], ""]
]];
_militaryLoadoutData set ["SMGs", [
    ["KA_PP19", "", "", "",              ["KA_64Rnd_9x18mm_PMM_FMJ_mag"], [], ""],
    ["KA_PP19", "", "", "",              ["KA_64Rnd_9x18mm_PMM_FMJ_mag"], [], ""],
    ["KA_PP19", "", "", "KA_kobra_PP19", ["KA_64Rnd_9x18mm_PMM_FMJ_mag"], [], ""],

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
    ["rhs_weap_rpk74m", "rhs_acc_dtkrpk", "rhs_acc_2dpZenit", "ehs_acc_ekp8_02", ["rhs_45Rnd_545X39_7N10_AK", "rhs_45Rnd_545X39_7N22_AK", "rhs_45Rnd_545X39_7N6_AK", "rhs_45Rnd_545X39_7N6M_AK"], [], ""],
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

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

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
    ["rhsusf_weap_makarov_pm", "", "", "", ["rhs_mag_9x18_8_57N181S"], [], ""],
    ["rhsusf_weap_makarov_pm", "", "", "", ["rhs_mag_9x18_8_57N181S"], [], ""],
    ["rhsusf_weap_makarov_pm", "", "", "", ["rhs_mag_9x18_8_57N181S"], [], ""]
]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaUniforms = ["rhs_uniform_g3_rgr", "U_B_CombatUniform_sgg_tshirt", "rhsgref_uniform_woodland_olive"];
if (_hasContact) then {
    _militiaUniforms append ["U_I_L_Uniform_01_deserter_F"];
};

private _militiaBags = ["B_AssaultPack_khk","B_AssaultPack_rgr", "B_FieldPack_oli", "rhs_rd54_flora1", "rhs_rd54_flora2", "RUS_sidor"];
if (_hasLawsOfWar) then {
    _militiaBags append ["B_LegStrapBag_olive_F"];
};
if (_hasContact) then {
    _militiaBags append ["B_FieldPack_green_F", "B_AssaultPack_wdl_F"];
};

private _militiaHelmets = ["H_Bandanna_sgg", "H_Bandanna_cbr", "H_Bandanna_gry", "H_Watchcap_camo", "H_Booniehat_oli", "rhs_6b47_bare", "rhs_ssh60"];
if (_hasWs) then {
    _militiaHelmets append ["lxWX_H_ssh40_green"];
};

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militiaLoadoutData set ["uniforms", _militiaUniforms];
_militiaLoadoutData set ["vests", ["V_TacVest_oli", "V_TacVest_oli", "V_BandollierB_oli", "rhs_6b23", "rhs_6sh92_headset", "min_rf_combat_belt_green"]];
_militiaLoadoutData set ["backpacks", _militiaBags];
_militiaLoadoutData set ["helmets", _militiaHelmets];

_militiaLoadoutData set ["rifles", [
    ["rhs_weap_akm",  "",               "",                 "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akm",  "",               "",                 "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akm",  "rhs_acc_dtkakm", "",                 "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akm",  "rhs_acc_dtk1l",  "",                 "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akm",  "",               "rhs_acc_2dpZenit", "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akm",  "rhs_acc_dtkakm", "rhs_acc_2dpZenit", "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akm",  "rhs_acc_dtk1l",  "rhs_acc_2dpZenit", "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],

    ["rhs_weap_akmn", "",               "",                 "",                      ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akmn", "",               "",                 "rhs_acc_1p78",          ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akmn", "rhs_acc_dtkakm", "",                 "",                      ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akmn", "rhs_acc_dtk1l",  "",                 "",                      ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akmn", "",               "rhs_acc_2dpZenit", "",                      ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akmn", "rhs_acc_dtkakm", "rhs_acc_2dpZenit", "",                      ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akmn", "rhs_acc_dtk1l",  "rhs_acc_2dpZenit", "",                      ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akmn", "",               "",                 "rhs_acc_ekp1",          ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akmn", "rhs_acc_dtkakm", "",                 "rhs_acc_ekp8_02",       ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akmn", "rhs_acc_dtkakm", "rhs_acc_2dpZenit", "rhs_acc_okp7_dovetail", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    
    ["rhs_weap_akms", "",               "",                 "",             ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akms", "rhs_acc_dtkakm", "",                 "",             ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akms", "rhs_acc_dtk1l",  "",                 "",             ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akms", "",               "rhs_acc_2dpZenit", "",             ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akms", "rhs_acc_dtkakm", "rhs_acc_2dpZenit", "",             ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""],
    ["rhs_weap_akms", "rhs_acc_dtk1l",  "rhs_acc_2dpZenit", "",             ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
    ["rhs_weap_aks74u", "rhs_acc_ukk",  "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    ["rhs_weap_aks74u", "rhs_acc_ukk",  "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    ["rhs_weap_aks74u", "rhs_acc_dtk1", "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    ["rhs_weap_aks74u", "rhs_acc_dtk1", "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""],
    ["rhs_weap_aks74u", "rhs_acc_dtk3", "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39mm_7N6M_AK"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
    ["rhs_weap_akm_gp25",  "",               "", "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akm_gp25",  "",               "", "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akm_gp25",  "rhs_acc_dtkakm", "", "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akm_gp25",  "rhs_acc_dtk1l",  "", "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akm_gp25",  "",               "", "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akm_gp25",  "rhs_acc_dtkakm", "", "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akm_gp25",  "rhs_acc_dtk1l",  "", "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],

    ["rhs_weap_akmn_gp25", "",               "",                 "",                      ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akmn_gp25", "",               "",                 "rhs_acc_1p78",          ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akmn_gp25", "rhs_acc_dtkakm", "",                 "",                      ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akmn_gp25", "rhs_acc_dtk1l",  "",                 "",                      ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akmn_gp25", "",               "rhs_acc_2dpZenit", "",                      ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akmn_gp25", "rhs_acc_dtkakm", "rhs_acc_2dpZenit", "",                      ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akmn_gp25", "rhs_acc_dtk1l",  "rhs_acc_2dpZenit", "",                      ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akmn_gp25", "",               "",                 "rhs_acc_ekp1",          ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akmn_gp25", "rhs_acc_dtkakm", "",                 "rhs_acc_ekp8_02",       ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akmn_gp25", "rhs_acc_dtkakm", "rhs_acc_2dpZenit", "rhs_acc_okp7_dovetail", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    
    ["rhs_weap_akms_gp25", "",               "", "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akms_gp25", "rhs_acc_dtkakm", "", "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akms_gp25", "rhs_acc_dtk1l",  "", "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akms_gp25", "",               "", "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akms_gp25", "rhs_acc_dtkakm", "", "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""],
    ["rhs_weap_akms_gp25", "rhs_acc_dtk1l",  "", "", ["rhs_30Rnd_762x39mm_bakelite", "rhs_30Rnd_762x39mm_bakelite_89"], ["rhs_VOG25", "rhs_VG40MD"], ""]
]];
_militiaLoadoutData set ["SMGs", [
    ["rhs_weap_pp2000", "", "", "",                       ["rhs_mag_9x19mm_7n31_20", "rhs_mag_9x19mm_7n21_20"], [], ""],
    ["rhs_weap_pp2000", "", "", "Aegis_optic_1p87",       ["rhs_mag_9x19mm_7n31_20", "rhs_mag_9x19mm_7n21_20"], [], ""],
    ["rhs_weap_pp2000", "", "", "optic_Yorris",           ["rhs_mag_9x19mm_7n31_20", "rhs_mag_9x19mm_7n21_20"], [], ""],
    ["rhs_weap_pp2000", "", "", "rhs_acc_okp7_picatinny", ["rhs_mag_9x19mm_7n31_20", "rhs_mag_9x19mm_7n21_20"], [], ""]
]];
_militiaLoadoutData set ["machineGuns", [
    ["rhs_weap_rpk74m", "rhs_acc_dtkrpk", "",                 "",                ["rhs_45Rnd_545X39_7N10_AK", "rhs_45Rnd_545X39_7N22_AK", "rhs_45Rnd_545X39_7N6_AK", "rhs_45Rnd_545X39_7N6M_AK"], [], ""],
    ["rhs_weap_rpk74m", "rhs_acc_dtkrpk", "",                 "rhs_acc_1p63",    ["rhs_45Rnd_545X39_7N10_AK", "rhs_45Rnd_545X39_7N22_AK", "rhs_45Rnd_545X39_7N6_AK", "rhs_45Rnd_545X39_7N6M_AK"], [], ""],
    ["rhs_weap_rpk74m", "rhs_acc_dtk2",   "",                 "rhs_acc_nita",    ["rhs_45Rnd_545X39_7N10_AK", "rhs_45Rnd_545X39_7N22_AK", "rhs_45Rnd_545X39_7N6_AK", "rhs_45Rnd_545X39_7N6M_AK"], [], ""],
    ["rhs_weap_rpk74m", "rhs_acc_dtk2",   "",                 "rhs_acc_ekp1",    ["rhs_45Rnd_545X39_7N10_AK", "rhs_45Rnd_545X39_7N22_AK", "rhs_45Rnd_545X39_7N6_AK", "rhs_45Rnd_545X39_7N6M_AK"], [], ""],
    ["rhs_weap_rpk74m", "rhs_acc_dtk2",   "",                 "",                ["rhs_45Rnd_545X39_7N10_AK", "rhs_45Rnd_545X39_7N22_AK", "rhs_45Rnd_545X39_7N6_AK", "rhs_45Rnd_545X39_7N6M_AK"], [], ""],
    ["rhs_weap_rpk74m", "rhs_acc_dtk2",   "rhs_acc_2dpZenit", "rhs_acc_pkas",    ["rhs_45Rnd_545X39_7N10_AK", "rhs_45Rnd_545X39_7N22_AK", "rhs_45Rnd_545X39_7N6_AK", "rhs_45Rnd_545X39_7N6M_AK"], [], ""],
    ["rhs_weap_rpk74m", "rhs_acc_dtkrpk", "rhs_acc_2dpZenit", "ehs_acc_ekp8_02", ["rhs_45Rnd_545X39_7N10_AK", "rhs_45Rnd_545X39_7N22_AK", "rhs_45Rnd_545X39_7N6_AK", "rhs_45Rnd_545X39_7N6M_AK"], [], ""],
    ["rhs_weap_rpk74m", "rhs_acc_dtkrpk", "rhs_acc_2dpZenit", "",                ["rhs_45Rnd_545X39_7N10_AK", "rhs_45Rnd_545X39_7N22_AK", "rhs_45Rnd_545X39_7N6_AK", "rhs_45Rnd_545X39_7N6M_AK"], [], ""]
]];
_militiaLoadoutData set ["marksmanRifles", [
    ["rhs_weap_m38",      "", "", "",                 ["rhsgref_5Rnd_762x54_m38"], [], ""],
    ["rhs_weap_m38_rail", "", "", "",                 ["rhsgref_5Rnd_762x54_m38"], [], ""],
    ["rhs_weap_m38_rail", "", "", "Aegis_optic_1p87", ["rhsgref_5Rnd_762x54_m38"], [], ""],
    ["rhs_weap_m38_rail", "", "", "rhs_acc_dh52056",  ["rhsgref_5Rnd_762x54_m38"], [], ""]
]];
_militiaLoadoutData set ["sniperRifles", [
    ["Aegis_srifle_SVD_f", "", "", "",                 ["10Rnd_762x54_Mag"], [], ""],
    ["Aegis_srifle_SVD_f", "", "", "",                 ["10Rnd_762x54_Mag"], [], ""],
    ["Aegis_srifle_SVD_f", "", "", "optic_SOS",        ["10Rnd_762x54_Mag"], [], ""],
    ["Aegis_srifle_SVD_f", "", "", "",                 ["10Rnd_762x54_Mag"], [], ""],
    ["Aegis_srifle_SVD_f", "", "", "rhs_acc_dh520x56", ["10Rnd_762x54_Mag"], [], ""]
]];
_militiaLoadoutData set ["sidearms", [
    ["rhsusf_weap_m1911a1",    "", "", "", ["rhsusf_mag_7x45acp_MHP"], [], ""],
    ["rhsusf_weap_makarov_pm", "", "", "", ["rhs_mag_9x18_8_57N181S"], [], ""],
    ["rhsusf_weap_makarov_pm", "", "", "", ["rhs_mag_9x18_8_57N181S"], [], ""],
    ["rhsusf_weap_makarov_pm", "", "", "", ["rhs_mag_9x18_8_57N181S"], [], ""]
]];

//////////////////////////
//  Elite Loadout Data  //
//////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData set ["uniforms", ["ibr_U_B_yul_M88"]];
_eliteLoadoutData set ["vests", ["ibr_yul_vest"]];
_eliteLoadoutData set ["backpacks", ["Aegis_B_patrolBackpack_grn_F", "Aegis_B_patrolBackpack_wdl_F", "Aegis_B_patrolBackpack_oli_F", "min_rf_backpack_green", "min_rf_backpack_green", "B_Carryall_oli", "B_Carryall_oli", "B_Carryall_oli", "B_Kitbag_wdl_F"]];
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
    ["rhs_weap_aks74un", "rhs_acc_ukk",  "", "rhs_acc_pkas",    ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    ["rhs_weap_aks74un", "rhs_acc_dtk1", "", "rhs_acc_1p63",    ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    ["rhs_weap_aks74un", "rhs_acc_dtk3", "", "rhs_acc_ekp8_02", ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],

    ["arifle_AKSM_F", "", "", "", ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""],
    ["arifle_AKSM_F", "", "", "", ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
    ["rhs_weap_ak74m_gp25", "rhs_acc_dtk1983", "rhs_acc_2dpZenit", "rhs_acc_pkas",          ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""],
    ["rhs_weap_ak74m_gp25", "rhs_acc_dtk1",    "rhs_acc_perst1ik", "rhs_acc_1p63",          ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""],
    ["rhs_weap_ak74m_gp25", "rhs_acc_dtk3",    "rhs_acc_2dpZenit", "rhs_acc_ekp8_02",       ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""],
    ["rhs_weap_ak74m_gp25", "rhs_acc_dtk3",    "rhs_acc_2dpZenit", "rhs_acc_okp7_dovetail", ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""],
    ["rhs_weap_ak74m_gp25", "rhs_acc_uuk",     "rhs_acc_2dpZenit", "rhs_acc_pkas",          ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""],
    ["rhs_weap_ak74m_gp25", "rhs_acc_uuk",     "rhs_acc_2dpZenit", "rhs_acc_ekp8_02",       ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""],
    ["rhs_weap_ak74m_gp25", "rhs_acc_uuk",     "rhs_acc_perst1ik", "rhs_acc_1pn93_2",       ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""],

    ["rhs_weap_ak74m_gp25_npz", "rhs_acc_uuk", "rhs_acc_2dpZenit", "Aegis_optic_ICO",  ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""],
    ["rhs_weap_ak74m_gp25_npz", "rhs_acc_uuk", "rhs_acc_perst1ik", "Aegis_optic_1p87", ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""],
    ["rhs_weap_ak74m_gp25_npz", "rhs_acc_uuk", "rhs_acc_2dpZenit", "rhs_acc_ekp8_18",  ["rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7N10_AK", "rhs_30Rnd_545x39_7N22_AK", "rhs_30Rnd_545x39_7N10_2Mag_AK","rhs_60Rnd_545x39_7N10_AK", "rhs_60Rnd_545x39_7N22_AK"], ["rhs_VOG25P", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_GDM40", "rhs_VG40TB"], ""]
]];
_eliteLoadoutData set ["SMGs", [
    ["KA_PP19", "", "", "",              ["KA_64Rnd_9x18mm_PMM_FMJ_mag"], [], ""],
    ["KA_PP19", "", "", "KA_kobra_PP19", ["KA_64Rnd_9x18mm_PMM_FMJ_mag"], [], ""],
    ["KA_PP19", "", "", "KA_kobra_PP19", ["KA_64Rnd_9x18mm_PMM_FMJ_mag"], [], ""],
    ["KA_PP19", "", "", "KA_kobra_PP19", ["KA_64Rnd_9x18mm_PMM_FMJ_mag"], [], ""],

    ["KA_PP19_MTK83", "", "", "optic_Yorris",     ["KA_64Rnd_9x18mm_PMM_FMJ_mag"], [], ""],
    ["KA_PP19_MTK83", "", "", "Aegis_optic_1p87", ["KA_64Rnd_9x18mm_PMM_FMJ_mag"], [], ""],
    ["KA_PP19_MTK83", "", "", "rhs_acc_ekp8_18",  ["KA_64Rnd_9x18mm_PMM_FMJ_mag"], [], ""],
    ["KA_PP19_MTK83", "", "", "rhs_acc_rakurspm", ["KA_64Rnd_9x18mm_PMM_FMJ_mag"], [], ""],

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

    ["rhs_weap_vss_grip", "", "rhs_acc_perst_1ik", "rhs_acc_1pn93_1", ["rhs_10Rnd_9x39mm_SP5"], [], "rhs_acc_grip_ffg2"],
    ["rhs_weap_vss_grip", "", "rhs_acc_perst_1ik", "rhs_acc_1pn34",   ["rhs_10Rnd_9x39mm_SP5"], [], "rhs_acc_grip_rk2"],
    ["rhs_weap_vss_grip", "", "",                  "rhs_acc_pso1m21", ["rhs_10Rnd_9x39mm_SP5"], [], "rhs_acc_grip_ffg2"],
    ["rhs_weap_vss_grip", "", "",                  "rhs_acc_1p29",    ["rhs_10Rnd_9x39mm_SP5"], [], "rhs_acc_grip_rk2"],

    ["rhs_weap_vss_grip_npz", "", "",                  "rhs_acc_dh520x56",     ["rhs_10Rnd_9x39mm_SP5"], [], "rhs_acc_grip_rk2"],
    ["rhs_weap_vss_grip_npz", "", "rhs_acc_perst_1ik", "MMM_acc_IT_1TWS_615A", ["rhs_10Rnd_9x39mm_SP5"], [], "rhs_acc_grip_ffg2"],
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
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 0.9]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["backpacks"] call _fnc_setBackpack;

    [["rifles"] call _fnc_fallback] call _fnc_setPrimary;
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
    [selectRandomWeighted [[], 1.5, "facewear", 1.6]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
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
    [selectRandomWeighted [[], 1.5, "facewear", 0.3]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
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
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1.25]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;
      [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
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
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 3]] call _fnc_setFacewear;
    ["vests"]call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    if (random 1 < 0.3) then {
        [["designatedGrenadeLaunchers", "grenadeLaunchers"] call _fnc_fallback] call _fnc_setPrimary;
    } else {
        ["grenadeLaunchers"] call _fnc_setPrimary;
    };
    
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
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1.25]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
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

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1.9]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
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
    [selectRandomWeighted [[], 1.5, "facewear", 1.25]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

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
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
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
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
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

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1.8]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

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
    [selectRandomWeighted [[], 1.5, "facewear", 1.25]] call _fnc_setFacewear;
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
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1.25]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
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
    [selectRandomWeighted [[], 1.5]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 0.5, "facewear", 2.0]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 1.25]] call _fnc_setFacewear;
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