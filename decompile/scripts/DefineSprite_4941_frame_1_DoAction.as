//! status=pending
stop();
onEnterFrame = function()
{
   if(_root.save.arenaZone != 24 || _root.raidDiff != 3)
   {
      fr = 2;
   }
   else
   {
      fr = 2;
      if(_parent.enemy.enemyID != 0 && _root.areaDefendStage <= 4)
      {
         fr = 3;
         _X = Math.ceil(_parent.enemy._x + 30);
         if(_X > 380)
         {
            _X = 380;
         }
         if(spawnPending == true)
         {
            spawnPending = false;
            if(_root.areaDefendStage == 1 && _root.areaDefendProgress == 0)
            {
               zLeft = 2;
               xLeft = 6;
               arr1 = new Array();
               i = 0;
               while(i <= 14)
               {
                  arr1[i] = "C";
                  i++;
               }
               while(zLeft > 0)
               {
                  tmp = random(15);
                  if(arr1[tmp] == "C")
                  {
                     arr1[tmp] = "Z";
                     zLeft -= 1;
                  }
               }
               while(xLeft > 0)
               {
                  tmp = random(15);
                  if(arr1[tmp] == "C")
                  {
                     arr1[tmp] = "X";
                     xLeft -= 1;
                  }
               }
               zLeft = 3;
               xLeft = 12;
               arr2 = new Array();
               i = 0;
               while(i <= 34)
               {
                  arr2[i] = "C";
                  i++;
               }
               while(zLeft > 0)
               {
                  tmp = random(35);
                  if(arr2[tmp] == "C")
                  {
                     arr2[tmp] = "Z";
                     zLeft -= 1;
                  }
               }
               while(xLeft > 0)
               {
                  tmp = random(35);
                  if(arr2[tmp] == "C")
                  {
                     arr2[tmp] = "X";
                     xLeft -= 1;
                  }
               }
            }
            if(_root.areaDefendStage == 1)
            {
               if(arr1[_root.areaDefendProgress] == "Z")
               {
                  timeZ = 999999;
                  timeX = -999999;
                  timeC = -999999;
               }
               else if(arr1[_root.areaDefendProgress] == "X")
               {
                  timeZ = -999999;
                  timeX = 999999;
                  timeC = -999999;
               }
               else if(arr1[_root.areaDefendProgress] == "C")
               {
                  timeZ = -999999;
                  timeX = -999999;
                  timeC = 999999;
               }
            }
            else if(_root.areaDefendStage == 2)
            {
               if(arr2[_root.areaDefendProgress] == "Z")
               {
                  timeZ = 999999;
                  timeX = -999999;
                  timeC = -999999;
                  if(Math.random() < 0.5)
                  {
                     timeX = 80 + random(40);
                  }
                  else
                  {
                     timeC = 80 + random(40);
                  }
               }
               else if(arr2[_root.areaDefendProgress] == "X")
               {
                  timeZ = -999999;
                  timeX = 999999;
                  timeC = -999999;
                  if(Math.random() < 0.5)
                  {
                     timeZ = 80 + random(40);
                  }
                  else
                  {
                     timeC = 80 + random(40);
                  }
               }
               else if(arr2[_root.areaDefendProgress] == "C")
               {
                  timeZ = -999999;
                  timeX = -999999;
                  timeC = 999999;
                  if(Math.random() < 0.5)
                  {
                     timeZ = 80 + random(40);
                  }
                  else
                  {
                     timeX = 80 + random(40);
                  }
               }
            }
            else if(_root.areaDefendStage == 3)
            {
               timeZ = -999999;
               timeX = 120;
               timeC = 120;
               if(Math.random() < 0.5)
               {
                  timeX += 80;
               }
               else
               {
                  timeC += 80;
               }
            }
            else if(_root.areaDefendStage == 4)
            {
               timeZ = 100;
               timeX = -999999;
               timeC = 100;
               if(Math.random() < 0.5)
               {
                  timeZ += 100;
               }
               else
               {
                  timeC += 100;
               }
            }
         }
         timeZ -= 1;
         timeX -= 1;
         timeC -= 1;
         if(_root.areaDefendStage == 3)
         {
            if(timeX <= -80)
            {
               timeX += 200;
            }
            if(timeC <= -80)
            {
               timeC += 200;
            }
         }
         if(_root.areaDefendStage == 4)
         {
            if(timeZ <= -200)
            {
               timeZ += 300;
            }
            if(timeC <= -200)
            {
               timeC += 300;
            }
         }
         if(timeZ <= -999999)
         {
            lightZ.gotoAndStop(4);
         }
         else if(timeZ <= 0)
         {
            lightZ.gotoAndStop(3);
         }
         else if(timeZ <= 60)
         {
            lightZ.gotoAndStop(2);
         }
         else
         {
            lightZ.gotoAndStop(5);
         }
         if(timeX <= -999999)
         {
            lightX.gotoAndStop(4);
         }
         else if(timeX <= 0)
         {
            lightX.gotoAndStop(3);
         }
         else if(timeX <= 60)
         {
            lightX.gotoAndStop(2);
         }
         else
         {
            lightX.gotoAndStop(5);
         }
         if(timeC <= -999999)
         {
            lightC.gotoAndStop(4);
         }
         else if(timeC <= 0)
         {
            lightC.gotoAndStop(3);
         }
         else if(timeC <= 60)
         {
            lightC.gotoAndStop(2);
         }
         else
         {
            lightC.gotoAndStop(5);
         }
      }
      else
      {
         spawnPending = true;
      }
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
};
