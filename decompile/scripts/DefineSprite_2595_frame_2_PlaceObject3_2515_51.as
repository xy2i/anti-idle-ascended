//! status=pending
onClipEvent(enterFrame){
   if(!isNaN(_root.saveGlobal.challengeTime[_parent.auView]))
   {
      if(_parent.auView == 0)
      {
         gotoAndStop(3);
      }
      else if(_root.saveGlobal.challengePerfect[_parent.auView] == true)
      {
         gotoAndStop(2);
      }
      else
      {
         gotoAndStop(1);
      }
      elapsed_days = Math.floor(_root.saveGlobal.challengeTime[_parent.auView] / 86400);
      remaining = _root.saveGlobal.challengeTime[_parent.auView] - elapsed_days * 86400;
      elapsed_hours = Math.floor(remaining / 3600);
      remaining -= elapsed_hours * 3600;
      elapsed_minutes = Math.floor(remaining / 60);
      remaining -= elapsed_minutes * 60;
      elapsed_seconds = Math.floor(remaining / 1);
      remaining -= elapsed_seconds * 1;
      if(elapsed_hours < 10)
      {
         elapsed_hours = "0" + elapsed_hours;
      }
      if(elapsed_minutes < 10)
      {
         elapsed_minutes = "0" + elapsed_minutes;
      }
      if(elapsed_seconds < 10)
      {
         elapsed_seconds = "0" + elapsed_seconds;
      }
      if(elapsed_days >= 100)
      {
         clearInside.timeDisp.text = "-------------";
      }
      else
      {
         clearInside.timeDisp.text = elapsed_days + "d + " + elapsed_hours + ":" + elapsed_minutes + ":" + elapsed_seconds;
      }
   }
   else
   {
      gotoAndStop(4);
   }
}


onClipEvent(load){
   gotoAndStop(4);
}


