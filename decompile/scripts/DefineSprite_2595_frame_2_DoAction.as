//! status=pending
function checkTimeX()
{
   _root.systemclock = new Date();
   _root.systemtimenow = _root.systemclock.getTime();
}
checkTimeX();
auView = 0;
while(_root.systemtimenow > _root.challengeTime[auView] && auView < _root.challengeTime.length - 2)
{
   auView += 1;
}
onEnterFrame = function()
{
   checkTimeX();
};
