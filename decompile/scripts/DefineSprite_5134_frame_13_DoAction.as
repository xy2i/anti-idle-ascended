//! status=pending
function checkShard()
{
   entryText.text = _root.save.arenaChaosLeft + " / " + _root.save.arenaChaosMax;
}
checkShard();
onEnterFrame = function()
{
   checkShard();
};
