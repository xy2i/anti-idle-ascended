//! status=pending
on(dragOver,rollOver){
   if(_root.manaPower == true)
   {
      _root.actiondescription += "<b><font color=\'#FFFF00\'>Spirit Power</font></b>";
      _root.actiondescription += "\n\nWhen Spirit Power is active,\nyou gain an additional:";
      _root.actiondescription += " 50 maximum Spirit and";
      _root.actiondescription += " 4 extra Spirit per hit";
      _root.actiondescription += "\n\nWhen Spirit would exceed its limit,\ninstead increases damage dealt\n by 10% per Spirit over the limit\nup to 100%";
      _root.actiondescription += "\n\nUpon taking damage, reduce damage taken by 50,000 per current Spirit,\nconsuming it in the process";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   _alpha = 0;
   flashing = false;
   time = 0;
   del = 0;
}


