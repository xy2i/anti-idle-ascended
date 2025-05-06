//! status=pending
on(dragOver,rollOver){
   _root.actiondescription2 = "";
   if(_root.museumValue[_parent.slotNum] != 1)
   {
      _root.actiondescription = "<b>" + _root.museumItem[_parent.slotNum] + "</b>\nThe Museum does not have this item yet. Contribute this item to the Museum to gain <b>" + _root.museumValue[_parent.slotNum] + "</b> Collection Points. Items contributed to the Museum can be taken back at any time.";
   }
   else
   {
      _root.actiondescription = "<b>" + _root.museumItem[_parent.slotNum] + "</b>\nThe Museum does not have this item yet. Contribute this item to the Museum to gain <b>1</b> Collection Point. Items contributed to the Museum can be taken back at any time.";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
   _root.actiondescription2 = "";
}


