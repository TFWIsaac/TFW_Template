
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["PBW_Uniform1_fleck","PBW_Uniform1H_fleck","PBW_Uniform3K_fleck","PBW_Uniform4K_fleck","PBW_Uniform4_fleck","PBW_Uniform3K_fleck","BWA3_Uniform_Fleck","BWA3_Uniform2_Fleck","BWA3_Uniform_idz_Fleck","BWA3_Uniform3_idz_Fleck"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["BWA3_Vest_Fleck","BWA3_Vest_Grenadier_Fleck","BWA3_Vest_Leader_Fleck","BWA3_Vest_Marksman_Fleck","BWA3_Vest_Autorifleman_Fleck","BWA3_Vest_Rifleman1_Fleck"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["BWA3_PatrolPack_Fleck"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["BWA3_M92_Fleck","PBW_Helm4_fleck","PBW_Helm4_fleck_HBO","PBW_Helm4_fleck_HBOD","PBW_Helm5_fleck","PBW_Helm5_fleck_H","PBW_Helm4_fleck_H","PBW_Helm3_fleck","PBW_Helm1_fleck_HBO"];
_unit addHeadgear _helmearray;

// Brillen
_brillenarray = selectRandom [ "" , "PBW_Balaclava_schwarz","PBW_Balaclava_schwarzR","PBW_Balaclava_beige","PBW_shemagh_gruen","BWA3_G_Combat_Clear","BWA3_G_Combat_Black","BWA3_G_Combat_Orange"];
_unit addGoggles _brillenarray;





// =========== Item verteilen ============ //

// Medikit
[_unit] call TFW_fnc_loadoutmedickit ;

// Grantenkit
[_unit] call TFW_fnc_loadoutgranaten ;

// Funkgeräte
_unit addItem "ACRE_PRC343";

// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_XL50";







// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["BWA3_MG5","BWA3_120Rnd_762x51"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 3 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom ["BWA3_optic_ZO4x30"];
_unit addPrimaryWeaponItem  _visierarray;




// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["BWA3_P8","BWA3_15Rnd_9x19_P8"]];
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
_unit linkItem "dsk_nsv";
