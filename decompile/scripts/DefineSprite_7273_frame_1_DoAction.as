//! status=pending
function displayMessage(mess)
{
   awesomeMessage.text = mess;
   targetY = 265;
   awesomeDelay = 0;
}
targetY = 350;
onEnterFrame = function()
{
   awesomeDelay += 1 / _root.fps;
   if(_parent.encounterStuff.encounterEvent._currentframe != 40 && awesomeDelay < 58 && awesomeDelay > 1)
   {
      awesomeDelay = 58;
   }
   if(_parent.awesomeShop._currentframe != 1 && awesomeDelay < 58 && awesomeDelay > 1)
   {
      awesomeDelay = 58;
   }
   if(awesomeDelay > 60)
   {
      targetY = 350;
   }
   _Y = _Y + (targetY - _Y) / 3;
};
