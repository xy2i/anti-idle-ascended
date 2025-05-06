//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Button Machine";
}


on(release){
   if(eligible == 1)
   {
      _root.house.gotoAndStop(targetF);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   if(_root.save.featureButtonMachine == true)
   {
      eligible = 1;
      targetF = 8;
   }
   else
   {
      this.removeMovieClip();
      removeMovieClip(this);
      this.unloadMovie();
      unloadMovie(this);
   }
}


