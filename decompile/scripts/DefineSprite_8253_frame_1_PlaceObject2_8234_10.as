//! status=pending
on(dragOver,rollOver){
   if(_root.save.featureDoomSprayer == true)
   {
      if(_root.sprayCooldown2 <= 0)
      {
         _root.actiondescription = "<b><font color=\'#FFFF00\'>Doom Ant Sprayer</font></b>\nClick here to spray those annoying ants. Doom Ant Sprayer sprays ALL ants, including non-existent ones, and stops them from coming back for 1 minute!\n\nCooldown: 600 seconds";
      }
      else
      {
         _root.actiondescription = "<b><font color=\'#FFFF00\'>Doom Ant Sprayer</font></b>\nDoom Ant Sprayer sprays ALL ants, including non-existent ones, and stops them from coming back for 1 minute!\n\nCooldown: 600 seconds\n\nYou can use Doom Ant Sprayer again in " + _root.sprayCooldown2 + " sec.";
      }
   }
   else
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Doom Ant Sprayer</font></b>\nYou need to purchase Doom Ant Sprayer in the Feature Shop to use this. Doom Ant Sprayer is more effective than Manual Ant Sprayer.";
   }
}


on(release){
   _root.actiondescription = "";
   if(_root.save.featureDoomSprayer == true)
   {
      if(_root.sprayCooldown2 <= 0 && _root.save.ants > 0)
      {
         _root.sprayCooldown2 = 600;
         _root.save.antsSprayed += _root.save.ants + 99;
         _root.save.ants = -99;
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


