//! status=pending
onEnterFrame = function()
{
   if(clearText.text == "Yes, I want to clear my data.")
   {
      _root.my_so.clear();
      _root.justRestart = true;
      _root.gotoAndStop(11);
   }
};
