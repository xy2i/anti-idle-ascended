//! status=pending
onClipEvent(enterFrame){
   if(_parent.pName == "Disabled")
   {
      gotoAndStop(1);
   }
   else if(_parent.pName == "Variable Check")
   {
      gotoAndStop(2);
   }
   else if(_parent.pName == "Inventory Check")
   {
      gotoAndStop(3);
   }
   else if(_parent.pName == "Time Check")
   {
      gotoAndStop(4);
   }
   else if(_parent.pName == "Daily Check")
   {
      gotoAndStop(5);
   }
   else if(_parent.pName == "Limit Check")
   {
      gotoAndStop(6);
   }
   else if(_parent.pName == "LolMarket Check")
   {
      gotoAndStop(7);
   }
   else if(_parent.pName == "Garden Check")
   {
      gotoAndStop(8);
   }
   else if(_parent.pName == "Variable Recording")
   {
      gotoAndStop(9);
   }
}


