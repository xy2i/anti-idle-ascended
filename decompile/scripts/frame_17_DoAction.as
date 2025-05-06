//! status=pending
_root.my_so.flush();
onEnterFrame = function()
{
   timeRemText.text = ">> Time Remaining: " + _root.convertSecFull(Math.floor((_root.save.seppukuEnd - _root.systemtimenow) / 1000));
   if(Key.isDown(16) && Key.isDown(67))
   {
      _root.save.seppukuEnd = 0;
      _root.gotoAndStop(13);
   }
   else if(_root.systemtimenow > _root.save.seppukuEnd && _root.save.seppukuEnd > 0)
   {
      _root.save.totalPlayTime += _root.save.seppukuTime * 1800;
      _root.save.ascendPlayTime += _root.save.seppukuTime * 1800;
      _root.save.expLag += _root.save.seppukuReward;
      _root.save.seppukuEnd = 0;
      _root.gotoAndStop(13);
   }
};
