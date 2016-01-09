blufor_uniform = [
	"U_TKLocalUni_A",
	"U_TKLocalUni_B",
	"U_TKLocalUni_C",
	"U_TKLocalUni_D",
	"U_TKLocalUni_E",
	"U_TKLocalUni_F",
	"U_TKLocalCombat_A",
	"U_TKLocalCombat_B",
	"U_TKLocalCombat_C",
	"U_TKLocalCombat_D",
	"U_TKLocalCombat_E"
];



blufor_random_helmet = [
	"H_Hat_Face_Wrap_Black",
	"H_Hat_Taqiyah_A",
	"H_Hat_Taqiyah_B",
	"H_Hat_Taqiyah_C",
	"H_Hat_Taqiyah_D",
	"H_Hat_Taqiyah_E",
	"H_Hat_Pagri",
	"H_Hat_Pagri_B",
	"H_Hat_Pagri_C",
	"H_Hat_Turban_A",
	"H_Hat_Turban_B",
	"H_Hat_Turban_C",
	"H_Hat_Turban_D",
	"H_Hat_Turban_E",
	"H_Hat_Pakol","H_Hat_Pakol","H_Hat_Pakol","H_Hat_Pakol","H_Hat_Pakol","H_Hat_Pakol"
];

_addItemsToUniform = {
    _unit = _this select 0;
    _class = _this select 1;
    _amount = _this select 2;
    for "_i" from 1 to _amount do {
        _unit addItemToUniform _class;
    };
};

_addMagazinesToVest = {
    _unit = _this select 0;
    _class = _this select 1;
    _amount = _this select 2;
    for "_i" from 1 to _amount do {
        _unit addItemToVest _class;
    };
};

_addMagazinesToBackpack = {
    _unit = _this select 0;
    _class = _this select 1;
    _amount = _this select 2;
    for "_i" from 1 to _amount do {
        _unit addItemToBackpack _class;
    };
};
	


blufor_random_primaryweapon = [
	"rhs_weap_akm"
];

set_akm_ammo = {
	this = _this select 0;
	[this, "rhs_30Rnd_762x39mm", 5] call _addMagazinesToVest; // 5 (1 in der waffe)
	[this, "rhs_30Rnd_762x39mm_tracer", 5] call _addMagazinesToVest; // 3
};

blufor_basic = {
	this = _this select 0;

	[this, "ACE_Earplugs", 1] call _addItemsToUniform;
	[this, "ACE_fieldDressing", 6] call _addItemsToUniform;
	[this, "ACE_Morphine", 2] call _addItemsToUniform;
	[this, "ACE_epinephrine", 1] call _addItemsToUniform;

	[this, "ACE_Flashlight_KSF1", 1] call _addItemsToUniform;
	[this, "ACE_key_west", 1] call _addItemsToUniform;
	[this, "ACE_MapTools", 1] call _addItemsToUniform;
	[this, "Chemlight_blue", 2] call _addItemsToUniform;
	

	[this, "rhsusf_mag_17Rnd_9x19_JHP", 3] call _addItemsToUniform;

	this addPrimaryWeaponItem "acc_flashlight";
	this addWeapon "rhsusf_weap_glock17g4";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "tf_anprc148jem";
};

blufor_AT = {
	
	this = _this select 0;

	comment "Remove existing items";
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;

	comment "Add containers";
	
	this forceAddUniform (blufor_uniform call BIS_fnc_selectRandom);
	this addVest "rhsusf_spc_iar";
	this addHeadgear (blufor_random_helmet call BIS_fnc_selectRandom);
	this addBackpack "B_Carryall_khk";

	[this] call set_akm_ammo;

	[this, "SmokeShell", 2] call _addMagazinesToVest;
	[this, "SmokeShellRed", 2] call _addMagazinesToVest;
	[this, "HandGrenade", 1] call _addMagazinesToVest;


	this addWeapon "Binocular";
	this addWeapon (blufor_random_primaryweapon call BIS_fnc_selectRandom);
	this addWeapon "rhs_weap_rpg7";
	this addItemToBackpack "rhs_rpg7_PG7VL_mag";
	this addItemToBackpack "rhs_rpg7_PG7VL_mag";
	sleep 0.5;
	this addItemToBackpack "rhs_rpg7_PG7VL_mag";

	

};
	
	this = _this select 0;

	comment "Remove existing items";
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;

	comment "Add containers";
	
	this forceAddUniform (blufor_uniform call BIS_fnc_selectRandom);
	this addVest "rhsusf_spc";
	this addHeadgear (blufor_random_helmet call BIS_fnc_selectRandom);
	this addBackpack "rhsusf_assault_eagleaiii_coy";
	
	[this] call set_akm_ammo;
	[this, "SmokeShell", 1] call _addMagazinesToVest;
	[this, "SmokeShellRed", 1] call _addMagazinesToVest;
	[this, "HandGrenade", 2] call _addMagazinesToVest;

	

	this addWeapon "Binocular";
	this addWeapon (blufor_random_primaryweapon call BIS_fnc_selectRandom);
	this addPrimaryWeaponItem "optic_Aco";

	
	if ((random 4) > 3) then {
		[this] call blufor_AT;
	} else {
		[this] call blufor_basic;
	};
