public OnPlayerClickTextDraw(playerid, Text:clickedid)
{
    if(PlayerInv[playerid][iShow] == true)
    {
        if(clickedid == INVALID_TEXT_DRAW)
        {
            HideInventory_New(playerid);
            return 1;
        }

        return 1;
    }

    #if defined OnPlayerClickTextDraw_Inv
        OnPlayerClickTextDraw_Inv(playerid, clickedid);
    #endif
    return 1;
}
#if defined _ALS_OnPlayerClickTextDraw
    #undef OnPlayerClickTextDraw
#else
    #define _ALS_OnPlayerClickTextDraw
#endif
#define OnPlayerClickTextDraw OnPlayerClickTextDraw_Inv
#if defined OnPlayerClickTextDraw_Inv
    forward OnPlayerClickTextDraw_Inv(playerid, Text:clickedid);
#endif
