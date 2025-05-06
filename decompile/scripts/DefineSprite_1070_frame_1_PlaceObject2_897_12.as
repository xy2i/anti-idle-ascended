//! status=pending
onClipEvent(enterFrame){
   if(_root.gCheck == true)
   {
      checkSI();
   }
}


onClipEvent(load){
   function checkSI()
   {
      typeS = _parent._parent._parent.typeS;
      typeI = _parent._parent._parent.typeI;
      if(typeS == true && typeI == true)
      {
         gotoAndStop(3);
      }
      else if(typeS == true)
      {
         gotoAndStop(1);
      }
      else if(typeI == true)
      {
         gotoAndStop(2);
      }
      else
      {
         gotoAndStop(4);
      }
   }
   checkSI();
}


