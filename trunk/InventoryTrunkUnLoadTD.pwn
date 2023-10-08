

    TextDrawHideForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giTrunk_HeaderFon]);
    TextDrawHideForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Language]][giTrunk_HeaderText]);    

    TextDrawHideForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giTrunk_ButtonsHeaderLowerFon]);
    TextDrawHideForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giTrunk_ButtonsPage][0]);
    TextDrawHideForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giTrunk_ButtonsPage][1]);
    TextDrawHideForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giTrunk_ButtonsPage][2]);
    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiTrunk_ButtonList]);

    for(new x; x < INV_MAX_TRUNK_SLOTS; x++)
    {
        PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Fon][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Icon][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiTrunk_Slot_Quantity][x]);
    }
