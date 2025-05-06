//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Click here to get 1 more Endless Dungeon entry for <b>" + _root.withComma(_parent.cost5) + "</b> Proof of Mission.";
}


on(release){
   if(_root.save.arenaProofMission >= _parent.cost5 && _root.save.arenaEndlessEntry < 999)
   {
      _root.save.arenaProofMission -= _parent.cost5;
      _root.dispNews(64,"Endless Dungeon entry purchased! (-" + _root.withComma(_parent.cost5) + " Proof of Mission)");
      _root.save.arenaEndlessEntry += 1;
      _root.save.arenaEndlessCraftT += 1;
      _parent.checkCost();
      _root.actiondescription = "Click here to get 1 more Endless Dungeon entry for <b>" + _root.withComma(_parent.cost5) + "</b> Proof of Mission.";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.arenaProofMission >= _parent.cost5 && _root.save.arenaEndlessEntry < 999)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


