if (hasInterface) then {

 if (str player == (_this select 0)) then {
     player createDiaryRecord ["Diary", 
     ["Spezialauftrag", "Sie sind ein Schläfer der Taliban in den Reihen der afghanischer Armee. Töten Sie alle Amerikaner, Deutschen und ihren Vorgestzten Offizier und die beiden Teamleader. Andere Taliban Einheiten werden auf Sie schießen, da sie Sie nicht identifizieren können. Wenn sie ein Märtyrer werden, werden sie mit 72 Jungfrauen im Paradies belohnt."
     ]];};

     sleep 3;
  	 hintSilent "Du bist Schläfer, check dein Briefing!";

  	0 = [player] execVM "helpers\ensureDeath.sqf";

};

