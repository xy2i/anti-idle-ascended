//! status=pending
on(release){
   if(_root.save.careerPotion >= 20 && _root.save.megaCareerPotion < 9999)
   {
      _root.save.careerPotion -= 20;
      _root.save.megaCareerPotion += 1;
   }
}


onClipEvent(enterFrame){
   checkAlpha();
}


onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.careerPotion >= 20 && _root.save.megaCareerPotion < 9999)
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


