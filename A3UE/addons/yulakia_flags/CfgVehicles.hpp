class CfgVehicles
{
    class FlagCarrier;  // base class used by Arma flagpoles

    class YPG_FlagPole : FlagCarrier
    {
        scope = 2;            // Eden
        scopeCurator = 2;     // Zeus
        displayName = "Flag (YPG)";
        author = AUTHOR;

        // Optional, but nice in Eden
        editorPreview = "\A3\EditorPreviews_F\Data\CfgVehicles\Flag_NATO_F.jpg";

        // Keep the vanilla mast material/texture (optional)
        hiddenSelectionsTextures[] = { "\A3\Structures_F\Mil\Flags\Data\Mast_mil_CO.paa" };
        hiddenSelectionsMaterials[] = { "\A3\Structures_F\Mil\Flags\Data\Mast_mil.rvmat" };

        class EventHandlers
        {
            init = "(_this select 0) setFlagTexture '\x\A3UE\addons\templates\Pictures\flag_ypg_co.paa';";
        };
    };

	class YLF_FlagPole : FlagCarrier
    {
        scope = 2;            // Eden
        scopeCurator = 2;     // Zeus
        displayName = "Flag (YLF)";
        author = AUTHOR;

        // Optional, but nice in Eden
        editorPreview = "\A3\EditorPreviews_F\Data\CfgVehicles\Flag_NATO_F.jpg";

        // Keep the vanilla mast material/texture (optional)
        hiddenSelectionsTextures[] = { "\A3\Structures_F\Mil\Flags\Data\Mast_mil_CO.paa" };
        hiddenSelectionsMaterials[] = { "\A3\Structures_F\Mil\Flags\Data\Mast_mil.rvmat" };

        class EventHandlers
        {
            init = "(_this select 0) setFlagTexture '\x\A3UE\addons\templates\Pictures\flag_ylf_co.paa';";
        };
    };

	class SPZ_FlagPole : FlagCarrier
    {
        scope = 2;            // Eden
        scopeCurator = 2;     // Zeus
        displayName = "Flag (Spetsnaz)";
        author = AUTHOR;

        // Optional, but nice in Eden
        editorPreview = "\A3\EditorPreviews_F\Data\CfgVehicles\Flag_NATO_F.jpg";

        // Keep the vanilla mast material/texture (optional)
        hiddenSelectionsTextures[] = { "\A3\Structures_F\Mil\Flags\Data\Mast_mil_CO.paa" };
        hiddenSelectionsMaterials[] = { "\A3\Structures_F\Mil\Flags\Data\Mast_mil.rvmat" };

        class EventHandlers
        {
            init = "(_this select 0) setFlagTexture '\x\A3UE\addons\templates\Pictures\flag_spz_co.paa';";
        };
    };

	class RU_FlagPole : FlagCarrier
    {
        scope = 2;            // Eden
        scopeCurator = 2;     // Zeus
        displayName = "Flag (Russia)";
        author = AUTHOR;

        // Optional, but nice in Eden
        editorPreview = "\A3\EditorPreviews_F\Data\CfgVehicles\Flag_NATO_F.jpg";

        // Keep the vanilla mast material/texture (optional)
        hiddenSelectionsTextures[] = { "\A3\Structures_F\Mil\Flags\Data\Mast_mil_CO.paa" };
        hiddenSelectionsMaterials[] = { "\A3\Structures_F\Mil\Flags\Data\Mast_mil.rvmat" };

        class EventHandlers
        {
            init = "(_this select 0) setFlagTexture '\x\A3UE\addons\templates\Pictures\flag_ru_co.paa';";
        };
    };
};