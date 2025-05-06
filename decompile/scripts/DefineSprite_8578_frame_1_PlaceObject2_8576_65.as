//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>Today</b></font>\n\n" + _root.save.graphName + " with multiplier:\n<b>" + _root.withCommaB(_root.save[_root.save.graphDisplay + "Graph2"][7]) + "</b>\n\nExtra " + _root.save.graphName + " from multiplier:\n<b>" + _root.withCommaB(_root.save[_root.save.graphDisplay + "Graph2"][7] - _root.save[_root.save.graphDisplay + "Graph"][7]) + "</b>";
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   pct = _root.save[_root.save.graphDisplay + "Graph2"][7] / _parent.maxGraph * 100;
   if(pct > 100)
   {
      pct = 100;
   }
   targety = 200 - pct * 2;
   _Y = _Y + (targety - _Y) / 4;
}


