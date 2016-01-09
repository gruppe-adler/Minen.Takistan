  execVM "briefing.sqf";
if (isServer) then {
TRAITOR_FOUND = false;
while {!TRAITOR_FOUND} do {{
        Traitor = ["SCH1", "SCH0", "GL0", "GL1", "MG0", "MG1", "Medic0", "Medic1", "ING0", "ING1", "ING2", "ING3", "ING4", "ING5"] call BIS_fnc_selectRandom;
        if (str _x == Traitor) exitWith {
            TRAITOR_FOUND = true;
            [[[Traitor],"briefing_traitor.sqf"],"BIS_fnc_execVM",true] call BIS_fnc_MP;
        };
    } forEach allPlayers;
};
};

[true,30,false,true,30,3,true,[]] execVM "headless\WerthlesHeadless.sqf";

asr_ai3_main_setskills = 0;
	
	{
	_x setSkill ["aimingspeed", 0.5];
	_x setSkill ["spotdistance", 1];
	_x setSkill ["aimingaccuracy", 0.4];
	_x setSkill ["aimingshake", 0.4];
	_x setSkill ["spottime", 1];
	_x setSkill ["spotdistance", 1];
	_x setSkill ["commanding", 1];
	_x setSkill ["general", 1];
	} forEach allUnits;

	diag_log "skill set for every ai unit";

};

if (true) exitWith {};