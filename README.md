# inventory-RPG-SAMP

Inventory for SAMP

**TextDraw only**

![Crosshair](https://raw.githubusercontent.com/Bren828/inventory-rpg-SAMP/main/preview.gif)

## Installation
Include in your code:
```pawn
#include "../source/inventory/0_main.pwn"
```

## Example
```pawn
CMD:inv(playerid)
{
    PlayerInvData[playerid][pid_Theme] = 0;
    PlayerInvData[playerid][pid_Language] = 0;

    ShowInventory(playerid);
    return 1;
}
```
