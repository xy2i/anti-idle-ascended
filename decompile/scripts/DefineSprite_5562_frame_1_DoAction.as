//! status=pending
onEnterFrame = function()
{
   slotNum = 1401 + Math.round(_X / 40) + Math.round(_Y / 40) * 10 + _parent.museumOffset * 10;
   if(_root.save.inventoryExist[slotNum] == 1)
   {
      gotoAndStop(4);
   }
   else if(_root.museumItem[slotNum] == undefined)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(3);
      valText.text = _root.museumValue[slotNum];
      nameText.text = _root.museumItem[slotNum].substr(0,4) + "...";
   }
};
