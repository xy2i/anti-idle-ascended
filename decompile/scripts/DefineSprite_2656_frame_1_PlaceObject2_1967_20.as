//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>EXP</font></b>\nWhen you gain enough EXP, you level up!";
}


on(release){
   _root.save.experienced += 1;
   if(_root.save.level < 9002)
   {
      _root.dispNews(167,_root.withComma(_root.requiredExp - _root.save.currentExp) + " more EXP required to level up.");
      _root.dispNews(167,"Current Level Progress: " + _root.withComma(_root.save.currentExp) + " / " + _root.withComma(_root.requiredExp) + " [" + Math.floor(_root.save.currentExp / _root.requiredExp * 10000) / 100 + "%]");
   }
   else
   {
      _root.dispNews(167,"You are at the level cap! Congratulations!");
   }
   _root.dispNews(167,"Level: " + _root.save.level + " | EXP: " + _root.withComma(_root.finalExp) + " / " + _root.withComma(_root.save.totalExp + _root.requiredExp));
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.saveid >= 20 && _root.save.challengeToken == Math.floor(_root.saveid * (_root.saveid + 1) * (_root.saveid - 7) * 156.4))
   {
      numberdisp = "COMPLETE!";
   }
   else if(numberdisp != _root.withComma(_root.finalExp))
   {
      if(_root._quality == "BEST")
      {
         pow = 1;
         glow2 = new flash.filters.GlowFilter(65280,40,5,5,pow,1,false,false);
         filters = [glow2];
      }
      numberdisp = _root.withComma(_root.finalExp);
      if(_root.eventName == "April Fools")
      {
         numberdisp = _root.withComma(_root.finalExp * 3);
      }
   }
   insideBar.xscale = _root.save.currentExp / _root.requiredExp * 100;
   if(_root.save.level == 9002)
   {
      insideBar.xscale = 100;
      if(_root.saveid != 4)
      {
         insideBar.gotoAndStop(8);
         pbShiny.gotoAndStop(2);
      }
   }
   else if(_root.save.bestLevel == 9002)
   {
      if(_root.saveid != 4)
      {
         insideBar.gotoAndStop(9);
         pbShiny.gotoAndStop(2);
      }
   }
   if(pow > 0)
   {
      pow -= 0.05;
      glow2 = new flash.filters.GlowFilter(65280,40,5,5,pow,1,false,false);
      filters = [glow2];
   }
}


onClipEvent(load){
   color = 16777215;
   pow = 0;
   bg.gotoAndStop(4);
   insideBar.gotoAndStop(4);
   textBox.textColor = 65280;
   glow1 = new flash.filters.GlowFilter(0,100,4,4,7,1,false,false);
   textBox.filters = [glow1];
}


