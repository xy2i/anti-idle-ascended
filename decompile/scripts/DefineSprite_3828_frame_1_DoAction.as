//! status=pending
tmpPoint = _root.save.arenaEventPoint[_root.save.arenaEvent];
eventPointText.text = _root.withComma(tmpPoint);
onEnterFrame = function()
{
   if(tmpPoint < _root.save.arenaEventPoint[_root.save.arenaEvent])
   {
      tmpPoint += Math.ceil((_root.save.arenaEventPoint[_root.save.arenaEvent] - tmpPoint) / 10);
      eventPointText.text = _root.withComma(tmpPoint);
      _alpha = 100;
   }
   else if(_alpha > 50)
   {
      _alpha = _alpha - 1;
   }
};
