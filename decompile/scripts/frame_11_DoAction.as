//! status=pending
function loadKongpanion()
{
   trace("LOADING KONGPANIONS...");
   _root.kpaName = [zeroItem];
   _root.kpaSeed = [zeroItem];
   _root.kpaOwned = [zeroItem];
   _root.kpaShiny = [zeroItem];
   _root.kpaCount = 0;
   _root.suc1 = false;
   _root.suc2 = false;
   kpa = new LoadVars();
   kpa.onData = function(src)
   {
      _root.suc1 = true;
      src2 = src.split("{");
      src3 = new Array();
      if(isNaN(src2.length) || src2.length > 99999)
      {
         trace("ERROR");
      }
      else
      {
         trace("\nKONGPANION LIST LOADED! (" + (src2.length - 2) + ")");
         var _loc3_ = 0;
         while(_loc3_ < src2.length)
         {
            src3 = src2[_loc3_].split(",\"");
            if(src3[0].indexOf("name\":") != -1)
            {
               tempID = -1;
               var _loc4_ = 1;
               while(_loc4_ < src3.length)
               {
                  if(src3[_loc4_].indexOf("id\":") == 0)
                  {
                     tempID = src3[_loc4_].substring(4,src3[_loc4_].length - 2);
                     tempID *= 1;
                  }
                  _loc4_ = _loc4_ + 1;
               }
               if(tempID >= 1 && tempID <= 4500)
               {
                  if(_root.kpaCount < tempID)
                  {
                     _root.kpaCount = tempID;
                  }
                  _root.kpaName[tempID] = src3[0].substring(8,src3[0].length - 1);
                  if(tempID == 114)
                  {
                     _root.kpaName[tempID] = "Felicette";
                  }
                  _root.kpaSeed[tempID] = _root.getKpaValue(kpaName[tempID]);
                  _root.enemyList[500 + tempID].name = kpaName[tempID];
                  if(_root.kpaSeed[tempID] % 5 == 0)
                  {
                     _root.enemyList[500 + tempID].allyPassive1 = "Spawn Rate";
                     _root.enemyList[500 + tempID].allyPassive1X = 2;
                  }
                  if(_root.kpaSeed[tempID] % 4 == 0)
                  {
                     _root.enemyList[500 + tempID].allyPassive1 = "Coin";
                     _root.enemyList[500 + tempID].allyPassive1X = 10;
                  }
                  else if(_root.kpaSeed[tempID] % 3 == 0)
                  {
                     _root.enemyList[500 + tempID].allyPassive1 = "Drop Rate";
                     _root.enemyList[500 + tempID].allyPassive1X = 10;
                  }
                  else if(_root.kpaSeed[tempID] % 2 == 0)
                  {
                     _root.enemyList[500 + tempID].allyPassive1 = "EXP";
                     _root.enemyList[500 + tempID].allyPassive1X = 10;
                  }
                  else
                  {
                     _root.enemyList[500 + tempID].allyPassive1 = "Pixel";
                     _root.enemyList[500 + tempID].allyPassive1X = 10;
                  }
                  if(_root.kpaSeed[tempID] % 19 == 0)
                  {
                     _root.enemyList[500 + tempID].allyPassive2 = "Boss Damage";
                     _root.enemyList[500 + tempID].allyPassive2X = 10;
                  }
                  else if(_root.kpaSeed[tempID] % 17 == 0)
                  {
                     _root.enemyList[500 + tempID].allyPassive2 = "Non-Boss Damage";
                     _root.enemyList[500 + tempID].allyPassive2X = 10;
                  }
                  else if(_root.kpaSeed[tempID] % 13 == 0)
                  {
                     _root.enemyList[500 + tempID].allyPassive2 = "Negate Effect";
                     _root.enemyList[500 + tempID].allyPassive2X = 10;
                  }
                  else if(_root.kpaSeed[tempID] % 11 == 0)
                  {
                     _root.enemyList[500 + tempID].allyPassive2 = "Potion Efficiency";
                     _root.enemyList[500 + tempID].allyPassive2X = 50;
                  }
                  else if(_root.kpaSeed[tempID] % 7 == 0)
                  {
                     _root.enemyList[500 + tempID].allyPassive2 = "Hit Chance";
                     _root.enemyList[500 + tempID].allyPassive2X = 10;
                  }
                  else if(_root.kpaSeed[tempID] % 6 == 0)
                  {
                     _root.enemyList[500 + tempID].allyPassive2 = "Dodge Chance";
                     _root.enemyList[500 + tempID].allyPassive2X = 10;
                  }
                  else if(_root.kpaSeed[tempID] % 4 == 0)
                  {
                     _root.enemyList[500 + tempID].allyPassive2 = "Mastery";
                     _root.enemyList[500 + tempID].allyPassive2X = 10;
                  }
                  else
                  {
                     _root.enemyList[500 + tempID].allyPassive2 = "Damage";
                     _root.enemyList[500 + tempID].allyPassive2X = 6;
                  }
                  if((_root.kpaSeed[tempID] + tempID) % 2 == 0)
                  {
                     _root.enemyList[500 + tempID].allyPassive1X *= 2;
                  }
                  else
                  {
                     _root.enemyList[500 + tempID].allyPassive2X *= 2;
                  }
                  if(_root.kpaSeed[tempID] % 19 == 3)
                  {
                     _root.enemyList[500 + tempID].allyPassive3 = "MaxHP %";
                     _root.enemyList[500 + tempID].allyPassive3X = 25;
                  }
                  else if(_root.kpaSeed[tempID] % 17 == 3)
                  {
                     _root.enemyList[500 + tempID].allyPassive3 = "MaxMP %";
                     _root.enemyList[500 + tempID].allyPassive3X = 25;
                  }
                  else if(_root.kpaSeed[tempID] % 13 == 3)
                  {
                     _root.enemyList[500 + tempID].allyPassive3 = "Accuracy %";
                     _root.enemyList[500 + tempID].allyPassive3X = 25;
                  }
                  else if(_root.kpaSeed[tempID] % 11 == 3)
                  {
                     _root.enemyList[500 + tempID].allyPassive3 = "Evasion %";
                     _root.enemyList[500 + tempID].allyPassive3X = 25;
                  }
                  else if(_root.kpaSeed[tempID] % 7 == 3)
                  {
                     _root.enemyList[500 + tempID].allyPassive3 = "Attack %";
                     _root.enemyList[500 + tempID].allyPassive3X = 25;
                  }
                  else if(_root.kpaSeed[tempID] % 5 == 3)
                  {
                     _root.enemyList[500 + tempID].allyPassive3 = "Defense %";
                     _root.enemyList[500 + tempID].allyPassive3X = 25;
                  }
                  else
                  {
                     _root.enemyList[500 + tempID].allyPassive3 = "Reward";
                     _root.enemyList[500 + tempID].allyPassive3X = 5;
                  }
                  if(_root.kpaSeed[tempID] % 3 == 0)
                  {
                     _root.enemyList[500 + tempID].allyActive1 = "Attack: Weaken";
                  }
                  else if(_root.kpaSeed[tempID] % 3 == 1)
                  {
                     _root.enemyList[500 + tempID].allyActive1 = "Attack: Blind";
                  }
                  if(_root.kpaSeed[tempID] % 5 == 0)
                  {
                     _root.enemyList[500 + tempID].allyActive2 = "Buff: Power";
                  }
                  else if(_root.kpaSeed[tempID] % 5 == 1)
                  {
                     _root.enemyList[500 + tempID].allyActive2 = "Buff: Master";
                  }
                  else if(_root.kpaSeed[tempID] % 5 == 2)
                  {
                     _root.enemyList[500 + tempID].allyActive2 = "Buff: Enrage";
                     _root.enemyList[500 + tempID].allyActive2X = 30;
                  }
                  else if(_root.kpaSeed[tempID] % 5 == 3)
                  {
                     _root.enemyList[500 + tempID].allyActive2 = "Buff: Elemental Boost";
                     _root.enemyList[500 + tempID].allyActive2X = 30;
                  }
                  if(_root.kpaSeed[tempID] % 4 == 0)
                  {
                     _root.enemyList[500 + tempID].allyActive1Z = 20;
                  }
                  else if(_root.kpaSeed[tempID] % 4 == 1)
                  {
                     _root.enemyList[500 + tempID].allyActive2Z = 60;
                  }
                  else if(_root.kpaSeed[tempID] % 4 == 2)
                  {
                     _root.enemyList[500 + tempID].allyActive3Z = 120;
                  }
                  else if(_root.kpaSeed[tempID] % 4 == 3)
                  {
                     _root.enemyList[500 + tempID].allyActive1Z = 25;
                     _root.enemyList[500 + tempID].allyActive2Z = 65;
                     _root.enemyList[500 + tempID].allyActive3Z = 125;
                  }
               }
            }
            _loc3_ = _loc3_ + 1;
         }
         if(_root.kpaChip != true && _root.kongregate_username != "Guest")
         {
            _root.kpaChip = true;
         }
      }
   };
   kpa.load("http://api.kongregate.com/api/kongpanions/index/");
   kpau = new LoadVars();
   kpau.onData = function(srcu)
   {
      _root.suc2 = true;
      srcu2 = srcu.split("{");
      srcu3 = new Array();
      if(isNaN(srcu2.length) || srcu2.length > 99999)
      {
         trace("ERROR");
      }
      else
      {
         trace("\nPLAYER KONGPANION LIST LOADED! (" + (srcu2.length - 2) + ")");
         i = 0;
         while(i < srcu2.length)
         {
            srcu3 = srcu2[i].split(",\"");
            if(srcu3[0].indexOf("name\":") != -1)
            {
               tempShiny = false;
               tempID = -1;
               j = 1;
               while(j < srcu3.length)
               {
                  if(srcu3[j].indexOf("id\":") == 0)
                  {
                     tempID = srcu3[j].substring(4,srcu3[j].length - 2);
                     tempID *= 1;
                     if(tempID >= 1 && tempID <= 4500)
                     {
                        _root.kpaOwned[tempID] = true;
                     }
                  }
                  j++;
               }
               if(tempID >= 1 && tempID <= 4500)
               {
                  j = 1;
                  while(j < srcu3.length)
                  {
                     if(srcu3[j].indexOf("shiny\":") == 0)
                     {
                        tempB = srcu3[j].substring(7,srcu3[j].length);
                        if(tempB == "true")
                        {
                           _root.kpaShiny[tempID] = true;
                        }
                     }
                     j++;
                  }
               }
            }
            i++;
         }
      }
   };
   ku = _root.kongregate_username;
   if(ku == undefined)
   {
      ku = "Tukkun";
   }
   kpau.load("http://api.kongregate.com/api/kongpanions.json?username=" + ku);
}
function selectSavefile(sid)
{
   if(sid <= 4)
   {
      _root.saveid = sid;
      _root.gotoAndStop(19);
   }
   else if(sid == 5)
   {
      _root.challengeMode.gotoAndStop(2);
   }
}
stop();
_root.actualKpaCount = 0;
_root.actualShinyKpaCount = 0;
testVersion = false;
if(testVersion == true)
{
   _root.save.noobMode = true;
   _root.save.noobMode2 = true;
   _root.saveGlobal.adminMode = "TEST VERSION";
}
onEnterFrame = null;
tb1.text = _root.saveGlobal.playTime[0];
tb2.text = _root.saveGlobal.curLevel[0];
tb3.text = _root.saveGlobal.ascCount[0];
tb4.text = _root.saveGlobal.playTime[1];
tb5.text = _root.saveGlobal.curLevel[1];
tb6.text = _root.saveGlobal.ascCount[1];
tb7.text = _root.saveGlobal.playTime[2];
tb8.text = _root.saveGlobal.curLevel[2];
tb9.text = _root.saveGlobal.ascCount[2];
tb10.text = _root.saveGlobal.playTime[3];
tb11.text = _root.saveGlobal.curLevel[3];
tb12.text = _root.saveGlobal.ascCount[3];
chalCount = 0;
i = 1;
while(i <= 6)
{
   if(!isNaN(_root.saveGlobal.challengeTime[i]))
   {
      chalCount += 1;
   }
   i++;
}
tb13.text = chalCount + " / 6 completed";
if(_root.autoStart == true && _root.saveGlobal.skipMenu == true)
{
   _root.selectSavefile(_root.saveGlobal.selectedSave);
   _root.autoStart = false;
}
