//! status=pending
on(release){
   if(_root.save.stadiumStartSpeed > 0)
   {
      _root.save.stadiumToken += Math.floor(_parent.evalCost(_root.save.stadiumAbilityCost - 1) / 4);
      _root.save.stadiumStartSpeed -= 1;
      _root.save.stadiumAbilityCost -= 1;
   }
}


