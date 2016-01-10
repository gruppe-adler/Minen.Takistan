  

 execVM "briefing.sqf";
if (isServer) then {
TRAITOR_FOUND = false;
while {!TRAITOR_FOUND} do {{
        Traitor = ["SCH1", "SCH0", "GL0", "GL1", "MG0", "MG1", "Medic0", "Medic1", "ING0", "ING1", "ING2", "ING3", "ING4", "ING5"] call BIS_fnc_selectRandom;
        if (str _x == Traitor) exitWith {
            TRAITOR_FOUND = true;
            [[[Traitor],"helpers\briefing_traitor.sqf"],"BIS_fnc_execVM",true] call BIS_fnc_MP;
        };
    } forEach allPlayers;
    sleep 1;
};
};

 [true,30,false,false,15,5,true,[]] execVM "headless\WerthlesHeadless.sqf";



if (true) exitWith {};    

	