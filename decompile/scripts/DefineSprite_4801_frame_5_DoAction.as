//! status=pending
function updateCD()
{
   tcd = Math.ceil(coolDown);
   if(tcd > 599)
   {
      tcd = 599;
   }
   cdText.text = _root.convertSecCD(tcd);
}
updateCD();
onEnterFrame = function()
{
   if(fr != _currentframe)
   {
      del += 1;
      if(del > 1 || fr != 4)
      {
         gotoAndStop(fr);
         del = 0;
      }
   }
   else
   {
      del = 0;
   }
   updateCD();
};
