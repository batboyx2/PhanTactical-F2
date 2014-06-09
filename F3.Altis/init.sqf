// ====================================================================================
// BatScript - TFAR API Global Variables
// Credits: Please ask Batboyx2 what these do, as he added them.
/*
player setVariable ["TF_no_auto_long_range_radio",false];
player setVariable ["TF_give_personal_radio_to_regular_soldier",true];
player setVariable ["TF_defaultWestPersonalRadio",tf_anprc152];
player setVariable ["TF_defaultEastPersonalRadio",tf_fadak];
player setVariable ["TF_defaultGuerPersonalRadio",tf_anprc148jem];
*/
// ====================================================================================

// F3 - Disable Saving and Auto Saving
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

enableSaving [false, false];

// ====================================================================================

// F3 - MapClick Teleport
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// f_var_mapClickTeleport_Uses = 0;					// How often the teleport action can be used. 0 = infinite usage.
// f_var_mapClickTeleport_TimeLimit = 0; 			// If higher than 0 the action will be removed after the given time.
// f_var_mapClickTeleport_GroupTeleport = false; 	// False: everyone can teleport. True: Only group leaders can teleport and will move their entire group.
// [] execVM "f\mapClickTeleport\f_mapClickTeleportAction.sqf";

// ====================================================================================

// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_briefing = [] execVM "briefing.sqf";

// ====================================================================================

// F3 - F3 Folk ARPS Group IDs
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setGroupIDs = [] execVM "f\setGroupID\f_setGroupIDs.sqf";

// ====================================================================================

// F3 - Buddy Team Colours
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setTeamColours = [] execVM "f\common\f_setTeamColours.sqf";

// ====================================================================================

// F3 - Fireteam Member Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] spawn f_fnc_SetLocalFTMemberMarkers;

// ====================================================================================

// F3 - F3 Folk ARPS Group Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\groupMarkers\f_setLocalGroupMarkers.sqf";

// ====================================================================================

// F3 - F3 Common Local Variables
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// WARNING: DO NOT DISABLE THIS COMPONENT

f_script_setLocalVars = [] execVM "f\common\f_setLocalVars.sqf";

// ====================================================================================

// F3 - Automatic Body Removal
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// f_var_removeBodyDelay = 180;
// f_var_removeBodyDistance = 500;
// f_var_doNotRemoveBodies = [];
// [] execVM "f\removeBody\f_addRemoveBodyEH.sqf";

// ====================================================================================

// F3 - Dynamic View Distance
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

//f_var_viewDistance_default = 1250;
//f_var_viewDistance_tank = 2000;
//f_var_viewDistance_car = 2000;
//f_var_viewDistance_rotaryWing = 2500;
//f_var_viewDistance_fixedWing = 5000;
//f_var_viewDistance_crewOnly = true;
//[] execVM "f\dynamicViewDistance\f_setViewDistanceLoop.sqf";

// ====================================================================================

// F3 - Authorised Crew Check
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// VehicleName addEventhandler ["GetIn", {[_this,[UnitName1,UnitName2],false] call f_fnc_authorisedCrewCheck}];
// VehicleName addEventhandler ["GetIn", {[_this,["UnitClass1","UnitClass2"],false] call f_fnc_authorisedCrewCheck}];

// ====================================================================================

// F3 - Casualties Cap
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// [[GroupName or SIDE],100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";
// [[GroupName or SIDE],100,{code}] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// BLUFOR > NATO
// [BLUFOR,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// OPFOR > CSAT
// [OPFOR,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// INDEPENDENT > AAF
// [INDEPENDENT,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// ====================================================================================

// F3 - AI Skill Selector
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

 [] execVM "f\setAISKill\f_setAISkill.sqf";
 f_var_civAI = independent; // Optional: The civilian AI will use this side's settings

// ====================================================================================

// F3 - Name Tags
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// f_showGroup_Nametags = true;			// Display unit's group (uses GroupID)
// f_showDistance_Nametags = true;	// Show distance to player
// f_showVehicle_Nametags = true;		// Show vehicle player is in
// [20] execVM "f\nametag\f_nametags.sqf";

// ====================================================================================

// F3 - Simple Wounding System
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// [player] execVM "f\simplewoundingsystem\init.sqf";

// ====================================================================================

// F3 - Group E&E Check
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// [GroupName,ObjectName,100,1] execVM "f\server\f_groupEandECheck.sqf";

// ====================================================================================

// F3 - ORBAT Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\common\f_orbatNotes.sqf";

// ====================================================================================

// F3 - Join Group Action
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[false] execVM "f\common\f_groupJoinAddOption.sqf";

// ====================================================================================

// F3 - Mission Timer/Safe Start
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\safeStart\f_safeStart.sqf";

// ====================================================================================

// F3 - JIP setup
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_var_JIP_FirstMenu = false;   // Do players connecting for the first time get the JIP menu? - This only works in missions with respawn.
f_var_JIP_RemoveCorpse = false; // Remove the old corpse of respawning players?
f_var_JIP_GearMenu = true;     // Can JIP/respawned players select their own gear? False will use gear assigned by F3 Gear Component if possible

// ====================================================================================

// F3 - AI Unit Caching
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[30] spawn f_fnc_cInit;

// ====================================================================================
// PhanTactical - Intro Text
// Credits: Jani (2014)
// A good intro text would be, "_DateStamp=Date; (Autosends Date to intro)","Western Takistan" "Mission Name". Or other. Enjoy!

waitUntil{!(isNil "BIS_fnc_init")};
sleep 10;

["Location Unknown","ArmA 3 Mission"] call BIS_fnc_infoText;
sleep 2;		
        ["Be Serious, Have Fun"] call BIS_fnc_infoText;

// ====================================================================================
// PhanTactical - Farooq's Revive and Medical Management (Drag/Carry)
// Credits: Farooq's Revive
// If you wish to change medical style from "All can revive", please refer to the readme inside "FAR_Revive".
//call compileFinal preprocessFileLineNumbers "FAR_revive\FAR_revive_init.sqf";

// ====================================================================================