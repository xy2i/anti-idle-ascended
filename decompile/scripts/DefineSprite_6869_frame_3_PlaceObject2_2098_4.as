//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Entries left: <b>" + _root.save.deathMatchEntry + "</b>";
}


on(release){
   _root.actiondescription = "";
   if(_root.saveid == 23)
   {
      _root.showPopup("NOOOOOOOOO!","You must resist your urges. You don\'t want to fail the challenge, do you?");
   }
   else if(_root.save.deathMatchEntry > 0)
   {
      _root.save.deathMatchEntry -= 1;
      _root.stadiumDifficulty = 3;
      _parent._parent.gotoAndStop(6);
   }
   else
   {
      _root.showPopup("Once Per Day!","You can only play Death Match once per day. Come back tomorrow for more!");
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


