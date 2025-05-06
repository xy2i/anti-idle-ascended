//! status=pending
on(release){
   if(_root.save.arenaCorruptDifficulty < _root.save.arenaCorruptMaxDifficulty)
   {
      _root.save.arenaCorruptDifficulty += 1;
      _parent.diffText.text = "" + _root.save.arenaCorruptDifficulty;
   }
}


