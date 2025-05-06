//! status=pending
function blah()
{
   cd -= 1;
   if(_currentframe >= 284 && _currentframe <= 291)
   {
      alphaX -= 5;
      _alpha = alphaX;
   }
   else
   {
      _X = _X + 20;
      if(_root.save.arenaOutfitWeapon != 0)
      {
         if(_root.save.inventoryFrame[_root.save.arenaOutfitWeapon] == 92 || _root.save.inventoryFrame[_root.save.arenaOutfitWeapon] == 93)
         {
            _alpha = 0;
         }
         else
         {
            _alpha = 100;
         }
      }
   }
   if(_parent._parent.enemy.enemyID != 0 && cd <= 0 && _X >= _parent._parent.enemy._x && _X <= _parent._parent.enemy._x + _parent._parent.enemy._width)
   {
      if(this.hitTest(_parent._parent.enemy))
      {
         if(ult == true)
         {
            _parent._parent.dealDamage(missilePower,missileKnockBack,"Ultimate Attack");
         }
         else if(missileSpec == "Hamstring")
         {
            _parent._parent.dealDamage(missilePower,missileKnockBack,"Hamstring");
         }
         else if(missileSpec == "Trueshot")
         {
            _parent._parent.dealDamage(missilePower,missileKnockBack,"Ignore Evasion");
         }
         else if(missileSpec == "Rapid Fire")
         {
            _parent._parent.dealDamage(missilePower,missileKnockBack);
            _parent._parent.dealDamage(missilePower,missileKnockBack,"Quick Attack");
            _parent._parent.dealDamage(missilePower,missileKnockBack,"Quick Attack 2");
            _parent._parent.dealDamage(missilePower,missileKnockBack,"Quick Attack 3");
            _parent._parent.dealDamage(missilePower,missileKnockBack,"Quick Attack 4");
            _parent._parent.dealDamage(missilePower,missileKnockBack,"Rapid Fire");
         }
         else if(missileSpec == "Absorption Shuriken")
         {
            _parent._parent.dealDamage(missilePower,missileKnockBack,"Absorb");
         }
         else if(missileSpec == "Headshot")
         {
            _parent._parent.dealDamage(missilePower,missileKnockBack,"Headshot");
         }
         else if(missileSpec == "Hyper Cannonball")
         {
            _parent._parent.dealDamage(missilePower,missileKnockBack,"Hyper Cannonball");
         }
         else if(missileSpec == "Hyper EXPlosion")
         {
            _parent._parent.dealDamage(missilePower,missileKnockBack,"Hyper EXPlosion");
         }
         else if(missileSpec == "Z")
         {
            _parent._parent.dealDamage(missilePower,missileKnockBack,"Z");
         }
         else if(missileSpec == "X")
         {
            _parent._parent.dealDamage(missilePower,missileKnockBack,"X");
         }
         else if(missileSpec == "C")
         {
            _parent._parent.dealDamage(missilePower,missileKnockBack,"C");
         }
         else
         {
            _parent._parent.dealDamage(missilePower,missileKnockBack);
         }
         if(missileQuickAttack == true)
         {
            _parent._parent.dealDamage(missilePower,0,"Quick Attack");
            _parent._parent.dealDamage(missilePower,0,"Quick Attack 2");
            if(_root.save.arenaSkill[6] >= 1)
            {
               _parent._parent.dealDamage(missilePower,0,"Quick Attack 3");
            }
         }
         if(_root.spiritDouble > 0)
         {
            _parent._parent.dealDamage(missilePower * 2,0,"Double Hit");
         }
         else if(Math.random() < _root.doubleHit / 100)
         {
            if(_root.house.arena.enemyImmune.fr == 3)
            {
               if(!(missileSpec == "Z" && _root.house.arena.enemyImmune.timeZ < 0))
               {
                  if(!(missileSpec == "X" && _root.house.arena.enemyImmune.timeX < 0))
                  {
                     if(!(missileSpec == "C" && _root.house.arena.enemyImmune.timeC < 0))
                     {
                        _parent._parent.dealDamage(missilePower,0,"Double Hit");
                     }
                  }
               }
            }
            else
            {
               _parent._parent.dealDamage(missilePower,0,"Double Hit");
            }
         }
         if(_currentframe >= 284 && _currentframe <= 291)
         {
            cd = 3;
            _root.save.arenaMana += Math.floor(_root.maxMana * 0.02);
         }
         else
         {
            _X = 710;
         }
      }
   }
   if(_X > 700 || alphaX <= 0)
   {
      onEnterFrame = null;
      unloadMovie(this);
      this.removeMovieClip();
   }
}
gotoAndStop(_root.save.inventoryFrame[_root.save.arenaWeapon]);
if(_root.save.inventoryFrame[_root.save.arenaSubWeapon] >= 280 && _root.save.inventoryFrame[_root.save.arenaSubWeapon] <= 291)
{
   gotoAndStop(_root.save.inventoryFrame[_root.save.arenaSubWeapon]);
}
if(_root.save.arenaOutfitWeapon != 0)
{
   if(_root.save.inventoryFrame[_root.save.arenaOutfitWeapon] == 92 || _root.save.inventoryFrame[_root.save.arenaOutfitWeapon] == 93)
   {
      _alpha = 0;
   }
   else
   {
      _alpha = 100;
   }
}
cd = 0;
ult = false;
alphaX = 100;
blah();
alt = false;
onEnterFrame = function()
{
   alt = !alt;
   if(alt == true)
   {
      blah();
   }
};
