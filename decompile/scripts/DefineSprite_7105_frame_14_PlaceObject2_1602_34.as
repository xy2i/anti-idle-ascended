//! status=pending
on(release){
   if(_root.save.stadiumMaxSpeed > 0)
   {
      _root.save.stadiumToken += Math.floor(_parent.evalCost(_root.save.stadiumAbilityCost - 1) / 4);
      _root.save.stadiumMaxSpeed -= 1;
      _root.save.stadiumAbilityCost -= 1;
   }
}


