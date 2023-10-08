public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
    if(PlayerInv[playerid][iShow] == true)
	{

		return 1;
	}

    #if defined OnPlayerClickPlayerTD_Inv
        OnPlayerClickPlayerTD_Inv(playerid, playertextid);
    #endif
    return 1;
}
#if defined _ALS_OnPlayerClickPlayerTextDra
    #undef OnPlayerClickPlayerTextDraw
#else
    #define _ALS_OnPlayerClickPlayerTextDra
#endif
#define OnPlayerClickPlayerTextDraw OnPlayerClickPlayerTD_Inv
#if defined OnPlayerClickPlayerTD_Inv
    forward OnPlayerClickPlayerTD_Inv(playerid, PlayerText:playertextid);
#endif