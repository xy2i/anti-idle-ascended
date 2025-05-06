//! status=pending
on(dragOver,rollOver){
   if(_root.maxHealth == 19999999)
   {
      _root.actiondescription += "<b><font color=\'#FFFF00\'>Extra MP and Spirit from HP</font></b>";
      _root.actiondescription += "\n\nYou gain extra Maximum MP and Spirit from every HP over the limit!\n\nMana or Spirit Power has to be active to gain this bonus.";
      _root.actiondescription += "\n\nExtra Mana: <b><font color=\'#FFFF00\'>" + _root.withComma(Math.max(_root.qolManaToGain,0)) + "</font></b>";
      _root.actiondescription += "\nExtra Spirit: <b><font color=\'#FFFF00\'>" + _root.withComma(Math.max(_root.qolSpiritToGain,0)) + "</font></b>";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   del += 1;
   if(del >= 20)
   {
      del = 0;
      if(_root.save.arenaHealth < Math.floor(_root.maxHealth / 2))
      {
         flashing = true;
      }
      else if(_alpha == 0)
      {
         flashing = false;
      }
      if(flashing == true)
      {
         time += 1;
         if(time >= 1)
         {
            _alpha = 100;
         }
         if(time >= 2)
         {
            _alpha = 0;
            time = 0;
         }
      }
   }
}


onClipEvent(load){
   _alpha = 0;
   flashing = false;
   time = 0;
   del = 0;
}


