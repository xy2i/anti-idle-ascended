//! status=pending
on(dragOver,rollOver){
   if(_root.save.arenaKommanderSkip > 0)
   {
      _root.actiondescription = "You can skip missions you dislike by holding Shift while clicking this button. You can skip 3 missions for free every day, and each subsequent skip costs 100 Unobtainium. Please note that you will not gain any rewards for the current mission, and there is a chance that your new mission may be the same as the previous one.\n\nFree skips remaining: <b>" + _root.save.arenaKommanderSkip + "</b>";
   }
   else
   {
      _root.actiondescription = "You can skip missions you dislike by holding Shift while clicking this button. You can skip 3 missions for free every day, and each subsequent skip costs 100 Unobtainium. Please note that you will not gain any rewards for the current mission, and there is a chance that your new mission may be the same as the previous one.\n\nUnobtainium: <b>" + _root.withComma(_root.save.arenaUnobtainium) + "</b> / 100";
   }
}


on(release){
   if(Key.isDown(16))
   {
      if(_root.save.arenaKommanderSkip > 0)
      {
         _root.save.arenaKommanderSkip -= 1;
         _root.save.arenaKommanderProgress = 0;
         _parent.genKommanderMission();
      }
      else if(_root.save.arenaUnobtainium >= 100)
      {
         _root.save.arenaUnobtainium -= 100;
         _root.save.arenaKommanderProgress = 0;
         _parent.genKommanderMission();
      }
      if(_root.save.arenaKommanderSkip > 0)
      {
         _root.actiondescription = "You can skip missions you dislike by holding Shift while clicking this button. You can skip 3 missions for free every day, and each subsequent skip costs 100 Unobtainium. Please note that you will not gain any rewards for the current mission, and there is a chance that your new mission may be the same as the previous one.\n\nFree skips remaining: <b>" + _root.save.arenaKommanderSkip + "</b>";
      }
      else
      {
         _root.actiondescription = "You can skip missions you dislike by holding Shift while clicking this button. You can skip 3 missions for free every day, and each subsequent skip costs 100 Unobtainium. Please note that you will not gain any rewards for the current mission, and there is a chance that your new mission may be the same as the previous one.\n\nUnobtainium: <b>" + _root.withComma(_root.save.arenaUnobtainium) + "</b> / 100";
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.arenaKommanderSkip > 0 || _root.save.arenaUnobtainium >= 100)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


