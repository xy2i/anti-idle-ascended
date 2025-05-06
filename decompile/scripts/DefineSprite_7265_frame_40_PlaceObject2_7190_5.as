//! status=pending
on(release){
   _root.save.awesomeAuto[40] = 1;
   _parent.choice1();
}


onClipEvent(enterFrame){
   del += 1;
   tempText = "[1] " + _parent.choice1Text;
   if(tempText == "[1] ")
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(3);
   }
   choiceText.text = tempText;
   if(_root.house.holding[1] == 1 && del >= 2 || _root.house.holding[1] >= 30 && _root.house.holding[1] <= 24000)
   {
      _root.house.holding[1] += 1;
      _root.save.awesomeAuto[40] = 1;
      _parent.choice1();
   }
}


onClipEvent(load){
   del = 0;
}


