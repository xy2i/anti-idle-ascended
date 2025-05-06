//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Use 1 Random Career Potion to bless a random Career for 30 minutes?";
}


on(release){
   if(_root.save.careerPotion > 0)
   {
      _root.save.careerPotion -= 1;
      targetCareer = random(12) + 1;
      _root.save.careerBoost[targetCareer] += 1800;
      if(_root.save.careerBoost[targetCareer] > 360000)
      {
         _root.save.careerBoost[targetCareer] = 360000;
      }
      _root.gainCareerEXP(targetCareer,1000 + _root.save.careerLevel[targetCareer] * 5,false);
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
      if(_root.save.careerPotion > 0)
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


