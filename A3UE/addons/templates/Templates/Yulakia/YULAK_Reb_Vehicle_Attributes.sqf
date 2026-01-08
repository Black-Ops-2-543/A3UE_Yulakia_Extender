private _basicCost = 200;
private _atLauncherCost = 250;
private _aaGunCost = 300;
private _mgCost = 150;
private _mortarCost = 500;
private _armorCost = 200;
private _offroadCost = 400;
private _truckCost = 550;
private _civilianMultiplier = 1.25;
private _newOffroadCost = _offroadCost * 1.125;
private _oldOffroadCost = _offroadCost / 1.125;
private _mg3Cost = _mgCost * 0.8;

["attributesVehicles", [
	["B_G_Quadbike_01_F", 				     ["rebcost", _basicCost]],
	["B_G_Offroad_01_armed_F",               ["rebcost", _offroadCost + _mgCost + _armorCost * 0.2]],
	["C_Truck_02_transport_F",               ["rebcost", _truckCost]],
	["C_Truck_02_covered_F",                 ["rebcost", _truckCost]],
	["I_G_Boat_Transport_01_F",              ["rebcost", 400]],
	["I_G_Offroad_01_AT_F",                  ["rebcost", _offroadCost + _atLauncherCost]],
	["Aegis_O_R_Truck_02_aa_F",              ["rebcost", _offroadCost + _armorCost + _atLauncherCost]],
	["RHS_Ural_Zu23_MSV_01",                 ["rebcost", _truckCost * 0.75 + _aaGunCost]],
	["RHS_AN2_B",                            ["rebcost", 1500]],
	["C_Offroad_01_F",                       ["rebcost", _offroadCost * _civilianMultiplier]],
	["a3a_Van_02_black_transport_F",         ["rebcost", _truckCost]],
	["Aegis_C_Heli_Light_01_Civil_F_malden", ["rebcost", 1000 * _civilianMultiplier]],
	["rhsgref_civ_canoe",                    ["rebcost", 200]],
	["Aegis_C_Boat_Transport_02_F_Malden",   ["rebcost", 500 * _civilianMultiplier]],
	["C_Boat_Civil_01_F",                    ["rebcost", 650]],
	["I_G_HMG_02_high_F",                    ["rebcost", _mgCost + _offroadCost]],
	["rhsgref_ins_g_ZU23",                   ["rebcost", _aaGunCost + _truckCost]],
	["gm_ge_army_k125",                      ["rebcost", _basicCost]],
	["gm_dk_army_typ247_cargo",              ["rebcost", _oldOffroadCost]],
	["gm_ge_army_w123_cargo",                ["rebcost", _oldOffroadCost * 0.9]],
	["gm_ge_civ_u1300l",                     ["rebcost", _oldOffroadCost * _civilianMultiplier]],
	["gm_gc_army_ural4320_cargo_noinsignia", ["rebcost", _truckCost * 0.75]],
	["gm_ge_civ_typ247",                     ["rebcost", _oldOffroadCost * _civilianMultiplier]],
	["gm_ge_civ_typ253",                     ["rebcost", _oldOffroadCost * _civilianMultiplier]],
	["gm_ge_civ_typ251",                     ["rebcost", _oldOffroadCost * _civilianMultiplier]],
	["gm_ge_civ_w123",                       ["rebcost", _oldOffroadCost * 0.9 * _civilianMultiplier]],
	["gm_gc_civ_ural375d_cargo",             ["rebcost", _truckCost * 0.75 * _civilianMultiplier]],
	["gm_gc_civ_mi2p",                       ["rebcost", 1250 * _civilianMultiplier]],
	["gm_gc_army_spg9_tripod",               ["rebcost", _atLauncherCost]],
	["gm_gc_army_dshkm_aatripid",            ["rebcost", _mgCost]],
	["gm_ge_army_mg3_aatripod_csw",          ["rebcost", _mg3Cost]],
	["rhsgref_ins_g_ural",                   ["rebcost", _truckCost * 0.75]],
	["C_Van_01_Transport_F",                 ["rebcost", _truckCost * _civilianMultiplier]],
	["RHS_Ural_Civ_01",                      ["rebcost", _truckCost * 0.75 * _civilianMultiplier]],
	["C_Van_01_box_F",                       ["rebcost", _truckCost * 0.75 * _civilianMultiplier]],
	["C_Heli_Light_02_civil_F",              ["rebcost", 1250 * _civilianMultiplier]],
	["rhsgref_ins_SPG9",                     ["rebcost", _atLauncherCost]],
	["rhs_KORD_high_VDV",                    ["rebcost", _mgCost]],
	["I_G_Pickup_hmg_rf",                    ["rebcost", _newOffroadCost + _armorCost * 0.5]],
	["Aegis_C_Pickup_RF_Malden",             ["rebcost", _newOffroadCost]],
	["CSLA_V3So_noinsignia",                 ["rebcost", _truckCost * 0.7]],
	["CSLA_CIV_Sakura1200",                  ["rebcost", _offroadCost * 0.8 * _civilianMultiplier]],
	["rhsgref_ins_g_gaz66o",                 ["rebcost", _truckCost]],
	["vn_b_sf_static_m45",                   ["rebcost", _aaGunCost]],
	["Aegis_C_Truck_02_cargo_Malden_F",      ["rebcost", _truckCost * _civilianMultiplier]],
	["Aegis_C_Truck_02_flatbed_Malden_F",    ["rebcost", _truckCost * _civilianMultiplier]],
	["C_Truck_02_flatbed_lxWS",              ["rebcost", _truckCost]],
	["C_Truck_02_cargo_lxWS",                ["rebcost", _truckCost]],
	["I_G_Offroad_01_armor_AT_lxWS",         ["rebcost", _offroadCost + _armorCost + _atLauncherCost]],
	["I_G_Offroad_01_armor_armed_lxWS",      ["rebcost", _offroadCost + _armorCost + _mgCost]],
	["I_G_Offroad_01_armor_base_lxWS",       ["rebcost", _offroadCost + _armorCost]],
	["I_A_Truck_02_aa_lxWS",                 ["rebcost", _truckCost + _aaGunCost]],
	["I_G_Offroad_AA_lxWS",                  ["rebcost", _offroadCost + _aaGunCost]],
	["I_Tura_Offroad_armor_AA_lxWS",         ["rebcost", _offroadCost + _aaGunCost + _armorCost * 0.5]],
	["C_Plane_Civil_01_F",                   ["rebcost", 800]],
	["C_Offroad_02_unarmed_F",               ["rebcost", _offroadCost]],
	["Aegis_C_Offroad_02_F_Malden",          ["rebcost", _offroadCost * _civilianMultiplier]],
	["Aegis_C_Scooter_Transport_01_F_Tanoa", ["rebcost", 300]],
	["B_GEN_Boat_Transport_02_F",            ["rebcost", 500]],
	["C_Tractor_01_F",                       ["rebcost", _offroadCost * _civilianMultiplier * 0.5]],
	["RUS_MSV_2b14",                         ["rebcost", _mortarCost]],
	["CSLA_CS_CATOR_noinsignia",             ["rebcost", _offroadCost * _civilianMultiplier * 0.5]],
	["gm_dk_army_u1300l_container",          ["rebcost", _oldOffroadCost + _mg3Cost]],
	["B_G_Offroad_01_F",                     ["rebcost", _offroadCost]],
	["C_Hatchback_01_F",                     ["rebcost", _offroadCost * _civilianMultiplier]],
	["Aegis_B_D_Pickup_RF",                  ["rebcost", _newOffroadCost * _civilianMultiplier]],
	["gm_ge_dbp_typ247",                     ["rebcost", _oldOffroadCost * _civilianMultiplier]],
	["gm_ge_adak_bo105m_vbh_noinsignia",     ["rebcost", 1300 * _civilianMultiplier]]
]] call _fnc_saveToTemplate;