//! status=pending
on(release){
   if(_parent.challengeMedalName != "" && _parent.challengeSkinColor != "" && _parent.challengeEyeColor != "")
   {
      skinColorValid = false;
      eyeColorValid = false;
      if(_parent.challengeSkinColor.indexOf("#") != -1)
      {
         if(_parent.challengeSkinColor.length == 7)
         {
            skinColorValid = true;
         }
      }
      if(_parent.challengeSkinColor.indexOf("/") != -1)
      {
         if(_parent.challengeSkinColor.length >= 5)
         {
            skinColorValid = true;
         }
      }
      if(_parent.challengeEyeColor.indexOf("#") != -1)
      {
         if(_parent.challengeEyeColor.length == 7)
         {
            eyeColorValid = true;
         }
      }
      if(_parent.challengeEyeColor.indexOf("/") != -1)
      {
         if(_parent.challengeEyeColor.length >= 5)
         {
            eyeColorValid = true;
         }
      }
      if(skinColorValid == true && eyeColorValid == true)
      {
         _parent.nextFrame();
      }
      else
      {
         _root.showPopup("Error","Invalid color. Please check again.");
      }
   }
   else
   {
      _root.showPopup("Error","Please make sure you have filled in all required boxes.");
   }
}


