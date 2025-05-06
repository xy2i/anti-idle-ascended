//! status=pending
stop();
if(_root.verifyA == _root.saveid && _root.verifyB == _root.save.refundCode && _root.save.houseVer > 0)
{
   _root.save.houseVer = 0;
}
onEnterFrame = function()
{
   if(Key.isDown(17) && Key.isDown(90) && _root.house._currentframe == 19)
   {
      gotoAndStop(4);
   }
};
if(_root.kongregate_username != "Guest" && _root.save.submitScoreConfirm != true && _root.save.bestLevel >= 25 && _root.saveid < 4)
{
   gotoAndStop(4);
}
if(_root.save.houseVer > 86400000 && _root.save.refundTier >= 11)
{
   gotoAndStop(6);
}
else if(_root.save.offlineProgressF != true && _root.save.bestLevel >= 25 && _root.saveid < 4)
{
   _root.save.offlineProgressF = true;
   gotoAndStop(5);
}
