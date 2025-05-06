//! status=pending
function dispCyborg()
{
   eneText.text = _root.convertSecFull(_root.save.botEnergy);
   cpText.text = _root.withComma(_root.save.botPoint);
   levText.text = _root.withComma(_root.save.botLevel);
   expReq = _root.save.botLevel * 5;
   if(_root.save.botLevel > 100)
   {
      expReq = _root.save.botLevel * (_root.save.botLevel - 99) * 5;
   }
   expText.text = _root.withComma(_root.save.botExp) + " / " + _root.withComma(expReq);
   if(_root.save.botLevel == 200)
   {
      expReq = -1;
      expText.text = _root.withComma(_root.save.botExp);
   }
   jobText.text = _root.cyborgActLongName[_root.save.botCurrentOp];
   progText.text = "[" + _root.withComma(_root.save.botCurrentOpNum) + " / " + _root.withComma(_root.save.botCurrentOpMax) + "]";
   progBar._xscale = _root.save.botCurrentOpTime / _root.cyborgActTime[_root.save.botCurrentOp] * 100;
   if(_root.save.botCurrentOp == 0)
   {
      progText.text = "";
      progBar.gotoAndStop(3);
   }
   else if(_root.save.botActive == true)
   {
      progBar.gotoAndStop(1);
   }
   else
   {
      progBar.gotoAndStop(2);
   }
}
dispCyborg();
onEnterFrame = function()
{
   dispCyborg();
};
