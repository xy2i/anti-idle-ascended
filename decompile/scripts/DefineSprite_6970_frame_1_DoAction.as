//! status=pending
function useItem(itemName, user)
{
   if(user == 0)
   {
      if(_root.save.questType == "Use Item")
      {
         if(_root.save.questSubtype == "Any" && itemName != "")
         {
            _root.save.questCount += 1;
         }
      }
      if(itemName == "Speed Boost")
      {
         stadiumHero.xspeed *= 1.8;
         stadiumHero.fastDur = 1;
      }
      if(itemName == "Energy Drain")
      {
         var _loc6_ = 1;
         while(_loc6_ <= 4)
         {
            this["stadiumEnemy" + _loc6_].energy -= 6;
            if(this["stadiumEnemy" + _loc6_].energy < 0)
            {
               this["stadiumEnemy" + _loc6_].energy = 0;
            }
            _loc6_ = _loc6_ + 1;
         }
         stadiumHero.energy += 24;
      }
      if(itemName == "Slow")
      {
         _loc6_ = 1;
         while(_loc6_ <= 4)
         {
            this["stadiumEnemy" + _loc6_].slowDur = 2;
            _loc6_ = _loc6_ + 1;
         }
      }
      if(itemName == "Stun")
      {
         _loc6_ = 1;
         while(_loc6_ <= 4)
         {
            this["stadiumEnemy" + _loc6_].stunDur = 1;
            _loc6_ = _loc6_ + 1;
         }
      }
      if(itemName == "Darkness")
      {
         _loc6_ = 1;
         while(_loc6_ <= 4)
         {
            this["stadiumEnemy" + _loc6_].darkDur = 3;
            _loc6_ = _loc6_ + 1;
         }
      }
      if(itemName != "")
      {
         kongName = _root.kongregate_username;
         if(kongName == undefined || kongName == "Guest")
         {
            kongName = _root.save.displayName;
         }
         _parent.breakStadium(kongName + " used " + itemName + "!");
         _root.dispNews(99,kongName + " used " + itemName + "!");
      }
      stadiumHero.curItem = "";
   }
   else
   {
      if(itemName == "Speed Boost")
      {
         this["stadiumEnemy" + user].xspeed *= 1.8;
         this["stadiumEnemy" + user].fastDur = 1;
      }
      if(itemName == "Energy Drain")
      {
         _loc6_ = 1;
         while(_loc6_ <= 4)
         {
            if(_loc6_ != user)
            {
               this["stadiumEnemy" + _loc6_].energy -= 6;
               if(this["stadiumEnemy" + _loc6_].energy < 0)
               {
                  this["stadiumEnemy" + _loc6_].energy = 0;
               }
            }
            _loc6_ = _loc6_ + 1;
         }
         stadiumHero.energy -= 6;
         if(stadiumHero.energy < 0)
         {
            stadiumHero.energy = 0;
         }
         this["stadiumEnemy" + user].energy += 24;
      }
      if(itemName == "Slow")
      {
         _loc6_ = 1;
         while(_loc6_ <= 4)
         {
            if(_loc6_ != user)
            {
               this["stadiumEnemy" + _loc6_].slowDur = 2;
            }
            _loc6_ = _loc6_ + 1;
         }
         stadiumHero.slowDur = 2;
      }
      if(itemName == "Stun")
      {
         _loc6_ = 1;
         while(_loc6_ <= 4)
         {
            if(_loc6_ != user)
            {
               this["stadiumEnemy" + _loc6_].stunDur = 1;
            }
            _loc6_ = _loc6_ + 1;
         }
         stadiumHero.stunDur = 1;
      }
      if(itemName == "Darkness")
      {
         _loc6_ = 1;
         while(_loc6_ <= 4)
         {
            if(_loc6_ != user)
            {
               this["stadiumEnemy" + _loc6_].darkDur = 3;
            }
            _loc6_ = _loc6_ + 1;
         }
         stadiumHero.darkDur = 3;
      }
      if(itemName != "")
      {
         _parent.breakStadium(this["stadiumEnemy" + user].mehName + " used " + itemName + "!");
         _root.dispNews(100,this["stadiumEnemy" + user].mehName + " used " + itemName + "!");
      }
      this["stadiumEnemy" + user].curItem = "";
   }
}
