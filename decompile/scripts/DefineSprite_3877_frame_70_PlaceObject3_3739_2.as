//! status=pending
onClipEvent(enterFrame){
   if(_currentframe > 340 || _currentframe < 81)
   {
      _X = 0;
      _Y = 0;
   }
   else if(_currentframe > 290 && Math.random() < 0.2)
   {
      _X = (random(3) - random(3)) * 5;
      _Y = (random(2) - random(2)) * 5;
   }
   else if(_currentframe > 240 && Math.random() < 0.2)
   {
      _X = (random(3) - random(2)) * 5;
      _Y = (random(2) - random(2)) * 5;
   }
   else if(_currentframe > 160 && Math.random() < 0.2)
   {
      _X = (random(2) - random(2)) * 5;
      _Y = random(2) * 5;
   }
   else if(_currentframe > 80 && Math.random() < 0.2)
   {
      _X = (random(2) - random(2)) * 5;
      _Y = random(2) * 5;
   }
}


