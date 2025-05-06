//! status=pending
function checkPyr()
{
   _root.house.arena.enemy.approach = 10;
   entryText.text = _root.save.arenaPyramidEntry;
   gemText.text = _root.withComma(_root.save.arenaNerfGem);
   nerfText.text = _root.withComma(_root.save.arenaNerfCount);
   nextText.text = _root.withComma(_root.save.arenaNerfNext);
}
checkPyr();
onEnterFrame = function()
{
   checkPyr();
};
