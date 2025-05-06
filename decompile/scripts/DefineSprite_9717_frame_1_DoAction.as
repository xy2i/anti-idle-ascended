//! status=pending
z = Math.round((_Y - 50) / 20) + 1;
onEnterFrame = function()
{
   ID = _parent.bcOffset + z;
   if(_root.newsID[ID] == 0)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(3);
   }
   sauceText.text = _root.newsSauceName[ID];
   sauceText.textColor = _root.saveGlobal.breakR[_root.newsID[ID]] * 65536 + _root.saveGlobal.breakG[_root.newsID[ID]] * 256 + _root.saveGlobal.breakB[_root.newsID[ID]];
};
