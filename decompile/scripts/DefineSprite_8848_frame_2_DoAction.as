//! status=pending
titleText.text = _root.bTitle;
descText.text = _root.bDesc;
ssText.text = _root.bScreenshot;
onEnterFrame = function()
{
   titleRemX = 70 - titleText.text.length;
   titleRem.text = titleRemX + " characters remaining";
   if(titleRemX > 55)
   {
      titleRem.text = "Please be more specific.";
   }
   descRemX = 1337 - descText.text.length;
   if(intention == 1)
   {
      descRemX = 700 - descText.text.length;
   }
   descRem.text = descRemX + " characters remaining";
   if(descRemX > 1300)
   {
      descRem.text = "Please be more specific.";
   }
   ssRemX = 170 - ssText.text.length;
   ssRem.text = ssRemX + " characters remaining";
};
