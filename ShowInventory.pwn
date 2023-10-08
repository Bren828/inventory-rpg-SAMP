
stock ShowInventory(playerid, bool:show_trunk = false)
{
    if(PlayerInv[playerid][iShow] == true) return 1;
	
	PlayerInv[playerid][iShow] = true;

	SelectTextDraw(playerid, InventoryColors[PlayerInvData[playerid][pid_Theme]][icColor_Cursor]);
	TextDrawShowForPlayer(playerid, InventoryGlobalTD[PlayerInvData[playerid][pid_Theme]][giMain_Fon]);
	
	#include "../source/inventory/inventory/InventoryLoadTD.pwn"

    if(show_trunk == true)
    {
        #include "../source/inventory/trunk/InventoryTrunkLoadTD.pwn"
    }
    return 1;
}

