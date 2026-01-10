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

if (_hasWs) then {
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

private _languages = [
    "RHS_Male01RUS",
    "RHS_Male02RUS",
    "RHS_Male03RUS",
    "RHS_Male04RUS",
    "RHS_Male05RUS"
];
if (_hasContact) then {
    _languages append [
        "Male01RUS",
        "Male02RUS",
        "Male03RUS"
    ];
};

["faces", _characters] call _fnc_saveToTemplate;
["voices", _languages] call _fnc_saveToTemplate;