//! status=pending
on(dragOver,rollOver){
   if(_root.save.bannedB > 0)
   {
      _root.actiondescription = "Rebirths: <b>" + _root.save.bannedB + "</b>";
      b1 = _root.save.bannedB * 10;
      b2 = _root.save.bannedB;
      if(b1 > 100)
      {
         b1 = 100;
      }
      if(b2 > 100)
      {
         b2 = 100;
      }
      _root.actiondescription += "\nArena EXP Bonus: +" + b1 + "%";
      _root.actiondescription += "\nStat Limits: +" + b2 + "%";
      _root.actiondescription += "\n\nBefore reaching Rank 500, you will gain extra A: TG EXP from monster kills to make up for the lost power.\nRank 50 - 99: +25% EXP\nRank 100 - 199: +20% EXP\nRank 200 - 299: +15% EXP\nRank 300 - 399: +10% EXP\nRank 400 - 499: +5% EXP\n\nIn addition, you will gain some Arena EXP every second based on your Rebirth count and current Arena Rank.";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.bannedB > 0)
   {
      gotoAndStop(1);
      rebirthText.text = "+" + _root.save.bannedB;
   }
}


onClipEvent(load){
   gotoAndStop(2);
}


