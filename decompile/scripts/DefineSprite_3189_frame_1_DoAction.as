//! status=pending
stop();
onEnterFrame = function()
{
   if(this.hitTest(_root.cursor))
   {
      gotoAndStop(2 + _parent._currentframe);
      _X = 0;
      fertilizerText.text = _root.withComma(_root.save.gardenFertilizer);
      fertilizerText2.text = _root.withComma(_root.save.gardenMegaFertilizer);
      coolText.text = _root.convertSec((_root.save.gardenFertilizerAllow - _root.systemtimenow) / 1000);
      if(_root.systemtimenow >= _root.save.gardenFertilizerAllow)
      {
         coolText.text = "00:00";
      }
   }
   else
   {
      _X = -130;
      if(_root.systemtimenow >= _root.save.gardenFertilizerAllow && _root.save.gardenCapacity >= 2)
      {
         gotoAndStop(2);
      }
      else
      {
         gotoAndStop(1);
      }
   }
};
