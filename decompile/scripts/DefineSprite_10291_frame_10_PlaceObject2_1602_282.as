//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Use 1 Mega Career Potion to bless all Careers for 60 minutes?";
}


on(release){
   if(_root.save.megaCareerPotion > 0)
   {
      _root.save.megaCareerPotion -= 1;
      i = 1;
      while(i <= 12)
      {
         _root.save.careerBoost[i] += 3600;
         if(_root.save.careerBoost[i] > 360000)
         {
            _root.save.careerBoost[i] = 360000;
         }
         _root.gainCareerEXP(i,1000 + _root.save.careerLevel[i] * 5,false);
         i++;
      }
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
      if(_root.save.megaCareerPotion >= 1)
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


