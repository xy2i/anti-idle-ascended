using static aitg.Globals;

namespace aitg.lib.feature.main;

public static class Modules
{
    public static void swapModulePiece(int pieceA, int pieceB)
    {
        copyModulePiece(pieceA, 141);
        copyModulePiece(pieceB, pieceA);
        copyModulePiece(141, pieceB);
        deleteModulePiece(141);
    }

    public static void copyModulePiece(int pieceOrig, int pieceDest)
    {
        save.progModuleName[pieceDest] = save.progModuleName[pieceOrig];
        save.progModuleTier[pieceDest] = save.progModuleTier[pieceOrig];
        save.progModuleSize[pieceDest] = save.progModuleSize[pieceOrig];
        save.progModuleShiny[pieceDest] = save.progModuleShiny[pieceOrig];
        save.progModuleType[pieceDest] = save.progModuleType[pieceOrig];
        save.progModuleChance[pieceDest] = save.progModuleChance[pieceOrig];
        save.progModuleEffect[pieceDest] = save.progModuleEffect[pieceOrig];
        save.progModuleCost[pieceDest] = save.progModuleCost[pieceOrig];
    }

    public static void deleteModulePiece(int pieceA)
    {
        save.progModuleName[pieceA] = "";
        save.progModuleTier[pieceA] = 0;
        save.progModuleSize[pieceA] = 0;
        save.progModuleShiny[pieceA] = 0;
        save.progModuleType[pieceA] = 0;
        save.progModuleChance[pieceA] = 0;
        save.progModuleEffect[pieceA] = 0;
        save.progModuleCost[pieceA] = 0;
    }

    public static void organizeModule()
    {
        var i = 1;
        while (i <= 8)
        {
            if (save.progModuleTier[i] == 0)
            {
                var mustSwap = false;
                var j = i + 1;
                while (j <= 9)
                {
                    if (save.progModuleTier[j] != 0)
                    {
                        mustSwap = true;
                        j = 10;
                    }

                    j += 1;
                }

                if (mustSwap)
                {
                    j = i + 1;
                    while (j <= 9)
                    {
                        swapModulePiece(j - 1, j);
                        j += 1;
                    }

                    i -= 1;
                }
                else
                {
                    i = 9;
                }
            }

            i += 1;
        }

        i = 11;
        while (i <= 110)
        {
            if (save.progModuleTier[i] == 0)
            {
                var mustSwap = false;
                var j = i + 1;
                while (j <= 110)
                {
                    if (save.progModuleTier[j] != 0)
                    {
                        mustSwap = true;
                        j = 111;
                    }

                    j += 1;
                }

                if (mustSwap)
                {
                    j = i + 1;
                    while (j <= 110)
                    {
                        swapModulePiece(j - 1, j);
                        j += 1;
                    }

                    i -= 1;
                }
                else
                {
                    i = 111;
                }
            }

            i += 1;
        }

        _root.moduleSlotOccupied = 0;
        i = 1;
        while (i <= 9)
        {
            if (save.progModuleTier[i] != 0)
            {
                _root.moduleSlotOccupied += 1;
            }
            else
            {
                i = 10;
            }

            i += 1;
        }

        _root.moduleInvSlotOccupied = 0;
        i = 11;
        while (i <= 110)
        {
            if (save.progModuleTier[i] != 0)
            {
                _root.moduleInvSlotOccupied += 1;
            }
            else
            {
                i = 111;
            }

            i += 1;
        }

        _root.moduleSlotLeft = 9 - _root.moduleSlotOccupied;
        _root.moduleInvSlotLeft = save.progModuleSlot - _root.moduleInvSlotOccupied;
    }
}