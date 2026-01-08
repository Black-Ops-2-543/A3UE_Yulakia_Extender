class Templates 
{
    /*
        A "Class" literally just stores things. It by itself does not do anything.

        In the case of Antistasi, most of the scripts will grab all classes from the corresponding configs.

        Say we have a function that grabs all factions and displays their name. These classes exist as storage and key-value pairs basically.
    */

    class Vanilla_Base;

    class Yulak_Base : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Yulakia);                                                    // The path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        maps[] = {"yulakia"};                                                                           // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"temperate"};                                                                      // The climate that the template can be selected on.
        logo = QPATHTOFOLDER(Pictures\a3ue_logo.paa);
    };
    
    class Yulakian_Provisional_Government : Yulak_Base
    {                                                 // The path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ";                                                                                   // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\flag_ypg_co.paa);                                 // Path to an icon to be displayed in the select menu.
        name = "YPG";                                                                                   // Name shown in the select menu.
        file = "YULAK_Yulakian_Provisional_Government";                                                 // The template file name - .sqf, that gets appended automatically.
        description = "Yulakian Provisional Government (YPG)\nThe authoritarian ruling government of Yulakia.";                                // If this isn't included, no description will show (unless inherited from the base class.)
    };
    
    class Russian_Forces : Yulak_Base
    {
        side = "Inv";                                                                                   // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\flag_ru_co.paa);                                  // Path to an icon to be displayed in the select menu.
        name = "Russian Forces";                                                                        // Name shown in the select menu.
        file = "YULAK_Russian_Forces";                                                                  // The template file name - .sqf, that gets appended automatically.
        description = "The invasion force dispatched to conquer Yulakia.";                              // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class Spetsnaz : Yulak_Base
    {
        side = "Riv";                                                                                   // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\flag_spz_co.paa);                                 // Path to an icon to be displayed in the select menu.
        name = "Spetsnaz";                                                                              // Name shown in the select menu.
        file = "YULAK_Spetsnaz";                                                                        // The template file name - .sqf, that gets appended automatically.
        description = "Russian Special Forces deployed to disrupt resistance in Yulakia.";              // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class Yulakian_Liberation_Front : Yulak_Base
    {
        side = "Reb";                                                                                   // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\flag_ylf_co.paa);                                 // Path to an icon to be displayed in the select menu.
        name = "YLF";                                                                                   // Name shown in the select menu.
        file = "YULAK_Yulakian_Liberation_Front";                                                       // The template file name - .sqf, that gets appended automatically.
        description = "Yulakian Liberation Front (YLF)\nPro-Western rebels fighting in Yulakia.";                                        // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class Yulakian_Civilians : Yulak_Base
    {
        side = "Civ";
        flagTexture = QPATHTOFOLDER(Pictures\flag_ypg_co.paa);                                 // Path to an icon to be displayed in the select menu.
        name = "Yulakians";
        file = "YULAK_Civilians";
        description = "The civilians of Yulakia";
    };
    

};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/