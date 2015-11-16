// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

if (!hasInterface) exitWith {};

// MAKE SURE THE PLAYER INITIALIZES PROPERLY
[] spawn {
    if (player != player) then {waitUntil {player == player};};
    if (!alive player) then {waitUntil {alive player};};
    
    //Auto add credits from description.ext:
    _missionName = getText (missionConfigFile >> "onLoadName");
    _authorName = getText (missionConfigFile >> "author");
    _worldName = getText (configFile >> "CfgWorlds" >> worldName >> "description");
    _onLoadMission = getText (missionConfigFile >> "onLoadMission");
    player createDiaryRecord ["diary", ["Credits", format ["
    <font size=16>%1</font><br/>
    <font size=13>by %2</font><br/>
    <font size=13>on %3</font><br/>
    <br/>
    <br/>
    <br/>
    Wavelength Framework<br/>
    %4<br/>
    Based on F3 (http://www.ferstaberinde.com/f3/en/)
    ", _missionName, _authorName, _worldName, _onLoadMission]]];

    private ["_unitfaction"];
    // If the unitfaction is different from the group leader's faction, the latters faction is used
    _unitfaction = toLower (faction (leader group player));

    switch (true) do {
    case (_unitfaction == "blu_f"): {
#include "f_briefing_nato.sqf"
        };
    case (_unitfaction in ["opf_f","rhs_faction_msv","rhs_faction_vvs"]): {
#include "f_briefing_csat.sqf"
        };
    case (_unitfaction == "ind_f"): {
#include "f_briefing_aaf.sqf"
        };
    case (_unitfaction == "civ_f"): {
#include "f_briefing_civ.sqf"
        };
    case (_unitfaction == ""): {
#include "f_briefing_zeus.sqf"
        };
        default {
            ["DEBUG (briefing.sqf): Faction %1 is not defined.",_unitfaction] call BIS_fnc_error;
        };
    };
};
