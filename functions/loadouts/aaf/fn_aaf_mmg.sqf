
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;




// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["U_I_CombatUniform_shortsleeve","U_I_CombatUniform"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["V_PlateCarrierIAGL_dgtl","V_PlateCarrierIA2_dgtl","V_PlateCarrierIAGL_oli"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["B_AssaultPack_khk","B_TacticalPack_oli"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["H_HelmetIA"];
_unit addHeadgear _helmearray;

// Brillen
_brillenarray = selectRandom [ "" ];
_unit addGoggles _brillenarray;




// =========== Item verteilen ============ //

// Medikit
[_unit] call TFW_fnc_loadoutmedickit ;

// Grantenkit
[_unit] call TFW_fnc_loadoutgranaten ;

// Funkgeräte
_unit linkItem "tf_anprc148jem_1";


// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_XL50";







// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["MMG_02_sand_F","130Rnd_338_Mag"],["MMG_02_black_F","130Rnd_338_Mag"],["MMG_02_camo_F","130Rnd_338_Mag"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 4 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom ["optic_Arco","optic_mrco","optic_hamr"];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "bipod_01_F_snd";


// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["hgun_Rook40_F","16Rnd_9x21_Mag"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;

_unit addWeapon _sekwaffe ;
for "_i" from 1 to 2 do {_unit addMagazine _sekmunition;};




// =========== Items Linked verteilen ============ //

// Feldstecher
_unit addWeapon "Binocular";

// Karte
_unit linkItem "ItemMap";

// Kompass
_unit linkItem "ItemCompass";

// Uhr
_unit linkItem "ItemWatch";

// GPS
_unit linkItem "ItemMicroDAGR";

// Nachtsichtgeräte
_unit linkItem "ACE_NVG_Gen1";
