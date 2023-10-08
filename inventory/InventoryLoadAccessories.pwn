stock InventoryLoadAccessories_New(playerid)
{
    //new itemID;

	for(new x; x < INV_MAX_ACCESSORY; x++)
	{
		//itemID = PlayerInvData[playerid][pid_AccessoryItemID][x];


		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiAccessories_Fon2][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x]);


        PlayerInvTD[playerid][tiAccessories_Fon][x] = CreatePlayerTextDraw(playerid, InvAccessoryPos[x][0], InvAccessoryPos[x][1], "_");//задний фон
		PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x], InventoryColors[PlayerInvData[playerid][pid_Theme]][icColor_Slot_Fon_MarginBox]);
		PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x], 5);
		PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x], 0.5000, 1.0000);
		PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x], 0xFFFFFFFF);
		PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x], 1);
		PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x], 0x00000000);
		PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x], InvAccessoryPos[x][2], InvAccessoryPos[x][3]);
		PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x], 18691);
		PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x], 0.00, 0.00, 0.00, 0.00);
		PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiAccessories_Fon][x]);


		if(!(x >= 1 && x <= 2 || x == 8))
		{
			PlayerInvTD[playerid][tiAccessories_Fon2][x] = CreatePlayerTextDraw(playerid, InvAccessoryPos[x][0] + 0.5, InvAccessoryPos[x][1] + 0.5, "_");//передний фон
			PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiAccessories_Fon2][x], InventoryColors[PlayerInvData[playerid][pid_Theme]][icColor_Slot_Fon_BorderBox]);
			PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiAccessories_Fon2][x], 5);
			PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiAccessories_Fon2][x], 0.5000, 1.0000);
			PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiAccessories_Fon2][x], 0xFFFFFFFF);
			PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][tiAccessories_Fon2][x], 1);
			PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][tiAccessories_Fon2][x], 0x00000000);
			PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][tiAccessories_Fon2][x], InvAccessoryPos[x][2]-1.0, InvAccessoryPos[x][3]-1.0); //28.7000, 33.8997);
			PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][tiAccessories_Fon2][x], 18691);
			PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][tiAccessories_Fon2][x], 0.0, 0.0, 0.0, 0.0);
			PlayerTextDrawSetSelectable(playerid, PlayerInvTD[playerid][tiAccessories_Fon2][x], true);
			PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiAccessories_Fon2][x]);
		}


		PlayerInvTD[playerid][tiAccessories_Icon][x] = CreatePlayerTextDraw(playerid, InvAccessoryPos[x][4], InvAccessoryPos[x][5], "_");//передний фон
		PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], !(x >= 1 && x <= 2 || x == 8) ? (0x00000000):(InventoryColors[PlayerInvData[playerid][pid_Theme]][icColor_Slot_Fon_BorderBox]));
		PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], 5);
		PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], 0.5000, 1.0000);
		PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], 0xFFFFFFFF);
		PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], 1);
		PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], 0x00000000);
		PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], InvAccessoryPos[x][6], InvAccessoryPos[x][7]);
        
		if(x == 8)// skin
		{
			PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], 2);
			PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], 0.0, 0.0, 0.0, 1.2);
		}
		else 
		{
			PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], 18691);
			PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], 0.0, 0.0, 0.0, 0.0);
		}
		
		PlayerTextDrawSetSelectable(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x], (x >= 1 && x <= 2 || x == 8) ? (1):(0));
		PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiAccessories_Icon][x]);
	}

	return 1;
}