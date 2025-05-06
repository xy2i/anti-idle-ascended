//! status=pending
on(release){
   if(_currentframe == 3)
   {
      _root.save.awesomeAuto[_parent._currentframe] = 3;
   }
   _parent.choice2();
}


onClipEvent(enterFrame){
   del += 1;
   tempText = "[3] " + _parent.choice2Text;
   if(tempText == "[3] ")
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(3);
   }
   choiceText.text = tempText;
   if(_root.house.holding[3] == 1 && del >= 2 || _root.house.holding[3] >= 30)
   {
      _root.house.holding[3] += 1;
      if(_currentframe == 3)
      {
         _root.save.awesomeAuto[_parent._currentframe] = 3;
      }
      _parent.choice2();
   }
}


onClipEvent(load){
   del = 0;
}


