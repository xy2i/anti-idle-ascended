//! status=pending
on(release){
   i = 1;
   while(i <= 5)
   {
      if(_root.save.arenaCorruptDifficulty > 1)
      {
         _root.save.arenaCorruptDifficulty -= 1;
         _parent.diffText.text = "" + _root.save.arenaCorruptDifficulty;
      }
      i++;
   }
}


