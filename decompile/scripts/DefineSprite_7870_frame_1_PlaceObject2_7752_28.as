//! status=pending
onClipEvent(enterFrame){
   reqExp = 200 * _root.save.fishLevel * _root.save.fishLevel + 800 * _root.save.fishLevel;
   if(_root.save.fishLevel >= 30)
   {
      reqExp = 50000 + (_root.save.fishLevel - 30) * 10000;
   }
   if(_root.save.fishLevel >= 50)
   {
      reqExp = 9999999;
   }
   targetScale = _root.save.fishExp / reqExp * 100;
   if(_root.save.fishLevel >= 50)
   {
      targetScale = 100;
   }
   if(_root.save.fishLevel >= 30 && _root.save.fishLevel < 50)
   {
      if(_root.save.fishExp >= reqExp)
      {
         _root.save.fishExp -= reqExp;
         _root.save.fishTotalExp += reqExp;
         _root.save.fishLevel += 1;
         if(_root.save.fishBestLevel < _root.save.fishLevel)
         {
            _root.save.fishBestLevel = _root.save.fishLevel;
         }
         _root.dispNews(120,"Your Fishing Skill is now " + _root.save.fishLevel + "!");
      }
   }
   _parent.reqExp = reqExp;
   if(_root.save.fishExp >= reqExp && _root.save.fishLevel < 30)
   {
      _root.save.fishExp = reqExp;
      _parent.ready = true;
   }
   else
   {
      _parent.ready = false;
   }
   _xscale = _xscale + (targetScale - _xscale) / 5;
   _parent.expText.text = _root.withComma(_root.save.fishExp) + " / " + _root.withComma(reqExp);
   if(_root.save.fishLevel >= 50)
   {
      _parent.expText.text = _root.withComma(_root.save.fishExp);
   }
   if(_root.save.fishFatigue < 0)
   {
      _root.save.fishFatigue = 0;
   }
   _parent.fatigueText.text = _root.withComma(_root.save.fishFatigue) + " / 5,000";
}


onClipEvent(load){
   _xscale = 0;
}


