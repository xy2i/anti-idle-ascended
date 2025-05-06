//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "TukkunFCG";
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
   if(_root.save.featureTukkunFCG == true)
   {
      eligible = 1;
      targetF = 12;
   }
   else
   {
      this.removeMovieClip();
      removeMovieClip(this);
      this.unloadMovie();
      unloadMovie(this);
   }
}


