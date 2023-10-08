
//верхний заголовок
    TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giBackpack_TopHeader_Fon]);
    TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Language]][giBackpack_TopHeader_Text]);

//load item
    InventoryLoadItems_New(playerid);

//кнопки
    TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giBackpack_ButtonsHeader]);
    TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giBackpack_ButtonsPage][0]);
    TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giBackpack_ButtonsPage][1]);
    TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giBackpack_ButtonsPage][2]);

    InventoryButtonPages(playerid, PlayerInv[playerid][iPage]);

//Accessories 
    TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giAccessories_TopHeader_Fon]);
    TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Language]][giAccessories_TopHeader_Text]);

    InventoryLoadAccessories_New(playerid);

//Weapon
    TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giWeaponHeaderFon]);
    TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Language]][giWeaponHeaderText]);

    for(new x; x < 3; x++)
    {
        TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giWeapon_Slot_Fon][x]);
        TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giWeapon_Slot_Icon][x]);
    }

// индикаторы
    
    for(new x; x < 3; x++)
    {
        TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Language]][giIndicators_Name][x]);
        switch(x)
        {
            case 0: PlayerInv[playerid][iIndicators_Bar][x] = CreatePlayerProgressBar(playerid, 32.00,  417.00,  67.00, 3.00,  InventoryColors[PlayerInvData[playerid][pid_Theme]][icColor_Indicator1], 100.0, BAR_DIRECTION_RIGHT);
            case 1: PlayerInv[playerid][iIndicators_Bar][x] = CreatePlayerProgressBar(playerid, 106.00, 417.00,  51.00, 3.00,  InventoryColors[PlayerInvData[playerid][pid_Theme]][icColor_Indicator2], 100.0, BAR_DIRECTION_RIGHT);
            case 2: PlayerInv[playerid][iIndicators_Bar][x] = CreatePlayerProgressBar(playerid, 165.00, 417.00,  51.00, 3.00,  InventoryColors[PlayerInvData[playerid][pid_Theme]][icColor_Indicator3], 100.0, BAR_DIRECTION_RIGHT);
        }
        ShowPlayerProgressBar(playerid, PlayerInv[playerid][iIndicators_Bar][x]);
    }
    