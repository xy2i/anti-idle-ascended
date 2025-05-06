//! status=pending
function checkStorage()
{
   var _loc1_ = globalSetting.flush(5000001);
   if(_loc1_ == true)
   {
      gotoAndStop(12);
   }
}
checkStorage();
storeDel = 0;
onEnterFrame = function()
{
   storeDel += 1;
   if(storeDel >= 600)
   {
      storeDel = 0;
      checkStorage();
   }
};
