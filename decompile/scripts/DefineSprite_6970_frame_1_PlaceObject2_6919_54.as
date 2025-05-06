//! status=pending
onClipEvent(load){
   _X = 3500 + Math.random() * 1000;
   _Y = -40;
   if(Math.random() < 0.4 && _root.stadiumDifficulty == 2)
   {
      _Y = 1000;
   }
   else if(Math.random() < 0.7 && _root.stadiumDifficulty == 1)
   {
      _Y = 1000;
   }
   else if(Math.random() < 0.9 && _root.stadiumDifficulty == 0)
   {
      _Y = 1000;
   }
   else if(Math.random() < 0.3)
   {
      _Y = -90;
   }
}


