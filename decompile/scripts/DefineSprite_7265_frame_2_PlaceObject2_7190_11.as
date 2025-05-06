//! status=pending
on(release){
   if(_currentframe == 3)
   {
      _root.save.awesomeAuto[_parent._currentframe] = 4;
   }
   _parent.choice3();
}


onClipEvent(enterFrame){
   del += 1;
   tempText = "[4] " + _parent.choice3Text;
   if(tempText == "[4] ")
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(3);
   }
   choiceText.text = tempText;
   if(_root.house.holding[4] == 1 && del >= 2 || _root.house.holding[4] >= 30)
   {
      _root.house.holding[4] += 1;
      if(_currentframe == 3)
      {
         _root.save.awesomeAuto[_parent._currentframe] = 4;
      }
      _parent.choice3();
   }
}


onClipEvent(load){
   del = 0;
}


