//! status=pending
onEnterFrame = function()
{
   if(_root.save.businessDisplay == true)
   {
      nameText.text = _root.careerName[_root.save.curBusiness];
   }
   else
   {
      nameText.text = "";
   }
};
