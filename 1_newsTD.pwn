enum PLAYER_INV_TD_EN
{
//Backpack
    PlayerText:tiBackpack_Slot_Fon[INV_MAX_SLOTS],
    PlayerText:tiBackpack_Slot_Icon[INV_MAX_SLOTS],
    PlayerText:tiBackpack_Slot_Quantity[INV_MAX_SLOTS],

//Buttons
    PlayerText:tiBackpack_ButtonList,

 //Accessories
    PlayerText:tiAccessories_Fon[INV_MAX_ACCESSORY],
    PlayerText:tiAccessories_Fon2[INV_MAX_ACCESSORY],
    PlayerText:tiAccessories_Icon[INV_MAX_ACCESSORY],

//Trunk
    PlayerText:tiTrunk_ButtonList,

    PlayerText:tiTrunk_Slot_Fon[INV_MAX_TRUNK_SLOTS],
    PlayerText:tiTrunk_Slot_Icon[INV_MAX_TRUNK_SLOTS],
    PlayerText:tiTrunk_Slot_Quantity[INV_MAX_TRUNK_SLOTS],
};
new PlayerText:PlayerInvTD[MAX_PLAYERS][PLAYER_INV_TD_EN];
new PlayerText:NULL_PlayerInvTD[PLAYER_INV_TD_EN];


enum GLOBAL_INV_NEW
{
	Text:giMain_Fon,

//Backpack
    Text:giBackpack_TopHeader_Fon,
    Text:giBackpack_TopHeader_Text,

//buttons
    Text:giBackpack_ButtonsHeader,
    Text:giBackpack_ButtonsPage[INV_MAX_PAGE],

//Accessories
    Text:giAccessories_TopHeader_Fon,
    Text:giAccessories_TopHeader_Text,

//Weapon
    Text:giWeaponHeaderFon, 
    Text:giWeaponHeaderText,

    Text:giWeapon_Slot_Fon[3],
    Text:giWeapon_Slot_Icon[3],

//Indicators
	Text:giIndicators_Name[3],

//trunk
	Text:giTrunk_HeaderFon,
	Text:giTrunk_HeaderText,
	Text:giTrunk_ButtonsHeaderLowerFon,
    Text:giTrunk_ButtonsPage[INV_MAX_TRUNK_PAGE]
}

new InventoryGlobalTD[2][GLOBAL_INV_NEW];

