//! status=pending
onEnterFrame = function()
{
   diffText.text = "" + _root.save.arenaCorruptDifficulty;
   killText.text = _root.areaCorruptKill + "/" + _root.areaCorruptReq;
   if(_root.areaCorruptKill < 10)
   {
      killText.text = "00" + _root.areaCorruptKill + "/" + _root.areaCorruptReq;
   }
   else if(_root.areaCorruptKill < 100)
   {
      killText.text = "0" + _root.areaCorruptKill + "/" + _root.areaCorruptReq;
   }
};
