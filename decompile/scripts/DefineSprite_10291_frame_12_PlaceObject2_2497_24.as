//! status=pending
onClipEvent(enterFrame){
   i = 1;
   while(i <= _root.autoUpdateTime.length - 1)
   {
      if(_root.systemtimenow > _root.autoUpdateTime[i] && _root.save.au < i)
      {
         _root.save.au = i;
      }
      i++;
   }
   if(_root.save.au >= _parent.auView)
   {
      gotoAndStop(3);
   }
   else if(_root.autoUpdateTime[_parent.auView] != Infinity && _parent.auView - _root.save.au == 1)
   {
      gotoAndStop(2);
      timeLeft = (_root.autoUpdateTime[_parent.auView] - _root.systemtimenow) / 1000;
      elapsed_days = Math.floor(timeLeft / 86400);
      remaining = timeLeft - elapsed_days * 86400;
      elapsed_hours = Math.floor(remaining / 3600);
      remaining -= elapsed_hours * 3600;
      elapsed_minutes = Math.floor(remaining / 60);
      remaining -= elapsed_minutes * 60;
      elapsed_seconds = Math.floor(remaining / 1);
      remaining -= elapsed_seconds * 1;
      c1Text.text = Math.floor(elapsed_days / 10);
      c2Text.text = elapsed_days % 10;
      c3Text.text = Math.floor(elapsed_hours / 10);
      c4Text.text = elapsed_hours % 10;
      c5Text.text = Math.floor(elapsed_minutes / 10);
      c6Text.text = elapsed_minutes % 10;
      c7Text.text = Math.floor(elapsed_seconds / 10);
      c8Text.text = elapsed_seconds % 10;
      costQ = elapsed_days * 20000 + 250000;
      costE = elapsed_days * 2000 + 25000;
      if(costQ < 0)
      {
         costQ = 0;
      }
      if(costE < 0)
      {
         costE = 0;
      }
      costQText.text = _root.withComma(costQ);
      costEText.text = _root.withComma(costE);
   }
   else
   {
      gotoAndStop(1);
   }
}


