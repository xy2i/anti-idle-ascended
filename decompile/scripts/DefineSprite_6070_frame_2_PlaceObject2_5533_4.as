//! status=pending
on(release){
   if(_root.save.buttonPurple >= 250 && _root.save.boostPotion < 9999)
   {
      _root.save.buttonPurple -= 250;
      _root.save.boostPotion += 1;
      _root.dispNews(74,"Regular Boost Potion purchased! (-250 Purple Buttons)");
   }
}


onClipEvent(enterFrame){
   checkAlpha();
}


onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.buttonPurple >= 250 && _root.save.boostPotion < 9999)
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


