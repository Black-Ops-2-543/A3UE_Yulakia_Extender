#include "script_component.hpp"

class CfgPatches
{
    class ADDON
    {
        name = COMPONENT_NAME;
        units[] = { "YPG_FlagPole", "YLF_FlagPole", "SPZ_FlagPole", "RU_FlagPole" };
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;

        requiredAddons[] =
        {
            QDOUBLES(PREFIX,core),
            "A3_Structures_F",
            "A3_Structures_F_Mil_Flags"
        };

        author = AUTHOR;
        authors[] = { AUTHORS };
        VERSION_CONFIG;
    };
};

#include "CfgVehicles.hpp"
