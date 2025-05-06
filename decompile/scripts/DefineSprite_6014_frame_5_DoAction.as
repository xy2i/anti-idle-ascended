//! status=pending
onEnterFrame = null;
bestiaryLevelText.text = _root.withComma(_root.bestiaryLevel);
uniqueKillText.text = _root.withComma(_root.uniqueKill);
if(_root.save.featureBestiary != true)
{
   gotoAndStop(6);
}
_root.checkBestiary();
