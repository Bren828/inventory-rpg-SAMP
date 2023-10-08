public OnPlayerDeath(playerid, killerid, reason)
{
    if(PlayerInv[playerid][iShow] == true) HideInventory_New(playerid);

    #if defined OnPlayerDeath_Inv
        OnPlayerDeath_Inv(playerid, killerid, reason);
    #endif
    return 1;
}
#if defined _ALS_OnPlayerDeath
    #undef OnPlayerDeath
#else
    #define _ALS_OnPlayerDeath
#endif
#define OnPlayerDeath OnPlayerDeath_Inv
#if defined OnPlayerDeath_Inv
    forward OnPlayerDeath_Inv(playerid, killerid, reason);
#endif
