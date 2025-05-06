//! status=pending
function checkBacon()
{
   levelDisp.text = _root.save.robaconLevel;
   if(_root.save.robaconLevel < 500)
   {
      expDisp.text = _root.withComma(_root.save.robaconExp) + " / " + _root.withComma(_root.robaconReqExp);
      pct = Math.floor(_root.save.robaconExp / _root.robaconReqExp * 1000) / 10;
      if(pct == Math.round(pct))
      {
         pct += ".0";
      }
      pctDisp.text = "[" + pct + "%]";
   }
   else
   {
      expDisp.text = _root.withComma(_root.save.robaconExp);
      pctDisp.text = "[MAX]";
   }
   robaconBaconText.text = _root.withComma(_root.save.robaconBacon);
   baconText.text = _root.withComma(_root.save.arenaBacon);
   if(_root.save.arenaZone != 0)
   {
      gotoAndStop(1);
   }
}
checkBacon();
onEnterFrame = function()
{
   checkBacon();
};
