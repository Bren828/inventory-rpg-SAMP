stock HideInventory_New(playerid)
{
    if(PlayerInv[playerid][iShow] == false) return 1;
	PlayerInv[playerid][iShow] = false;

    CancelSelectTextDraw(playerid);
    TextDrawHideForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giMain_Fon]);
    
    #include "../source/inventory/inventory/InventoryUnLoadTD.pwn"

    if(PlayerInv[playerid][iTrunkShow] == true)
    {
        #include "../source/inventory/trunk/InventoryTrunkUnLoadTD.pwn"
    }

    PlayerInv[playerid] = NULL_PlayerInv;
    return 1;
}