//! status=pending
on(release){
   i = 1;
   while(i <= 5)
   {
      if(_root.save.arenaCorruptWmDifficulty < _root.save.arenaCorruptWmMaxDifficulty)
      {
         _root.save.arenaCorruptWmDifficulty += 1;
         _parent.diffText.text = "" + _root.save.arenaCorruptWmDifficulty;
      }
      i++;
   }
}


