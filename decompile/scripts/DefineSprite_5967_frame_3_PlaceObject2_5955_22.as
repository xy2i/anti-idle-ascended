//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b>Favorite</b>\nYou can see your favorite Invisible Allies using the Filter Allies button.";
}


on(release){
   if(_root.save.arenaAllyFavorite[_parent.ID] != true)
   {
      _root.save.arenaAllyFavorite[_parent.ID] = true;
   }
   else
   {
      _root.save.arenaAllyFavorite[_parent.ID] = false;
   }
   _parent.checkAlly();
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


