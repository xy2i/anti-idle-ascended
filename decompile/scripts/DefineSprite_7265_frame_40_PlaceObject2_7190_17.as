//! status=pending
on(release){
   _parent.choice5();
}


onClipEvent(enterFrame){
   del += 1;
   tempText = "[Shift + 5] Reset latest adventure choices";
   if(tempText == "[Shift + 5] ")
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(3);
   }
   choiceText.text = tempText;
   if(_root.house.holding[5] == 1 && del >= 2 || _root.house.holding[5] >= 30 && _root.house.holding[5] <= 24000)
   {
      _root.house.holding[5] += 1;
      _parent.choice5();
   }
}


onClipEvent(load){
   del = 0;
}


