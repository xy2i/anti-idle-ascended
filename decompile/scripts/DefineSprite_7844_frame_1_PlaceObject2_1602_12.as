//! status=pending
on(dragOver,rollOver){
   focus = true;
   if(_root.fishArray[_parent.ID].fullness > 0)
   {
      _root.actiondescription = "Pet Fullness: <b>+" + _root.fishArray[_parent.ID].fullness + "</b>";
   }
   if(_alpha == 100)
   {
      if(_parent.ID >= 11)
      {
         _root.actiondescription += "\n\n<font color=\'#FF9900\'>Your pet can eat up to <b>" + _root.save.fishPetFishCooldown + "</b> more fish today.</font>";
      }
      else
      {
         _root.actiondescription += "\n\n<font color=\'#FF9900\'>Your pet can eat up to <b>" + _root.save.fishPetFoodCooldown + "</b> more Pet Food for full effect today.</font>";
      }
   }
}


on(release){
   doThis();
   if(_root.fishArray[_parent.ID].fullness > 0)
   {
      _root.actiondescription = "Pet Fullness: <b>+" + _root.fishArray[_parent.ID].fullness + "</b>";
   }
   if(_alpha == 100)
   {
      if(_parent.ID >= 11)
      {
         _root.actiondescription += "\n\n<font color=\'#FF9900\'>Your pet can eat up to <b>" + _root.save.fishPetFishCooldown + "</b> more fish today.</font>";
      }
      else
      {
         _root.actiondescription += "\n\n<font color=\'#FF9900\'>Your pet can eat up to <b>" + _root.save.fishPetFoodCooldown + "</b> more Pet Food for full effect today.</font>";
      }
   }
}


on(rollOut,dragOut){
   focus = false;
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   pl = Math.floor((_root.save.petStat[1] + _root.save.petStat[2] + _root.save.petStat[3] + _root.save.petStat[4] + _root.save.petStat[5] + _root.save.petStat[6] + _root.save.petStat[7] + _root.save.petStat[8]) / 8);
   petMax = 100 + Math.min(pl,100) + Math.max(Math.floor(pl * (pl - 100) / 25),0);
   if(_root.fishArray[_parent.ID].fullness > 0 && _root.save.petFullness < petMax && _root.save.petExist == 1 && _root.save.fishLeft[_parent.ID] > 0)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
   if(Key.isDown(16) && focus == true)
   {
      doThis();
      if(_root.fishArray[_parent.ID].fullness > 0)
      {
         _root.actiondescription = "Pet Fullness: <b>+" + _root.fishArray[_parent.ID].fullness + "</b>";
      }
      if(_alpha == 100)
      {
         if(_parent.ID >= 11)
         {
            _root.actiondescription += "\n\n<font color=\'#FF9900\'>Your pet can eat up to <b>" + _root.save.fishPetFishCooldown + "</b> more fish today.</font>";
         }
         else
         {
            _root.actiondescription += "\n\n<font color=\'#FF9900\'>Your pet can eat up to <b>" + _root.save.fishPetFoodCooldown + "</b> more Pet Food for full effect today.</font>";
         }
      }
   }
}


onClipEvent(load){
   function doThis()
   {
      pl = Math.floor((_root.save.petStat[1] + _root.save.petStat[2] + _root.save.petStat[3] + _root.save.petStat[4] + _root.save.petStat[5] + _root.save.petStat[6] + _root.save.petStat[7] + _root.save.petStat[8]) / 8);
      petMax = 100 + Math.min(pl,100) + Math.max(Math.floor(pl * (pl - 100) / 25),0);
      if(_root.fishArray[_parent.ID].fullness > 0 && _root.save.petFullness < petMax && _root.save.petExist == 1 && _root.save.fishLeft[_parent.ID] > 0)
      {
         eatable = false;
         penalty = false;
         if(_parent.ID >= 11 && _root.save.fishPetFishCooldown > 0)
         {
            eatable = true;
            _root.save.fishPetFishCooldown -= 1;
         }
         else if(_parent.ID <= 10)
         {
            if(_root.save.fishPetFoodCooldown > 0)
            {
               eatable = true;
               _root.save.fishPetFoodCooldown -= 1;
            }
            else
            {
               eatable = true;
               penalty = true;
            }
         }
         if(eatable == true)
         {
            _root.save.fishLeft[_parent.ID] -= 1;
            if(penalty != true)
            {
               _root.save.petFullness += _root.fishArray[_parent.ID].fullness;
            }
            else
            {
               _root.save.petFullness += Math.floor(_root.fishArray[_parent.ID].fullness * 0.2);
            }
            _parent.checkStat();
         }
      }
   }
   _alpha = 30;
   focus = false;
}


