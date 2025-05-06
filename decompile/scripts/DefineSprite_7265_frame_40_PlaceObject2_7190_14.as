//! status=pending
on(release){
   _root.save.awesomeAuto[40] = 3;
   _parent.choice3();
}


onClipEvent(enterFrame){
   del += 1;
   tempText = "[3] " + _parent.choice3Text;
   if(tempText == "[3] ")
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(3);
   }
   choiceText.text = tempText;
   if(_root.house.holding[3] == 1 && del >= 2 || _root.house.holding[3] >= 30 && _root.house.holding[3] <= 24000)
   {
      _root.house.holding[3] += 1;
      _root.save.awesomeAuto[40] = 3;
      _parent.choice3();
   }
}


onClipEvent(load){
   del = 0;
}


