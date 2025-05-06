//! status=pending
onEnterFrame = function()
{
   currentText.text = _root.withComma(_root.areaTriangleKill);
   todayText.text = _root.withComma(_root.save.arenaTriangleToday);
   recordText.text = _root.withComma(_root.save.arenaTriangleScore);
};
