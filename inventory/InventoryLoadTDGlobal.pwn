
new Float:inv_Pos_X;

for(new x; x < 2; x++)
{
    InventoryGlobalTD[x][giMain_Fon] = Text:INVALID_TEXT_DRAW;

    InventoryGlobalTD[x][giMain_Fon] = TextDrawCreate(-5.00, -5.00, "_");//основной фон
    TextDrawBackgroundColor(InventoryGlobalTD[x][giMain_Fon], InventoryColors[x][icColor_Main_Fon]);
    TextDrawFont(InventoryGlobalTD[x][giMain_Fon], 5);
    TextDrawLetterSize(InventoryGlobalTD[x][giMain_Fon], 0.5000, 1.0000);
    TextDrawColor(InventoryGlobalTD[x][giMain_Fon], 0xFFFFFFFF);
    TextDrawUseBox(InventoryGlobalTD[x][giMain_Fon], 1);
    TextDrawBoxColor(InventoryGlobalTD[x][giMain_Fon], 0x00000000);
    TextDrawTextSize(InventoryGlobalTD[x][giMain_Fon], 650.0000, 455.0000);
    TextDrawSetPreviewModel(InventoryGlobalTD[x][giMain_Fon], 18691);
    TextDrawSetPreviewRot(InventoryGlobalTD[x][giMain_Fon], 0.00, 0.00, 0.00, 0.00);

//верхний заголовок
    InventoryGlobalTD[x][giBackpack_TopHeader_Fon] = TextDrawCreate(227.00, 143.00, "_");//заголовок
    TextDrawBackgroundColor(InventoryGlobalTD[x][giBackpack_TopHeader_Fon], InventoryColors[x][icColor_Header]);
    TextDrawFont(InventoryGlobalTD[x][giBackpack_TopHeader_Fon], 5);
    TextDrawLetterSize(InventoryGlobalTD[x][giBackpack_TopHeader_Fon], 0.5000, 1.0000);
    TextDrawColor(InventoryGlobalTD[x][giBackpack_TopHeader_Fon], 0xFFFFFFFF);
    TextDrawUseBox(InventoryGlobalTD[x][giBackpack_TopHeader_Fon], 1);
    TextDrawBoxColor(InventoryGlobalTD[x][giBackpack_TopHeader_Fon], 0x00000000);
    TextDrawTextSize(InventoryGlobalTD[x][giBackpack_TopHeader_Fon], 184.5, 1.0000);
    TextDrawSetPreviewModel(InventoryGlobalTD[x][giBackpack_TopHeader_Fon], 18691);
    TextDrawSetPreviewRot(InventoryGlobalTD[x][giBackpack_TopHeader_Fon], 0.00, 0.00, 0.00, 0.00);

    InventoryGlobalTD[x][giBackpack_TopHeader_Text] = TextDrawCreate(227.00, 129.00, InvText[0][x]); //Рюкзак
    TextDrawBackgroundColor(InventoryGlobalTD[x][giBackpack_TopHeader_Text], 0x000000FF);
    TextDrawFont(InventoryGlobalTD[x][giBackpack_TopHeader_Text], 2);
    TextDrawLetterSize(InventoryGlobalTD[x][giBackpack_TopHeader_Text], 0.2099, 1.2199);
    TextDrawColor(InventoryGlobalTD[x][giBackpack_TopHeader_Text], InventoryColors[x][icColor_Text]);
    TextDrawSetProportional(InventoryGlobalTD[x][giBackpack_TopHeader_Text], 1);
    TextDrawSetShadow(InventoryGlobalTD[x][giBackpack_TopHeader_Text], 0);

//button
    InventoryGlobalTD[x][giBackpack_ButtonsHeader] = TextDrawCreate(227.00, 384.00, "_");
    TextDrawBackgroundColor(InventoryGlobalTD[x][giBackpack_ButtonsHeader], InventoryColors[x][icColor_Header]);
    TextDrawFont(InventoryGlobalTD[x][giBackpack_ButtonsHeader], 5);
    TextDrawLetterSize(InventoryGlobalTD[x][giBackpack_ButtonsHeader], 0.5000, 1.0000);
    TextDrawColor(InventoryGlobalTD[x][giBackpack_ButtonsHeader], 0xFFFFFFFF);
    TextDrawUseBox(InventoryGlobalTD[x][giBackpack_ButtonsHeader], 1);
    TextDrawBoxColor(InventoryGlobalTD[x][giBackpack_ButtonsHeader], 0x00000000);
    TextDrawTextSize(InventoryGlobalTD[x][giBackpack_ButtonsHeader], 184.5, 1.0000);
    TextDrawSetPreviewModel(InventoryGlobalTD[x][giBackpack_ButtonsHeader], 18691);
    TextDrawSetPreviewRot(InventoryGlobalTD[x][giBackpack_ButtonsHeader], 0.00, 0.00, 0.00, 0.00);

    inv_Pos_X = 305.00;
    for(new x_page; x_page < INV_MAX_PAGE; x_page ++)
    {
        InventoryGlobalTD[x][giBackpack_ButtonsPage][x_page] = TextDrawCreate(inv_Pos_X, 372.00, "ld_beat:chit");//кнопки действия кнопка страниц 1
        TextDrawBackgroundColor(InventoryGlobalTD[x][giBackpack_ButtonsPage][x_page], 0x00000000);
        TextDrawFont(InventoryGlobalTD[x][giBackpack_ButtonsPage][x_page], 4);
        TextDrawLetterSize(InventoryGlobalTD[x][giBackpack_ButtonsPage][x_page], 0.5000, 1.0000);
        TextDrawColor(InventoryGlobalTD[x][giBackpack_ButtonsPage][x_page], InventoryColors[x][icColor_Slot_Fon_BorderBox]);
        TextDrawUseBox(InventoryGlobalTD[x][giBackpack_ButtonsPage][x_page], 1);
        TextDrawBoxColor(InventoryGlobalTD[x][giBackpack_ButtonsPage][x_page], 0x00000000);
        TextDrawTextSize(InventoryGlobalTD[x][giBackpack_ButtonsPage][x_page], 9.0000, 9.0000);
        TextDrawSetSelectable(InventoryGlobalTD[x][giBackpack_ButtonsPage][x_page], 1);

        inv_Pos_X += 10.0;
    }

//Accessories 
    InventoryGlobalTD[x][giAccessories_TopHeader_Fon] = TextDrawCreate(423.00, 143.00, "_");//заголовок
    TextDrawBackgroundColor(InventoryGlobalTD[x][giAccessories_TopHeader_Fon], InventoryColors[x][icColor_Header]);
    TextDrawFont(InventoryGlobalTD[x][giAccessories_TopHeader_Fon], 5);
    TextDrawLetterSize(InventoryGlobalTD[x][giAccessories_TopHeader_Fon], 0.5000, 1.0000);
    TextDrawColor(InventoryGlobalTD[x][giAccessories_TopHeader_Fon], 0xFFFFFFFF);
    TextDrawUseBox(InventoryGlobalTD[x][giAccessories_TopHeader_Fon], 1);
    TextDrawBoxColor(InventoryGlobalTD[x][giAccessories_TopHeader_Fon], 0x00000000);
    TextDrawTextSize(InventoryGlobalTD[x][giAccessories_TopHeader_Fon], 184.5, 1.0000);
    TextDrawSetPreviewModel(InventoryGlobalTD[x][giAccessories_TopHeader_Fon], 18691);
    TextDrawSetPreviewRot(InventoryGlobalTD[x][giAccessories_TopHeader_Fon], 0.00, 0.00, 0.00, 0.00);

    InventoryGlobalTD[x][giAccessories_TopHeader_Text] = TextDrawCreate(423.00, 129.00, InvText[1][x]);//заголовок текст
    TextDrawBackgroundColor(InventoryGlobalTD[x][giAccessories_TopHeader_Text], 0x000000FF);
    TextDrawFont(InventoryGlobalTD[x][giAccessories_TopHeader_Text], 2);
    TextDrawLetterSize(InventoryGlobalTD[x][giAccessories_TopHeader_Text], 0.2099, 1.2199);
    TextDrawColor(InventoryGlobalTD[x][giAccessories_TopHeader_Text], InventoryColors[x][icColor_Text]);
    TextDrawSetProportional(InventoryGlobalTD[x][giAccessories_TopHeader_Text], 1);
    TextDrawSetShadow(InventoryGlobalTD[x][giAccessories_TopHeader_Text], 0);

//Weapon
    InventoryGlobalTD[x][giWeaponHeaderFon] = TextDrawCreate(423.00, 328.00, "_");//заголовок
    TextDrawBackgroundColor(InventoryGlobalTD[x][giWeaponHeaderFon], InventoryColors[x][icColor_Header]);
    TextDrawFont(InventoryGlobalTD[x][giWeaponHeaderFon], 5);
    TextDrawLetterSize(InventoryGlobalTD[x][giWeaponHeaderFon], 0.5000, 1.0000);
    TextDrawColor(InventoryGlobalTD[x][giWeaponHeaderFon], 0xFFFFFFFF);
    TextDrawUseBox(InventoryGlobalTD[x][giWeaponHeaderFon], 1);
    TextDrawBoxColor(InventoryGlobalTD[x][giWeaponHeaderFon], 0x00000000);
    TextDrawTextSize(InventoryGlobalTD[x][giWeaponHeaderFon], 184.5, 1.0000);
    TextDrawSetPreviewModel(InventoryGlobalTD[x][giWeaponHeaderFon], 18691);
    TextDrawSetPreviewRot(InventoryGlobalTD[x][giWeaponHeaderFon], 0.00, 0.00, 0.00, 0.00);

    InventoryGlobalTD[x][giWeaponHeaderText] = TextDrawCreate(423.00, 313.00, InvText[2][x]);//заголовок текст
    TextDrawBackgroundColor(InventoryGlobalTD[x][giWeaponHeaderText], 0x000000FF);
    TextDrawFont(InventoryGlobalTD[x][giWeaponHeaderText], 2);
    TextDrawLetterSize(InventoryGlobalTD[x][giWeaponHeaderText], 0.2099, 1.2199);
    TextDrawColor(InventoryGlobalTD[x][giWeaponHeaderText], InventoryColors[x][icColor_Text]);
    TextDrawSetProportional(InventoryGlobalTD[x][giWeaponHeaderText], 1);
    TextDrawSetShadow(InventoryGlobalTD[x][giWeaponHeaderText], 0);

    new Float:HandsPos_X[3] =
    {
        423.00, 
        515.00, 
        562.00
    };

    for(new x_weapon; x_weapon < 3; x_weapon++)
    {
        InventoryGlobalTD[x][giWeapon_Slot_Fon][x_weapon] = TextDrawCreate(HandsPos_X[x_weapon], 334.0, "_");//слот 0 задний фон
        TextDrawBackgroundColor(InventoryGlobalTD[x][giWeapon_Slot_Fon][x_weapon], InventoryColors[x][icColor_Slot_Fon_MarginBox]);
        TextDrawFont(InventoryGlobalTD[x][giWeapon_Slot_Fon][x_weapon], 5);
        TextDrawLetterSize(InventoryGlobalTD[x][giWeapon_Slot_Fon][x_weapon], 0.5000, 1.0000);
        TextDrawColor(InventoryGlobalTD[x][giWeapon_Slot_Fon][x_weapon], 0xFFFFFFFF);
        TextDrawUseBox(InventoryGlobalTD[x][giWeapon_Slot_Fon][x_weapon], 1);
        TextDrawBoxColor(InventoryGlobalTD[x][giWeapon_Slot_Fon][x_weapon], 0x00000000);
        TextDrawTextSize(InventoryGlobalTD[x][giWeapon_Slot_Fon][x_weapon], (x_weapon == 0) ? (90.6996):(45.7000), 34.9000);
        TextDrawSetPreviewModel(InventoryGlobalTD[x][giWeapon_Slot_Fon][x_weapon], 18691);
        TextDrawSetPreviewRot(InventoryGlobalTD[x][giWeapon_Slot_Fon][x_weapon], 0.00, 0.00, 0.00, 0.00);

        InventoryGlobalTD[x][giWeapon_Slot_Icon][x_weapon] = TextDrawCreate(HandsPos_X[x_weapon]+0.5, 334.0+0.5, "_");//слот 0 передний фон
        TextDrawBackgroundColor(InventoryGlobalTD[x][giWeapon_Slot_Icon][x_weapon], InventoryColors[x][icColor_Slot_Fon_BorderBox]);
        TextDrawFont(InventoryGlobalTD[x][giWeapon_Slot_Icon][x_weapon], 5);
        TextDrawLetterSize(InventoryGlobalTD[x][giWeapon_Slot_Icon][x_weapon], 0.5000, 1.0000);
        TextDrawColor(InventoryGlobalTD[x][giWeapon_Slot_Icon][x_weapon], 0xFFFFFFFF);
        TextDrawUseBox(InventoryGlobalTD[x][giWeapon_Slot_Icon][x_weapon], 1);
        TextDrawBoxColor(InventoryGlobalTD[x][giWeapon_Slot_Icon][x_weapon], 0x00000000);
        TextDrawTextSize(InventoryGlobalTD[x][giWeapon_Slot_Icon][x_weapon], (x_weapon == 0) ? (89.6996):(44.7000), 33.8997);
        TextDrawSetPreviewModel(InventoryGlobalTD[x][giWeapon_Slot_Icon][x_weapon], 18691);
        TextDrawSetPreviewRot(InventoryGlobalTD[x][giWeapon_Slot_Icon][x_weapon], 0.00, 0.00, 160.00, 0.00);
        TextDrawSetSelectable(InventoryGlobalTD[x][giWeapon_Slot_Icon][x_weapon], 1);
    }

//Indicators
    for(new x_i; x_i < 3; x_i++)
    {
        InventoryGlobalTD[x][giIndicators_Name][x_i] = TextDrawCreate((x_i == 0) ? (31.0) : (x_i == 1) ? (105.0):(164.0), 403.0, InvText[4+x_i][x]);
        TextDrawBackgroundColor(InventoryGlobalTD[x][giIndicators_Name][x_i], 0x000000FF);
        TextDrawFont(InventoryGlobalTD[x][giIndicators_Name][x_i], 2);
        TextDrawLetterSize(InventoryGlobalTD[x][giIndicators_Name][x_i], 0.1597, 0.9799);
        TextDrawColor(InventoryGlobalTD[x][giIndicators_Name][x_i], InventoryColors[x][icColor_Text]);
        TextDrawSetProportional(InventoryGlobalTD[x][giIndicators_Name][x_i], 1);
        TextDrawSetShadow(InventoryGlobalTD[x][giIndicators_Name][x_i], 0);
    }
}