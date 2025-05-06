//! status=pending
function checkFrame()
{
   if(!isNaN(_parent.currentDurationAuto) && _parent.currentDurationAuto > 0)
   {
      gotoAndStop(4);
      durText.text = Math.floor(_parent.currentDurationAuto / 60);
   }
   else if(!isNaN(_parent.currentDuration) && _parent.currentDuration > 0)
   {
      gotoAndStop(3);
      if(_parent.currentDuration > 99)
      {
         durText.text = "99";
      }
      else
      {
         durText.text = Math.floor(_parent.currentDuration);
      }
   }
   else
   {
      gotoAndStop(2);
   }
}
onEnterFrame = function()
{
   checkFrame();
};
checkFrame();
