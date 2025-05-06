//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Click here to get 1 more The Corruption entry for <b>" + _root.withComma(_parent.cost3) + "</b> Proof of Training.";
}


on(release){
   if(_root.save.arenaProofTraining >= _parent.cost3 && _root.save.arenaCorruptionEntry < 999)
   {
      _root.save.arenaProofTraining -= _parent.cost3;
      _root.dispNews(64,"The Corruption entry purchased! (-" + _root.withComma(_parent.cost3) + " Proof of Training)");
      _root.save.arenaCorruptionCraftT += 1;
      _root.save.arenaCorruptionEntry += 1;
      _parent.checkCost();
      _root.actiondescription = "Click here to get 1 more The Corruption entry for <b>" + _root.withComma(_parent.cost3) + "</b> Proof of Training.";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.arenaProofTraining >= _parent.cost3 && _root.save.arenaCorruptionEntry < 999)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


