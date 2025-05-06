//! status=pending
onClipEvent(load){
   kongName = _root.kongregate_username;
   if(kongName == undefined || kongName == "Guest")
   {
      kongName = _root.save.displayName;
   }
   if(_parent.nameText.text == kongName)
   {
      gotoAndStop(_root.save.stadiumFace);
   }
}


