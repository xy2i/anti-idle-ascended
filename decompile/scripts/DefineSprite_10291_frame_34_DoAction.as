//! status=pending
function checkStuff()
{
}
checkStuff();
onEnterFrame = function()
{
   tokenDisp.text = _root.withComma(_root.save.questToken);
   checkStuff();
};
