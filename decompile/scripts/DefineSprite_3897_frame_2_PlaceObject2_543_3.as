//! status=pending
onClipEvent(enterFrame){
   _X = 0;
}


onClipEvent(load){
   if(_root.save.arenaOutfitWeapon != 0)
   {
      if(_root.save.inventoryFrame[_root.save.arenaOutfitWeapon] == 91 || _root.save.inventoryFrame[_root.save.arenaOutfitWeapon] == 93)
      {
         _alpha = 0;
      }
      else
      {
         _alpha = 100;
      }
   }
   id = _root.save.arenaWeapon;
   frame = _root.save.inventoryFrame[id];
   if(id == 0)
   {
      frame = 1;
   }
   gotoAndStop(frame);
   if(_root.save.inventoryFrame[_root.save.arenaSubWeapon] >= 284 && _root.save.inventoryFrame[_root.save.arenaSubWeapon] <= 291)
   {
      if(_root.arenaStrike >= 30)
      {
         _root.arenaStrike = 0;
      }
      if(Math.random() < 0.01 && _root.arenaStrike == 0)
      {
         _root.arenaStrike = 1;
      }
   }
   if(_root.save.inventoryName[id] == "Ultimate Weapon")
   {
      _root.incDt();
      _root.house.arena.stuffHolder.attachMovie("missile","missile" + _root.summonCount,_root.antiLag + 2000,{_x:225,_y:122.5,missilePower:Math.ceil(_root.arenaSkillPower * 0.01 * (10 + Math.min(Math.floor(_root.save.totalStupidity / 150),20))),missileKnockBack:0,missileQuickAttack:_root.arenaQuickAttack,missileSpec:""});
   }
   if(_root.save.inventoryName[id] == "Reincarnation Weapon")
   {
      _root.incDt();
      _root.house.arena.stuffHolder.attachMovie("missile","missile" + _root.summonCount,_root.antiLag + 2000,{_x:225,_y:122.5,missilePower:Math.ceil(_root.arenaSkillPower * 0.3),missileKnockBack:0,missileQuickAttack:_root.arenaQuickAttack,missileSpec:""});
   }
   if(_root.save.inventoryRange[id] == false)
   {
      _rotation = 90;
   }
   else
   {
      _rotation = 0;
      _root.incDt();
      _root.house.arena.stuffHolder.attachMovie("missile","missile" + _root.summonCount,_root.antiLag,{_x:90,_y:127.5,missilePower:_root.arenaSkillPower,missileKnockBack:_root.arenaKnockBack,missileQuickAttack:_root.arenaQuickAttack,missileSpec:_root.arenaSkillSpec});
      if(_root.save.inventorySubtype[id] == "Gun")
      {
         _X = -10;
      }
      if(_root.save.inventorySubtype[id] == "Slingshot")
      {
         _X = -10;
      }
   }
}


