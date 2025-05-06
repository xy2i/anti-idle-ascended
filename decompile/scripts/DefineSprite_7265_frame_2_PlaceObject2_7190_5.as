//! status=pending
on(release){
   if(_currentframe == 3)
   {
      _root.save.awesomeAuto[_parent._currentframe] = 2;
   }
   _parent.choice1();
}


onClipEvent(enterFrame){
   del += 1;
   tempText = "[2] " + _parent.choice1Text;
   if(tempText == "[2] ")
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(3);
   }
   choiceText.text = tempText;
   if(_root.house.holding[2] == 1 && del >= 2 || _root.house.holding[2] >= 30)
   {
      _root.house.holding[2] += 1;
      if(_currentframe == 3)
      {
         _root.save.awesomeAuto[_parent._currentframe] = 2;
      }
      _parent.choice1();
   }
}


onClipEvent(load){
   del = 0;
}


