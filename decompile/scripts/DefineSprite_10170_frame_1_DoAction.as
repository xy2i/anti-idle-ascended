//! status=pending
ind = Math.round((_X - 15) / 210) * 8 + Math.round(_Y / 55);
if(_parent._currentframe == 38)
{
   ind += 24;
}
trueInd = _root.save.arenaEvent * 100 + ind;
pointText.text = _root.withComma(_parent.rewardArray[ind]);
if(ind == 32)
{
   if(_root.systemtimenow < _root.eventEndTime[_root.save.arenaEvent] || _parent.rewardArray[ind] >= 1000000)
   {
      pointText.text = "???,???";
   }
}
prizeType = _parent.rewardTypeArray[ind];
prizeIn.gotoAndStop(prizeType);
if(_root.save.arenaEventReward[trueInd] == true)
{
   ol.gotoAndStop(3);
   if(ind == 32)
   {
      ol.gotoAndStop(7);
   }
}
else if(_root.save.arenaEventPoint[_root.save.arenaEvent] >= _parent.rewardArray[ind])
{
   ol.gotoAndStop(2);
   if(ind == 32)
   {
      ol.gotoAndStop(6);
      if(pointText.text == "???,???")
      {
         ol.gotoAndStop(8);
      }
   }
   if(ind >= 25 && ind <= 29)
   {
      ol.gotoAndStop(4);
   }
}
else
{
   ol.gotoAndStop(1);
   if(ind == 32)
   {
      ol.gotoAndStop(5);
      if(pointText.text == "???,???")
      {
         ol.gotoAndStop(8);
      }
   }
}
onRelease = function()
{
   if(_root.save.arenaEventPoint[_root.save.arenaEvent] >= _parent.rewardArray[ind] && _root.save.arenaEventReward[trueInd] != true && pointText.text != "???,???")
   {
      if(prizeType <= 13 || prizeType >= 20)
      {
         if(prizeType == 1)
         {
            _root.save.shinyToken += 50;
         }
         else if(prizeType == 2)
         {
            _root.save.shinyToken += 150;
         }
         else if(prizeType == 3)
         {
            _root.save.shinyToken += 300;
         }
         else if(prizeType == 4)
         {
            _root.save.shinyToken += 500;
         }
         else if(prizeType == 5)
         {
            _root.gainWhiteCoinB(500,7);
         }
         else if(prizeType == 6)
         {
            _root.gainWhiteCoinB(1500,7);
         }
         else if(prizeType == 7)
         {
            _root.gainWhiteCoinB(3000,7);
         }
         else if(prizeType == 8)
         {
            _root.gainWhiteCoinB(5000,7);
         }
         else if(prizeType == 9)
         {
            _root.save.mysteryBox[5] += 1000;
         }
         else if(prizeType == 10)
         {
            _root.save.mysteryBox[5] += 3000;
         }
         else if(prizeType == 11)
         {
            _root.save.mysteryBox[5] += 6000;
         }
         else if(prizeType == 12)
         {
            _root.save.botPill += 1;
         }
         else if(prizeType == 13)
         {
            _root.save.mysteryBox[10] += 10;
         }
         else if(prizeType == 20)
         {
            _root.save.botPill += 2;
         }
         else if(prizeType == 21)
         {
            _root.save.botPill += 3;
         }
         else if(prizeType == 22)
         {
            _root.save.mysteryBox[10] += 100;
         }
         else if(prizeType == 23)
         {
            _root.gainWhiteCoinB(10000,7);
         }
         else if(prizeType == 24)
         {
            _root.save.shinyToken += 1000;
         }
         _root.save.arenaEventReward[trueInd] = true;
         ol.gotoAndStop(3);
         if(ind == 32)
         {
            ol.gotoAndStop(7);
         }
      }
      else if(prizeType == 14)
      {
         if(_root.emptyWeaponSlot >= 1)
         {
            _root.save.arenaEventReward[trueInd] = true;
            ol.gotoAndStop(3);
            _root.getArenaWeapon(200,"Trophy",359 + _root.save.arenaEvent,false,1337,8,400,40,40,40,9999,0,9999,0,0,706,"EXP","Boss Damage","Attack Power",0,Infinity,true,true,true,false,false,20,"Technical Trophy #" + _root.save.arenaEvent + "","You have earned at least 15,000 Event Points in Technical Battleground #" + _root.save.arenaEvent + "! Congratulations!\n\nKeep this Trophy in your inventory for a +1% Drop Rate bonus.",true);
         }
         else
         {
            _root.showPopup("Error","Your weapon inventory is full.");
         }
      }
      else if(prizeType >= 15 && prizeType <= 19)
      {
         if(_root.emptyArmorSlot >= 1)
         {
            if(!(ind >= 25 && ind <= 29))
            {
               _root.save.arenaEventReward[trueInd] = true;
               ol.gotoAndStop(3);
            }
            if(prizeType == 15)
            {
               subt = "Hat";
            }
            else if(prizeType == 16)
            {
               subt = "Shirt";
            }
            else if(prizeType == 17)
            {
               subt = "Gloves";
            }
            else if(prizeType == 18)
            {
               subt = "Pants";
            }
            else if(prizeType == 19)
            {
               subt = "Shoes";
            }
            _root.getArenaArmor(120,subt,_root.eventArmorFrame[_root.save.arenaEvent],400,8,1600,40,40,40,1,0,1,0,0,0,"EXP","Attack","Attack Power",0,Infinity,false,false,true,false,false,18,_root.eventArmorName[_root.save.arenaEvent] + " " + subt,"A special prize awarded to those who score high in Technical Battleground #" + _root.save.arenaEvent + ".",true);
         }
         else
         {
            _root.showPopup("Error","Your armor inventory is full.");
         }
      }
   }
};
