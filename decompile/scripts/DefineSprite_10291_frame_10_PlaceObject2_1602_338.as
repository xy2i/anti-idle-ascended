//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Use 5 Mega Career Potions to bless this Career for 24 hours and greatly increase its Career EXP?";
}


on(release){
   if(_root.save.megaCareerPotion >= 5)
   {
      _root.save.megaCareerPotion -= 5;
      targetCareer = 12;
      _root.save.careerBoost[targetCareer] += 86400;
      if(_root.save.careerBoost[targetCareer] > 360000)
      {
         _root.save.careerBoost[targetCareer] = 360000;
      }
      _root.gainCareerEXP(targetCareer,50000 + _root.save.careerLevel[targetCareer] * 250,false);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   checkAlpha();
}


onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.megaCareerPotion >= 5)
      {
         _alpha = 100;
      }
      else
      {
         _alpha = 30;
      }
   }
   checkAlpha();
}


