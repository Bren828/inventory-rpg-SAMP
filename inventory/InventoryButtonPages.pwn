stock InventoryButtonPages(playerid, page)
{
    new Float:Pos_X = 305.00 + (10.0 * page);
    
    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiBackpack_ButtonList]);
    PlayerInvTD[playerid][tiBackpack_ButtonList] = CreatePlayerTextDraw(playerid, Pos_X, 372.00, "ld_beat:chit");
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiBackpack_ButtonList], 0x00000000);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiBackpack_ButtonList], 4);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiBackpack_ButtonList], 0.5000, 1.0000);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiBackpack_ButtonList], InventoryColors[PlayerInvData[playerid][pid_Theme]][icColor_PageChit]);
    PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][tiBackpack_ButtonList], 1);
    PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][tiBackpack_ButtonList], 0x00000000);
    PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][tiBackpack_ButtonList], 9.0000, 9.0000);
    PlayerTextDrawSetSelectable(playerid, PlayerInvTD[playerid][tiBackpack_ButtonList], 1);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiBackpack_ButtonList]);

    return 1;
}