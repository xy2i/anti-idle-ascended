//! status=pending
gotoAndStop(id + 1);
if(curLevel == 0)
{
   _alpha = 30;
   levelText.text = "-";
   levelText.textColor = 10066329;
}
else
{
   _alpha = 100;
   levelText.text = curLevel;
   if(curLevel == levelCap)
   {
      levelText.text = "MAX";
      levelText.textColor = 16776960;
   }
}
onRollOver = function()
{
   _root.actiondescription = "<font color=\'#FFFF00\'><b>" + bonName + "</b></font>";
   if(levelCap >= 255)
   {
      _root.actiondescription += "\nLevel: <b>" + curLevel + "</b>";
   }
   else
   {
      _root.actiondescription += "\nLevel: <b>" + curLevel + " / " + levelCap + "</b>";
   }
   if(curLevel < levelCap)
   {
      _root.actiondescription += "\n<font color=\'#AAAAAA\'>[<b>" + _root.withComma(nextLevel * levelCost - _root.save.totalStupidity) + "</b> more Ascension Points needed]</font>";
   }
   _root.actiondescription += "\n\n" + bonDesc;
   if(curLevel > 0)
   {
      _root.actiondescription += "\n\n<font color=\'#66FFFF\'>[Current Level: " + curLevel + "]</font>\n" + descA;
   }
   if(curLevel < levelCap)
   {
      _root.actiondescription += "\n\n<font color=\'#66FFFF\'>[Next Level: " + nextLevel + "]</font>\n" + descB;
   }
};
onRollOut = function()
{
   _root.actiondescription = "";
};
onDragOver = onRollOver;
onDragOut = onRollOut;
