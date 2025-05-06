//! status=pending
onClipEvent(enterFrame){
   _root.stadiumTimer += 0.025;
   timer.text = Math.floor(_root.stadiumTimer * 100) / 100;
   if(Math.floor(_root.stadiumTimer * 100) / 100 == Math.round(_root.stadiumTimer))
   {
      timer.text += ".00";
   }
   else if(Math.floor(_root.stadiumTimer * 100) / 100 == Math.round(_root.stadiumTimer * 10) / 10)
   {
      timer.text += "0";
   }
   if(_root.stadiumTimer >= 0)
   {
      timer.textColor = 65280;
   }
   else
   {
      timer.textColor = 16776960;
   }
}


onClipEvent(load){
   _root.stadiumTimer = -3;
}


