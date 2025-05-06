//! status=pending
curKey = "";
onEnterFrame = function()
{
   downKey = 0;
   if(curKey != "")
   {
      if(curKey.indexOf("keyArena") == -1)
      {
         i = 37;
         while(i <= 40)
         {
            if(Key.isDown(i))
            {
               downKey = i;
            }
            i++;
         }
      }
      i = 48;
      while(i <= 57)
      {
         if(Key.isDown(i))
         {
            downKey = i;
         }
         i++;
      }
      i = 65;
      while(i <= 90)
      {
         if(Key.isDown(i))
         {
            downKey = i;
         }
         i++;
      }
      if(downKey != 0)
      {
         if(curKey.indexOf("keyArena") != -1)
         {
            if(_root.saveGlobal.keyArenaQ == downKey)
            {
               _root.saveGlobal.keyArenaQ = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyArenaW == downKey)
            {
               _root.saveGlobal.keyArenaW = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyArenaA == downKey)
            {
               _root.saveGlobal.keyArenaA = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyArenaS == downKey)
            {
               _root.saveGlobal.keyArenaS = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyArenaD == downKey)
            {
               _root.saveGlobal.keyArenaD = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyArenaF == downKey)
            {
               _root.saveGlobal.keyArenaF = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyArenaZ == downKey)
            {
               _root.saveGlobal.keyArenaZ = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyArenaX == downKey)
            {
               _root.saveGlobal.keyArenaX = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyArenaC == downKey)
            {
               _root.saveGlobal.keyArenaC = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyArenaV == downKey)
            {
               _root.saveGlobal.keyArenaV = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyArenaB == downKey)
            {
               _root.saveGlobal.keyArenaB = _root.saveGlobal[curKey];
            }
         }
         if(curKey.indexOf("keyPong") != -1)
         {
            if(_root.saveGlobal.keyPongUp1 == downKey)
            {
               _root.saveGlobal.keyPongUp1 = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyPongUp2 == downKey)
            {
               _root.saveGlobal.keyPongUp2 = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyPongDown1 == downKey)
            {
               _root.saveGlobal.keyPongDown1 = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyPongDown2 == downKey)
            {
               _root.saveGlobal.keyPongDown2 = _root.saveGlobal[curKey];
            }
         }
         if(curKey.indexOf("keyMmr") != -1)
         {
            if(_root.saveGlobal.keyMmrLeft1 == downKey)
            {
               _root.saveGlobal.keyMmrLeft1 = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyMmrLeft2 == downKey)
            {
               _root.saveGlobal.keyMmrLeft2 = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyMmrDown1 == downKey)
            {
               _root.saveGlobal.keyMmrDown1 = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyMmrDown2 == downKey)
            {
               _root.saveGlobal.keyMmrDown2 = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyMmrRight1 == downKey)
            {
               _root.saveGlobal.keyMmrRight1 = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyMmrRight2 == downKey)
            {
               _root.saveGlobal.keyMmrRight2 = _root.saveGlobal[curKey];
            }
         }
         if(curKey.indexOf("keyBal") != -1)
         {
            if(_root.saveGlobal.keyBalLeft1 == downKey)
            {
               _root.saveGlobal.keyBalLeft1 = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyBalLeft2 == downKey)
            {
               _root.saveGlobal.keyBalLeft2 = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyBalDown1 == downKey)
            {
               _root.saveGlobal.keyBalDown1 = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyBalDown2 == downKey)
            {
               _root.saveGlobal.keyBalDown2 = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyBalRight1 == downKey)
            {
               _root.saveGlobal.keyBalRight1 = _root.saveGlobal[curKey];
            }
            if(_root.saveGlobal.keyBalRight2 == downKey)
            {
               _root.saveGlobal.keyBalRight2 = _root.saveGlobal[curKey];
            }
         }
         _root.saveGlobal[curKey] = downKey;
         curKey = "";
      }
   }
};
