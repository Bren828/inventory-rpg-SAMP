stock InventoryLoadItems_New(playerid)
{
	new Float:PosX = 227.0, 
		Float:PosY = 149.0,
		page = PlayerInv[playerid][iPage],
		string[5],
		ItemID,
		ItemQty,
		new_line
	;

	for(new x; x < INV_MAX_SLOTS; x++)
	{
		ItemID =   PlayerInvData[playerid][pid_ItemID][x + (page * INV_MAX_SLOTS)];
		ItemQty = PlayerInvData[playerid][pid_ItemQty][x + (page * INV_MAX_SLOTS)];


		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Fon][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Icon][x]);
		PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Quantity][x]);


		PlayerInvTD[playerid][tiBackpack_Slot_Fon][x] = CreatePlayerTextDraw(playerid, PosX, PosY, "_");//задний фон
		PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Fon][x], InventoryColors[PlayerInvData[playerid][pid_Theme]][icColor_Slot_Fon_MarginBox]);
		PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Fon][x], 5);
		PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Fon][x], 0.5000, 1.0000);
		PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Fon][x], 0xFFFFFFFF);
		PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Fon][x], 1);
		PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Fon][x], 0x00000000);
		PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Fon][x], 29.7000, 34.9000);
		PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Fon][x], 18691);
		PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Fon][x], 0.00, 0.00, 0.00, 0.00);
		PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Fon][x]);


		PlayerInvTD[playerid][tiBackpack_Slot_Icon][x] = CreatePlayerTextDraw(playerid, PosX + 0.5, PosY + 0.5, "_");//передний фон
		PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Icon][x], InventoryColors[PlayerInvData[playerid][pid_Theme]][icColor_Slot_Fon_BorderBox]);
		PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Icon][x], 5);
		PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Icon][x], 0.5000, 1.0000);
		PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Icon][x], 0xFFFFFFFF);
		PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Icon][x], 1);
		PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Icon][x], 0x00000000);
		PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Icon][x], 28.7000, 33.8997);
		PlayerTextDrawSetPreviewModel(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Icon][x], 18691);
		PlayerTextDrawSetPreviewRot(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Icon][x], 0.0, 0.0, 0.0, 0.0);
		PlayerTextDrawSetSelectable(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Icon][x], true);
		PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Icon][x]);


		if(ItemID != 0 && ItemQty != 0)
		{
			format(string, sizeof(string), "%d", ItemQty);

			PlayerInvTD[playerid][tiBackpack_Slot_Quantity][x] = CreatePlayerTextDraw(playerid, PosX + 27.0, PosY + 26.0, string);//кол-во
			PlayerTextDrawAlignment(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Quantity][x], 3);
			PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Quantity][x], 0x000000FF);
			PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Quantity][x], 2);
			PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Quantity][x], 0.1400, 0.6499);
			PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Quantity][x], InventoryColors[PlayerInvData[playerid][pid_Theme]][icColor_Text]);
			PlayerTextDrawSetProportional(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Quantity][x], 1);
			PlayerTextDrawSetShadow(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Quantity][x], 0);
			PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiBackpack_Slot_Quantity][x]);
		}


		PosX += 31.0;
		new_line++;
		if(new_line >= 6)
		{
			PosX = 227.0;
			PosY += 37.0;
			new_line = 0;
		}
	}

	return 1;
}