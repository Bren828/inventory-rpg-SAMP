
for(new x; x < 2; x ++)
{
    InventoryGlobalTD[x][giTrunk_HeaderFon] = TextDrawCreate(31.00, 143.00, "_");//верх полоска
    TextDrawBackgroundColor(InventoryGlobalTD[x][giTrunk_HeaderFon], InventoryColors[x][icColor_Header]);
    TextDrawFont(InventoryGlobalTD[x][giTrunk_HeaderFon], 5);
    TextDrawLetterSize(InventoryGlobalTD[x][giTrunk_HeaderFon], 0.5000, 1.0000);
    TextDrawColor(InventoryGlobalTD[x][giTrunk_HeaderFon], 0xFFFFFFFF);
    TextDrawUseBox(InventoryGlobalTD[x][giTrunk_HeaderFon], 1);
    TextDrawBoxColor(InventoryGlobalTD[x][giTrunk_HeaderFon], 0x00000000);
    TextDrawTextSize(InventoryGlobalTD[x][giTrunk_HeaderFon], 184.5, 1.0000);
    TextDrawSetPreviewModel(InventoryGlobalTD[x][giTrunk_HeaderFon], 18691);
    TextDrawSetPreviewRot(InventoryGlobalTD[x][giTrunk_HeaderFon], 0.00, 0.00, 0.00, 0.00);

    InventoryGlobalTD[x][giTrunk_HeaderText] = TextDrawCreate(31.00, 129.00, InvText[3][x]);
    TextDrawBackgroundColor(InventoryGlobalTD[x][giTrunk_HeaderText], 0x000000FF);
    TextDrawFont(InventoryGlobalTD[x][giTrunk_HeaderText], 2);
    TextDrawLetterSize(InventoryGlobalTD[x][giTrunk_HeaderText], 0.2099, 1.2199);
    TextDrawColor(InventoryGlobalTD[x][giTrunk_HeaderText], InventoryColors[x][icColor_Text]);
    TextDrawSetProportional(InventoryGlobalTD[x][giTrunk_HeaderText], 1);
    TextDrawSetShadow(InventoryGlobalTD[x][giTrunk_HeaderText], 0);

//кнопки
    InventoryGlobalTD[x][giTrunk_ButtonsHeaderLowerFon] = TextDrawCreate(31.00, 273.0, "_");//верх полоска
    TextDrawBackgroundColor(InventoryGlobalTD[x][giTrunk_ButtonsHeaderLowerFon], InventoryColors[x][icColor_Header]); 
    TextDrawFont(InventoryGlobalTD[x][giTrunk_ButtonsHeaderLowerFon], 5);
    TextDrawLetterSize(InventoryGlobalTD[x][giTrunk_ButtonsHeaderLowerFon], 0.5000, 1.0000);
    TextDrawColor(InventoryGlobalTD[x][giTrunk_ButtonsHeaderLowerFon], 0xFFFFFFFF);
    TextDrawUseBox(InventoryGlobalTD[x][giTrunk_ButtonsHeaderLowerFon], 1);
    TextDrawBoxColor(InventoryGlobalTD[x][giTrunk_ButtonsHeaderLowerFon], 0x00000000);
    TextDrawTextSize(InventoryGlobalTD[x][giTrunk_ButtonsHeaderLowerFon], 184.5, 1.0000);
    TextDrawSetPreviewModel(InventoryGlobalTD[x][giTrunk_ButtonsHeaderLowerFon], 18691);
    TextDrawSetPreviewRot(InventoryGlobalTD[x][giTrunk_ButtonsHeaderLowerFon], 0.00, 0.00, 0.00, 0.00);

    inv_Pos_X = 109.00;
    for(new x_page; x_page < INV_MAX_TRUNK_PAGE; x_page ++)
    {
        InventoryGlobalTD[x][giTrunk_ButtonsPage][x_page] = TextDrawCreate(inv_Pos_X, 261.00, "ld_beat:chit");//кнопки действия кнопка страниц 1
        TextDrawBackgroundColor(InventoryGlobalTD[x][giTrunk_ButtonsPage][x_page], 0x00000000);
        TextDrawFont(InventoryGlobalTD[x][giTrunk_ButtonsPage][x_page], 4);
        TextDrawLetterSize(InventoryGlobalTD[x][giTrunk_ButtonsPage][x_page], 0.5000, 1.0000);
        TextDrawColor(InventoryGlobalTD[x][giTrunk_ButtonsPage][x_page], InventoryColors[x][icColor_Slot_Fon_BorderBox]);
        TextDrawUseBox(InventoryGlobalTD[x][giTrunk_ButtonsPage][x_page], 1);
        TextDrawBoxColor(InventoryGlobalTD[x][giTrunk_ButtonsPage][x_page], 0x00000000);
        TextDrawTextSize(InventoryGlobalTD[x][giTrunk_ButtonsPage][x_page], 9.0000, 9.0000);
        TextDrawSetSelectable(InventoryGlobalTD[x][giTrunk_ButtonsPage][x_page], 1);

        inv_Pos_X += 10.0;
    }
}