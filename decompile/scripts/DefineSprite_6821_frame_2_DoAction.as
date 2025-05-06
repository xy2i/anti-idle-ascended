//! status=pending
_root.actiondescription = "";
checkGlobal();
fpsBlah = 0;
onEnterFrame = function()
{
   scoreMedalText.text = _root.withComma(_root.save.arcade100kMedal);
   if(_root.fps < 10 && _currentframe >= 21 && _currentframe <= 30 && _root.save.rankedMode == true)
   {
      fpsBlah += 1;
      if(fpsBlah > 160)
      {
         fpsBlah = 160;
         gotoAndStop(15);
      }
   }
   else if(fpsBlah > 0)
   {
      fpsBlah -= 2;
   }
};
