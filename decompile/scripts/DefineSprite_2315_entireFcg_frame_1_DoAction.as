//! status=pending
count = 0;
stop();
if(_root.fcgConnected == true)
{
   gotoAndStop(2);
}
onEnterFrame = function()
{
   count += 1;
   if(count >= 100)
   {
      _root.fcgCooldown = 1;
      _root.fcgConnected = true;
      gotoAndStop(2);
   }
};
_root.epicdesc = "";
deckCodeInput = "";
