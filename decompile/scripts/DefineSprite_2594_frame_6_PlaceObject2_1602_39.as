//! status=pending
on(release){
   if(_parent.challengeDesc != "This is a challenge!" && _parent.challengeDesc != "" && _parent.challengeName != "Untitled Challenge" && _parent.challengeName != "")
   {
      _parent.nextFrame();
   }
   else
   {
      _root.showPopup("Error","Please make sure you have filled in all required boxes. Also, you cannot use the default challenge name and description.");
   }
}


