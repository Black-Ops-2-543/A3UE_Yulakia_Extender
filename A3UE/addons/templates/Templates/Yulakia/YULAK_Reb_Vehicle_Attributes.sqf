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
private _m60Cost = _mgCost * 0.8;

["attributesVehicles", [
	["B_G_Quadbike_01_F", 				["rebcost",  250]],
	["B_G_Offroad_01_F", 				["rebcost",  _offroadCost]],
	["I_G_Offroad_01_armed_F", 			["rebcost",  _offroadCost + _mgCost]],
	["rhsgref_ins_g_ural", 				["rebcost",  _truckCost * 0.75]],
	["rhsgref_ins_g_gaz66o", 			["rebcost",  _truckCost]],
	["I_G_Offroad_01_AT_F", 			["rebcost",  _offroadCost + _atLauncherCost]],
	["Aegis_O_R_Truck_02_aa_F", 		["rebcost",  _truckCost + _aaGunCost + _armorCost * 0.2]],
	["RHS_AN2_B", 						["rebcost", 1500]],
	["I_G_Offroad_01_armor_AT_lxWS", 	["rebcost",  _offroadCost + _armorCost + _atLauncherCost]],
	["I_G_Offroad_01_armor_armed_lxWS", ["rebcost",  _offroadCost + _armorCost + _mgCost]],
	["I_A_Truck_02_aa_lxWS", 			["rebcost",  _truckCost + _aaGunCost]],
	["I_G_Offroad_AA_lxWS", 			["rebcost",  _offroadCost + _aaGunCost]],
	["I_Tura_Offroad_armor_AA_lxWS", 	["rebcost",  _offroadCost + _aaGunCost + _armorCost]],
	["C_Plane_Civil_01_F", 				["rebcost",  800]],
	["I_G_Boat_Transport_01_F", 		["rebcost",  400]],
	["C_Offroad_01_F", 					["rebcost",  _offroadCost * _civilianMultiplier]],
	["a3a_Van_02_black_transport_F", 	["rebcost",  _truckCost]],
	["C_Hatchback_01_F", 				["rebcost",  _offroadCost * 0.8]],
	["C_Tractor_01_F", 					["rebcost",  _offroadCost * 0.4]],
	["C_Van_01_transport_F", 			["rebcost",  _truckCost * _civilianMultiplier]],
	["RHS_Ural_Civ_01", 				["rebcost",  _truckCost * 0.75 * _civilianMultiplier]],
	["C_Heli_Light_02_civil_F", 		["rebcost",  1250 * _civilianMultiplier]],
	["rhsgref_civ_canoe", 				["rebcost",  200]],
	["C_Boat_Civil_01_F", 				["rebcost",  650]],
	["C_Van_01_box_F", 					["rebcost",  _truckCost * 0.85 * _civilianMultiplier]],
	["I_G_HMG_02_high_F", 				["rebcost",  _mgCost]],
	["rhsgref_ins_g_SPG9", 				["rebcost",  _atLauncherCost]],
	["rhsgref_ins_g_ZU23", 				["rebcost",  _aaGunCost]],
	["I_G_Mortar_01_F", 				["rebcost",  _mortarCost]]
]] call _fnc_saveToTemplate;