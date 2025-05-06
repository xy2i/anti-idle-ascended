//! status=pending
on(release){
   if(_root.save.stadiumToken >= 25000 && _root.save.boostPotion < 9999)
   {
      _root.save.stadiumToken -= 25000;
      _root.save.boostPotion += 1;
      _root.dispNews(98,"Regular Boost Potion purchased! (-25,000 Stadium Tokens)");
   }
}


onClipEvent(enterFrame){
   checkAlpha();
}


onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.stadiumToken >= 25000 && _root.save.boostPotion < 9999)
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


