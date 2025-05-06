//! status=pending
onClipEvent(enterFrame){
   if(_root.save.inventoryType[400] == "Weapon" && _root.save.inventoryReqRank[400] <= _root.save.robaconLevel && _root.save.inventoryExpiry[400] >= _root.systemtimenow)
   {
      gotoAndStop(1);
   }
   else if(_root.save.inventoryExist[400] == 1)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(3);
   }
}


