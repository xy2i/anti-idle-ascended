//! status=pending
onClipEvent(load){
   timer.text = Math.floor(_root.stadiumTimer * 100) / 100;
   if(Math.floor(_root.stadiumTimer * 100) / 100 == Math.round(_root.stadiumTimer))
   {
      timer.text += ".00";
   }
   else if(Math.floor(_root.stadiumTimer * 100) / 100 == Math.round(_root.stadiumTimer * 10) / 10)
   {
      timer.text += "0";
   }
   timer.textColor = 16776960;
}


