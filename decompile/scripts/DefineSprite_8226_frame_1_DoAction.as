//! status=pending
function checkRot()
{
   if(_root.save.boost < tempMin)
   {
      targetRot = 0;
   }
   else if(_root.save.boost > tempMax)
   {
      targetRot = 180;
   }
   else
   {
      targetRot = (_root.save.boost - tempMin) / (tempMax - tempMin) * 180;
   }
   _rotation = _rotation + (targetRot - _rotation) / 2;
}
_rotation = 0;
targetRot = 0;
del = 0;
checkRot();
onEnterFrame = function()
{
   if(_root.checkBoostRot > 0)
   {
      checkRot();
   }
};
