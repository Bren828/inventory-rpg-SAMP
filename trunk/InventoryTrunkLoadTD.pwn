    
    
    PlayerInv[playerid][iTrunkShow] = true;

// Header
    TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giTrunk_HeaderFon]);
    TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Language]][giTrunk_HeaderText]);

//кнопки
    TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giTrunk_ButtonsHeaderLowerFon]); 
    TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giTrunk_ButtonsPage][0]);
    TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giTrunk_ButtonsPage][1]);
    TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giTrunk_ButtonsPage][2]);

    InventoryTrunkButtonPages(playerid, PlayerInv[playerid][iTrunkPage]); 

//load item 
    InventoryTrunkLoadItems(playerid);

 
