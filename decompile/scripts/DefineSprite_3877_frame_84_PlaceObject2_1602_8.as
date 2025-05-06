//! status=pending
on(release){
   if(_root.save.arenaCorruptDifficulty > 1)
   {
      _root.save.arenaCorruptDifficulty -= 1;
      _parent.diffText.text = "" + _root.save.arenaCorruptDifficulty;
   }
}


