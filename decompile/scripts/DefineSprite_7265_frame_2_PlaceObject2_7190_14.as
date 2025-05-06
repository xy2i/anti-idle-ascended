//! status=pending
on(release){
   if(_currentframe == 3)
   {
      _root.save.awesomeAuto[_parent._currentframe] = 5;
   }
   _parent.choice4();
}


onClipEvent(enterFrame){
   del += 1;
   tempText = "[5] " + _parent.choice4Text;
   if(tempText == "[5] ")
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(3);
   }
   choiceText.text = tempText;
   if(_root.house.holding[5] == 1 && del >= 2 || _root.house.holding[5] >= 30)
   {
      _root.house.holding[5] += 1;
      if(_currentframe == 3)
      {
         _root.save.awesomeAuto[_parent._currentframe] = 5;
      }
      _parent.choice4();
   }
}


onClipEvent(load){
   del = 0;
}


