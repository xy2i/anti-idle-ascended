//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Reset ALL Skill Points for FREE? You will lose all of your current skills and get your Skill Points back. Max skill levels remain the same.\n\n[Shift + Click to proceed]";
}


on(release){
   if(_root.save.arenaTotalSkill > 0 && Key.isDown(16))
   {
      _root.save.arenaSP = _root.save.arenaLevel * 20 + _root.save.arenaUltimateSP * 10;
      _root.save.arenaTotalSkill = 0;
      _root.save.arenaTotalSP = 0;
      i = 1;
      while(i <= 66)
      {
         if(_root.save.arenaSkill[i] > 0)
         {
            _root.save.arenaSkill[i] = 0;
         }
         i++;
      }
      _root.actiondescription = "Your skills have been reset.";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


