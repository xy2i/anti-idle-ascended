//! status=pending
on(release){
   if(_root.save.arcade100kMedal >= 250 && _root.save.boostPotion < 9999)
   {
      _root.save.arcade100kMedal -= 250;
      _root.save.boostPotion += 1;
      _root.house.scoreMedalText.text = _root.withComma(_root.save.arcade100kMedal);
      _root.dispNews(98,"Regular Boost Potion purchased! (-250 Arcade 100k Medals)");
   }
}


onClipEvent(enterFrame){
   checkAlpha();
}


onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.arcade100kMedal >= 250 && _root.save.boostPotion < 9999)
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


