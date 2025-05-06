//! status=pending
Xloc = Math.round(_X / 10) + 1;
Yloc = Math.round(_Y / 10);
loc = Xloc + Yloc * 6;
onEnterFrame = function()
{
   if(_root.dungeonRoomChest[loc] == 1 && _root.dungeonChestOpen >= 1)
   {
      chestDisp.gotoAndStop(2);
   }
   else
   {
      chestDisp.gotoAndStop(1);
   }
   if(_root.dungeonRoom == loc)
   {
      fr = 2;
   }
   else if(_root.dungeonFinalRoom == loc)
   {
      fr = 6;
   }
   else if(_root.dungeonRoomClear[loc] != 1)
   {
      if(_root.dungeonRoomMob[loc] <= 16)
      {
         fr = 4;
      }
      else
      {
         fr = 5;
      }
   }
   else
   {
      fr = 1;
   }
   if(_root.dungeonChestOpen < 1)
   {
      if(fr != 2)
      {
         fr = 1;
      }
   }
   else if(_root.dungeonChestOpen < 2)
   {
      if(fr == 6)
      {
         fr = 1;
      }
      if(fr >= 4)
      {
         fr = 3;
      }
   }
   else if(_root.dungeonChestOpen < 3)
   {
      if(fr == 6)
      {
         fr = 1;
      }
   }
   if(_root.save.arenaZone == 78 && _root.endlessFloor % 5 != 0 && loc <= 6)
   {
      fr = 8;
   }
   gotoAndStop(fr);
};
