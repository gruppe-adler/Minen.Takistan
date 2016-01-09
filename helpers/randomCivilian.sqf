_blufor_uniform = [
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



_blufor_random_helmet = [
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
	
	this forceAddUniform (_blufor_uniform call BIS_fnc_selectRandom);
	
	this addHeadgear (_blufor_random_helmet call BIS_fnc_selectRandom);
	
