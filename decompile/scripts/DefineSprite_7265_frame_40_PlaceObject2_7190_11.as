//! status=pending
on(release){
   _root.save.awesomeAuto[40] = 4;
   _parent.choice4();
}


onClipEvent(enterFrame){
   del += 1;
   tempText = "[4] " + _parent.choice4Text;
   if(tempText == "[4] ")
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(3);
   }
   choiceText.text = tempText;
   if(_root.house.holding[4] == 1 && del >= 2 || _root.house.holding[4] >= 30 && _root.house.holding[4] <= 24000)
   {
      _root.house.holding[4] += 1;
      _root.save.awesomeAuto[40] = 4;
      _parent.choice4();
   }
}


onClipEvent(load){
   del = 0;
}


