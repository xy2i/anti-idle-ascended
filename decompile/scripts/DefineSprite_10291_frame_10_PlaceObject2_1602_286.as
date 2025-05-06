//! status=pending
on(release){
   if(_root.save.megaCareerPotion >= 1 && _root.save.careerPotion < 9999)
   {
      _root.save.megaCareerPotion -= 1;
      _root.save.careerPotion += 19;
   }
}


onClipEvent(enterFrame){
   checkAlpha();
}


onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.megaCareerPotion >= 1 && _root.save.careerPotion < 9999)
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


