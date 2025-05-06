//! status=pending
on(release){
   _parent._parent.allyFiltered = false;
   _parent._parent.allyArray = [zeroItem];
   i = 1;
   while(i <= _root.totalMonster)
   {
      allyValid = true;
      if(_root.save.filterPref1c == true)
      {
         if(isNaN(_root.save.arenaAllyEXP[i]))
         {
            allyValid = false;
         }
      }
      if(_root.save.filterPref2c == true)
      {
         if(!isNaN(_root.save.arenaAllyEXP[i]))
         {
            allyValid = false;
         }
      }
      if(_root.save.filterPref3c == true)
      {
         if(_root.save.arenaAllyFavorite[i] != true)
         {
            allyValid = false;
         }
      }
      if(_root.save.filterPref4c == true)
      {
         if(_root.save.arenaAllyFavorite[i] == true)
         {
            allyValid = false;
         }
      }
      if(_root.save.filterPref5c == true)
      {
         if(_root.save.arenaAllyEXP[i] < _root.save.filterPref1t)
         {
            allyValid = false;
         }
      }
      if(_root.save.filterPref6c == true)
      {
         if(_root.save.arenaAllyEXP[i] > _root.save.filterPref2t)
         {
            allyValid = false;
         }
      }
      if(_root.save.filterPref7c == true)
      {
         if(_root.enemyList[i].level < _root.save.filterPref3t)
         {
            allyValid = false;
         }
      }
      if(_root.save.filterPref8c == true)
      {
         if(_root.enemyList[i].level > _root.save.filterPref4t)
         {
            allyValid = false;
         }
      }
      if(_root.save.filterPref9c == true)
      {
         filterValid = false;
         k = 1;
         while(k <= 3)
         {
            if(_root.enemyList[i]["allyPassive" + k] == _root.save.filterPref5t)
            {
               filterValid = true;
            }
            if(_root.enemyList[i]["allyPassive" + k] == "Reward")
            {
               if(_root.save.filterPref5t == "EXP" || _root.save.filterPref5t == "Coin" || _root.save.filterPref5t == "Pixel")
               {
                  filterValid = true;
               }
            }
            if(_root.enemyList[i]["allyPassive" + k] == "Damage")
            {
               if(_root.save.filterPref5t == "Boss Damage" || _root.save.filterPref5t == "Non-Boss Damage")
               {
                  filterValid = true;
               }
            }
            k++;
         }
         if(filterValid == false)
         {
            allyValid = false;
         }
      }
      if(_root.save.filterPref10c == true)
      {
         filterValid = false;
         k = 1;
         while(k <= 3)
         {
            if(_root.enemyList[i]["allyActive" + k] == _root.save.filterPref6t)
            {
               filterValid = true;
            }
            k++;
         }
         if(filterValid == false)
         {
            allyValid = false;
         }
      }
      if(_root.save.filterPref11c == true)
      {
         if(_root.enemyList[i].name.indexOf(_root.save.filterPref7t) == -1)
         {
            allyValid = false;
         }
      }
      if(_root.save.filterPref12c == true)
      {
         if(_root.save.arenaAllyUpgrade[i] < _root.save.filterPref8t)
         {
            allyValid = false;
         }
      }
      if(_root.save.filterPref13c == true)
      {
         if(_root.save.arenaAllyUpgrade[i] > _root.save.filterPref9t)
         {
            allyValid = false;
         }
      }
      if(_root.save.filterPref14c == true)
      {
         if(_root.enemyList[i].allyPassive3 == "")
         {
            allyValid = false;
         }
      }
      if(_root.save.filterPref15c == true)
      {
         if(_root.enemyList[i].allyPassive3 != "")
         {
            allyValid = false;
         }
      }
      if(allyValid == true)
      {
         _parent._parent.allyArray.push(i);
      }
      i++;
   }
   _parent._parent.allyOffset = 0;
   _parent._parent.allyMaxOffset = _parent._parent.allyArray.length - 13;
   if(_parent._parent.allyMaxOffset < 1)
   {
      _parent._parent.allyMaxOffset = 1;
   }
   _parent._parent.allyFiltered = true;
   _parent._parent.recheckAlly = 2;
   _parent.gotoAndStop(1);
}


