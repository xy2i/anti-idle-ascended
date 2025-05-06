//! status=pending
onEnterFrame = function()
{
   if(!isNaN(saveVarA) && saveVarA != "")
   {
      saveVal = _root.save[saveVar][saveVarA];
   }
   else
   {
      saveVal = _root.save[saveVar];
   }
};
