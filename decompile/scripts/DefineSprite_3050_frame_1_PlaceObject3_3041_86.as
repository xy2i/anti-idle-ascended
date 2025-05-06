//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "LolMarket";
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
   if(_root.save.featureLolMarket == true)
   {
      eligible = 1;
      targetF = 13;
   }
   else
   {
      this.removeMovieClip();
      removeMovieClip(this);
      this.unloadMovie();
      unloadMovie(this);
   }
}


