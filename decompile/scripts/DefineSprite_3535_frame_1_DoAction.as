//! status=pending
onEnterFrame = function()
{
   currentText.text = _root.withComma(_root.areaSpookyKill);
   todayText.text = _root.withComma(_root.save.arenaSpookyToday);
   recordText.text = _root.withComma(_root.save.arenaSpookyScore);
};
