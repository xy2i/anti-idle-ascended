//! status=pending
on(dragOver,rollOver){
   focus = true;
   if(_root.fishArray[_parent.ID].fatigue > 0)
   {
      _root.actiondescription = "Fatigue: <b>-" + _root.fishArray[_parent.ID].fatigue + "</b>\n";
   }
   if(_alpha == 100)
   {
      if(_parent.ID >= 11)
      {
         _root.actiondescription += "\n\n<font color=\'#FF9900\'>You can eat up to <b>" + _root.save.fishFoodCooldown + "</b> more fish today.</font>";
      }
      else
      {
         _root.actiondescription += "\n\n<font color=\'#FF9900\'>You can drink up to <b>" + _root.save.fishDrinkCooldown + "</b> more Energy Drink for full effect today.</font>";
      }
   }
}


on(release){
   doThis();
   if(_root.fishArray[_parent.ID].fatigue > 0)
   {
      _root.actiondescription = "Fatigue: <b>-" + _root.fishArray[_parent.ID].fatigue + "</b>\n";
   }
   if(_alpha == 100)
   {
      if(_parent.ID >= 11)
      {
         _root.actiondescription += "\n\n<font color=\'#FF9900\'>You can eat up to <b>" + _root.save.fishFoodCooldown + "</b> more fish today.</font>";
      }
      else
      {
         _root.actiondescription += "\n\n<font color=\'#FF9900\'>You can drink up to <b>" + _root.save.fishDrinkCooldown + "</b> more Energy Drink for full effect today.</font>";
      }
   }
}


on(rollOut,dragOut){
   focus = false;
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.fishArray[_parent.ID].fatigue > 0 && _root.save.fishFatigue >= 1 && _root.save.fishLeft[_parent.ID] > 0)
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
      if(_root.fishArray[_parent.ID].fatigue > 0)
      {
         _root.actiondescription = "Fatigue: <b>-" + _root.fishArray[_parent.ID].fatigue + "</b>\n";
      }
      if(_alpha == 100)
      {
         if(_parent.ID >= 11)
         {
            _root.actiondescription += "\n\n<font color=\'#FF9900\'>You can eat up to <b>" + _root.save.fishFoodCooldown + "</b> more fish today.</font>";
         }
         else
         {
            _root.actiondescription += "\n\n<font color=\'#FF9900\'>You can drink up to <b>" + _root.save.fishDrinkCooldown + "</b> more Energy Drink for full effect today.</font>";
         }
      }
   }
}


onClipEvent(load){
   function doThis()
   {
      if(_root.fishArray[_parent.ID].fatigue > 0 && _root.save.fishFatigue >= 1 && _root.save.fishLeft[_parent.ID] > 0)
      {
         eatable = false;
         penalty = false;
         if(_parent.ID >= 11 && _root.save.fishFoodCooldown > 0)
         {
            eatable = true;
            _root.save.fishFoodCooldown -= 1;
         }
         else if(_parent.ID <= 10)
         {
            if(_root.save.fishDrinkCooldown > 0)
            {
               eatable = true;
               _root.save.fishDrinkCooldown -= 1;
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
               _root.save.fishFatigue -= _root.fishArray[_parent.ID].fatigue;
            }
            else
            {
               _root.save.fishFatigue -= Math.floor(_root.fishArray[_parent.ID].fatigue * 0.2);
            }
            if(_root.save.fishFatigue < 0)
            {
               _root.save.fishFatigue = 0;
            }
            _parent.checkStat();
         }
      }
   }
   _alpha = 30;
   focus = false;
}


