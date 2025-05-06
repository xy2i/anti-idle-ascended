//! status=pending
on(release){
   _root.save.awesomeAuto[40] = 2;
   _parent.choice2();
}


onClipEvent(enterFrame){
   del += 1;
   tempText = "[2] " + _parent.choice2Text;
   if(tempText == "[2] ")
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(3);
   }
   choiceText.text = tempText;
   if(_root.house.holding[2] == 1 && del >= 2 || _root.house.holding[2] >= 30 && _root.house.holding[2] <= 24000)
   {
      _root.house.holding[2] += 1;
      _root.save.awesomeAuto[40] = 2;
      _parent.choice2();
   }
}


onClipEvent(load){
   del = 0;
}


