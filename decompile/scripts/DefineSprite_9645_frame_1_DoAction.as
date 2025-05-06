//! status=pending
function checkFrame()
{
   fr = _root.save.progModuleTier[_parent.ID] + 1;
   if(_root.save.progModuleShiny[_parent.ID] == 1)
   {
      fr += 20;
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}
checkFrame();
onEnterFrame = function()
{
   if(_parent.alt == true)
   {
      checkFrame();
   }
};
