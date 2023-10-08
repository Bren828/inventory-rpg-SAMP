stock InventoryTrunkButtonPages(playerid, page)
{
    new Float:Pos_X = 109.00 + (10.0 * page);
    
    PlayerTextDrawDestroyEx(playerid, PlayerInvTD[playerid][tiTrunk_ButtonList]);
    PlayerInvTD[playerid][tiTrunk_ButtonList] = CreatePlayerTextDraw(playerid, Pos_X, 261.00, "ld_beat:chit");
    PlayerTextDrawBackgroundColor(playerid, PlayerInvTD[playerid][tiTrunk_ButtonList], 0x00000000);
    PlayerTextDrawFont(playerid, PlayerInvTD[playerid][tiTrunk_ButtonList], 4);
    PlayerTextDrawLetterSize(playerid, PlayerInvTD[playerid][tiTrunk_ButtonList], 0.5000, 1.0000);
    PlayerTextDrawColor(playerid, PlayerInvTD[playerid][tiTrunk_ButtonList], InventoryColors[PlayerInvData[playerid][pid_Theme]][icColor_PageChit]);
    PlayerTextDrawUseBox(playerid, PlayerInvTD[playerid][tiTrunk_ButtonList], 1);
    PlayerTextDrawBoxColor(playerid, PlayerInvTD[playerid][tiTrunk_ButtonList], 0x00000000);
    PlayerTextDrawTextSize(playerid, PlayerInvTD[playerid][tiTrunk_ButtonList], 9.0000, 9.0000);
    PlayerTextDrawSetSelectable(playerid, PlayerInvTD[playerid][tiTrunk_ButtonList], 1);
    PlayerTextDrawShow(playerid, PlayerInvTD[playerid][tiTrunk_ButtonList]);
    
    return 1;
}