//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Click here to get 10 more The Special Arena entries for <b>" + _root.withComma(_parent.cost2) + "</b> Crafting Material.";
}


on(release){
   if(_root.save.arenaCraft >= _parent.cost2 && _root.save.arenaMegabossEntry < 990)
   {
      _root.save.arenaCraft -= _parent.cost2;
      _root.dispNews(64,"The Special Arena entries refilled! (-" + _root.withComma(_parent.cost2) + " Crafting Material)");
      _root.save.arenaMegabossCraftT += 1;
      _root.save.arenaMegabossEntry += 10;
      _parent.checkCost();
      _root.actiondescription = "Click here to get 10 more The Special Arena entries for <b>" + _root.withComma(_parent.cost2) + "</b> Crafting Material.";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.arenaCraft >= _parent.cost2 && _root.save.arenaMegabossEntry < 990)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


