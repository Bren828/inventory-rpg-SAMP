

#define INV_MAX_SLOTS	 		36
#define INV_MAX_PAGE	 		3

#define INV_MAX_TRUNK_SLOTS		18
#define INV_MAX_TRUNK_PAGE		3

#define INV_MAX_ACCESSORY	 	9


enum PLAYER_INV_EN
{
    bool:iShow,
	PlayerBar:iIndicators_Bar[3],

//Backpack
    iPage, 

//Trunk
	bool:iTrunkShow,
	iTrunkPage

}
new PlayerInv[MAX_PLAYERS][PLAYER_INV_EN]; 
new const NULL_PlayerInv[PLAYER_INV_EN];


enum PLAYER_INV_DATA_EN
{
	pid_Theme,
	pid_Language,

	pid_ItemID [INV_MAX_SLOTS * INV_MAX_PAGE], // player items
	pid_ItemQty[INV_MAX_SLOTS * INV_MAX_PAGE], // player items

	pid_AccessoryItemID[INV_MAX_ACCESSORY]     // player accessories
}
new PlayerInvData[MAX_PLAYERS][PLAYER_INV_DATA_EN];


new Float:InvAccessoryPos[INV_MAX_ACCESSORY][8] = 
{//	фон	1 и 2								иконка
	{423.00, 149.0,  60.6996, 34.9000,		439.50, 149.50,  27.6998, 33.8997},//голова
	{485.00, 149.0,  29.7000, 34.9000,		485.50, 149.50,  28.7000, 33.9000},//голова
	{516.00, 149.0,  29.7000, 34.9000,  	516.50, 149.50,  28.7000, 33.9000},//голова
	{547.00, 149.0,  60.6996, 34.9000, 		563.50, 149.50,  27.6998, 33.8997},//голова
	{423.00, 186.0,  60.6996, 34.9000,  	439.50, 186.50, 27.6998, 33.8997},//спина
	{547.00, 186.0,  60.6996, 34.9000,  	563.50, 186.50, 27.6998, 33.8997},//грудь
	{423.00, 223.0,  60.6996, 34.9000,   	439.50, 223.50, 27.6998, 33.8997},//часы левые
	{547.00, 223.0,  60.6996, 34.9000,   	563.50, 223.50, 27.6998, 33.8997},//часы правые
	{485.00, 186.0,  60.6996, 71.9000,  	485.50, 186.50, 59.6996, 70.9000}//скин 
};

stock PlayerTextDrawDestroyEx(playerid, &PlayerText:text)
{
	if(text != PlayerText:INVALID_TEXT_DRAW) PlayerTextDrawDestroy(playerid, text);
	text = PlayerText:INVALID_TEXT_DRAW;
}

