//! status=pending
on(release){
   _root.mmrSong = 1;
   _root.mmrSongStr = _parent._parent.songStr[1];
   _parent.gotoAndStop(2);
}


