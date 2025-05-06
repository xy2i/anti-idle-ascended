//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Click here to get 10 more Dark Pyramid entries for <b>" + _root.withComma(_parent.cost1) + "</b> Crafting Material.";
}


on(release){
   if(_root.save.arenaCraft >= _parent.cost1 && _root.save.arenaPyramidEntry < 990)
   {
      _root.save.arenaCraft -= _parent.cost1;
      _root.dispNews(64,"Dark Pyramid entry purchased! (-" + _root.withComma(_parent.cost1) + " Crafting Material)");
      _root.save.arenaPyramidCraftT += 1;
      _root.save.arenaPyramidEntry += 10;
      _parent.checkCost();
      _root.actiondescription = "Click here to get 10 more Dark Pyramid entries for <b>" + _root.withComma(_parent.cost1) + "</b> Crafting Material.";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.arenaCraft >= _parent.cost1 && _root.save.arenaPyramidEntry < 990)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


