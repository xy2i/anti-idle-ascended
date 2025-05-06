//! status=pending
if(_root.save["mysteryBoxBan" + _parent.boxID][possibility] == true)
{
   ban.gotoAndStop(1);
}
else
{
   ban.gotoAndStop(2);
}
onEnterFrame = function()
{
   if(_root.save["mysteryBoxCollect" + _parent.boxID][possibility] > 0 && !isNaN(_root.save["mysteryBoxCollect" + _parent.boxID][possibility]))
   {
      desc.text = possname;
   }
   else
   {
      desc.text = "???";
   }
};
onRollOver = function()
{
   if((_parent.boxID != 2 || possibility != 1) && _parent.boxID != 6 && _parent.boxID != 10 && _root.save["mysteryBoxCollect" + _parent.boxID][possibility] > 0 && !isNaN(_root.save["mysteryBoxCollect" + _parent.boxID][possibility]))
   {
      _root.actiondescription = "Click here to enable/disable this prize. If this prize is disabled, whenever you open the box and would get this prize, you get a 1% refund on the box price instead.";
   }
};
onRollOut = function()
{
   _root.actiondescription = "";
};
onDragOver = onRollOver;
onDragOut = onRollOut;
onRelease = function()
{
   if((_parent.boxID != 2 || possibility != 1) && _parent.boxID != 6 && _parent.boxID != 10 && _root.save["mysteryBoxCollect" + _parent.boxID][possibility] > 0 && !isNaN(_root.save["mysteryBoxCollect" + _parent.boxID][possibility]))
   {
      _root.save["mysteryBoxBan" + _parent.boxID][possibility] = !_root.save["mysteryBoxBan" + _parent.boxID][possibility];
      if(_root.save["mysteryBoxBan" + _parent.boxID][possibility] == true)
      {
         ban.gotoAndStop(1);
      }
      else
      {
         ban.gotoAndStop(2);
      }
   }
};
