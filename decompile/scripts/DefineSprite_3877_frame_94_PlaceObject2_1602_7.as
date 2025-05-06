//! status=pending
on(release){
   if(_root.save.arenaCorruptWmDifficulty > 1)
   {
      _root.save.arenaCorruptWmDifficulty -= 1;
      _parent.diffText.text = "" + _root.save.arenaCorruptWmDifficulty;
   }
}


