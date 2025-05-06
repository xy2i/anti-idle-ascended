//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Click here to get 1 more Dark Shard for <b>" + _root.withComma(shardPrice) + "</b> Crafting Material.\n\nDark Shards are fully refilled for free when the day ends.";
}


on(release){
   if(_root.save.arenaChaosLeft < _root.save.arenaChaosMax && _root.save.arenaCraft >= shardPrice)
   {
      _root.save.arenaCraft -= shardPrice;
      _root.save.arenaChaosLeft += 1;
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.arenaChaosLeft < _root.save.arenaChaosMax && _root.save.arenaCraft >= shardPrice)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   shardPrice = 2000000000;
}


