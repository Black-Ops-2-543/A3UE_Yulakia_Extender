class Templates 
{
    /*
        A "Class" literally just stores things. It by itself does not do anything.

        In the case of Antistasi, most of the scripts will grab all classes from the corresponding configs.

        Say we have a function that grabs all factions and displays their name. These classes exist as storage and key-value pairs basically.
    */

    class Vanilla_Base;
    /*
        Vanilla_Base is a class in the main Antistasi Ultimate mod. It contains values for factions and such.
        https://github.com/SilenceIsFatto/A3-Antistasi-Ultimate/blob/stable/A3A/addons/core/Templates/Templates.hpp#L61-L69

        Class inheritance is a very useful thing and allows you to not have to re-define values in every class. Read more here:
        https://community.bistudio.com/wiki/Class_Inheritance
    */

    /*
        Here we are creating a completely new class that inherits from Vanilla_Base (Link in the top comment above)

        Since it has a unique classname, this will show up as a new faction in the faction selector rather than overwriting an existing one.

        You do not need all of these values. If they are in the Vanilla_Base class, they will be inherited. Only define a value if you need to change it.
    */
    class Yulakian_Provisional_Government : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Yulakia);                                                    // The path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ";                                                                                   // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Yulakia\flag_ypg_co.paa);                                 // Path to an icon to be displayed in the select menu.
        name = "YPG";                                                                                   // Name shown in the select menu.
        file = "YULAK_Yulakian_Provisional_Government";                                                 // The template file name - .sqf, that gets appended automatically.
        maps[] = {"Antistasi_yulakia.yulakia"};                                                         // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"temperate"};                                                                      // The climate that the template can be selected on.
        description = "Yulakian Provisional Government (YPG)\nThe authoritarian ruling government of Yulakia.";                                // If this isn't included, no description will show (unless inherited from the base class.)
    };
    
    class Russian_Forces : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Yulakia);                                                    // The path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Inv";                                                                                   // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Yulakia\flag_ru_co.paa);                                  // Path to an icon to be displayed in the select menu.
        name = "Russian Forces";                                                                        // Name shown in the select menu.
        file = "YULAK_Russian_Forces";                                                                  // The template file name - .sqf, that gets appended automatically.
        maps[] = {"Antistasi_yulakia.yulakia"};                                                         // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"temperate"};                                                                      // The climate that the template can be selected on.
        description = "The invasion force dispatched to conquer Yulakia.";                              // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class Spetsnaz : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Yulakia);                                                    // The path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Riv";                                                                                   // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Yulakia\flag_spz_co.paa);                                 // Path to an icon to be displayed in the select menu.
        name = "Spetsnaz";                                                                              // Name shown in the select menu.
        file = "YULAK_Spetsnaz";                                                                        // The template file name - .sqf, that gets appended automatically.
        maps[] = {"Antistasi_yulakia.yulakia"};                                                         // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"temperate"};                                                                      // The climate that the template can be selected on.
        description = "Russian Special Forces deployed to disrupt resistance in Yulakia.";              // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class Yulakian_Liberation_Front : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Yulakia);                                                    // The path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb";                                                                                   // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Yulakia\flag_ylf_co.paa);                                 // Path to an icon to be displayed in the select menu.
        name = "YLF";                                                                                   // Name shown in the select menu.
        file = "YULAK_Yulakian_Liberation_Front";                                                       // The template file name - .sqf, that gets appended automatically.
        maps[] = {"Antistasi_yulakia.yulakia"};                                                         // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"temperate"};                                                                      // The climate that the template can be selected on.
        description = "Yulakian Liberation Front (YLF)\nPro-Western rebels fighting in Yulakia.";                                        // If this isn't included, no description will show (unless inherited from the base class.)
    };
    

};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/