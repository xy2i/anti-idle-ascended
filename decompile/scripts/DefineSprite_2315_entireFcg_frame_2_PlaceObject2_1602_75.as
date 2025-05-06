//! status=pending
on(release){
   _root.alreadyopened = 0;
   _parent.removeMovieClip();
   removeMovieClip(_parent);
   _parent.unloadMovie();
   unloadMovie(_parent);
}


