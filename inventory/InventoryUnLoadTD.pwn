    
    TextDrawHideForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giBackpack_TopHeader_Fon]);
    TextDrawHideForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Language]][giBackpack_TopHeader_Text]);

    for(new x; x < INV_MAX_SLOTS; x++)
    {
        if(x < 3)
        {
            TextDrawHideForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giBackpack_ButtonsPage][x]);
            TextDrawHideForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giWeapon_Slot_Fon][x]);
            TextDrawHideForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giWeapon_Slot_Icon][x]);

            TextDrawHideForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Language]][giIndicators_Name][x]);
            DestroyPlayerProgressBar(playerid, PlayerInv[playerid][iIndicators_Bar][x]);
        }    
        PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Fon][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Icon][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Quantity][x]);
        if(x < INV_MAX_ACCESSORY)
        {
            PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x]);
            PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiAccessories_Fon2][x]);
		    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x]);
        }
    }

//buttons
    TextDrawHideForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giBackpack_ButtonsHeader]);
    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiBackpack_ButtonList]);

//Weapon
    TextDrawHideForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giWeaponHeaderFon]);
    TextDrawHideForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Language]][giWeaponHeaderText]);
    
//Accessories
    TextDrawHideForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giAccessories_TopHeader_Fon]);
    TextDrawHideForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Language]][giAccessories_TopHeader_Text]);