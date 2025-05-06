//! status=pending
count = 0;
stop();
onEnterFrame = function()
{
   count += 1 + random(5);
   if(count >= 500)
   {
      gotoAndStop(3);
   }
};
_root.epicdesc = "";
