//! status=pending
on(release){
   if(_root.save.stadiumToken >= _parent.evalCost(_root.save.stadiumAbilityCost) && _root.save.stadiumAccel < 50)
   {
      _root.save.stadiumToken -= _parent.evalCost(_root.save.stadiumAbilityCost);
      _root.save.stadiumAccel += 1;
      _root.save.stadiumAbilityCost += 1;
   }
}


