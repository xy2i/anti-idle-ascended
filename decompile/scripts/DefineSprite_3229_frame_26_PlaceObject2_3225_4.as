//! status=pending
onClipEvent(enterFrame){
   seedCheck();
}


onClipEvent(load){
   function seedCheck()
   {
      ID = _parent.ID;
      if(ID == undefined)
      {
         ID = _parent._parent.ID;
      }
      _parent.seedText.text = "#" + (ID - 25);
      if(_parent.blah != true)
      {
         _parent.ownText.text = _root.save.gardenSeed[ID];
      }
      if(_root.save.gardenMastery[ID] >= 1000)
      {
         gotoAndStop(2);
      }
      else
      {
         gotoAndStop(1);
      }
   }
   seedCheck();
}


