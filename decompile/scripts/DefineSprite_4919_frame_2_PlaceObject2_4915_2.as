//! status=pending
onClipEvent(enterFrame){
   if(_root.house.arena.enemy.enemyID != 0 && _root.house.arena.enemy.hp > 0)
   {
      targetScale = _root.house.arena.enemy.hp / _root.house.arena.enemy.maxhp * 100;
      _parent.hpText.text = _root.withComma(_root.house.arena.enemy.hp) + " / " + _root.withComma(_root.house.arena.enemy.maxhp);
      pct = Math.ceil(_root.house.arena.enemy.hp / _root.house.arena.enemy.maxhp * 1000) / 10;
      if(pct == Math.round(pct))
      {
         pct += ".0";
      }
      _parent.hp1Text.text = _root.house.arena.enemy.name;
      if(_root.save.arenaZone == 56)
      {
         _parent.hp1Text.text = "Round " + _root.withComma(_root.areaRevengeKill + 1);
      }
      _parent.pctText.text = "[" + pct + "%]";
   }
   else
   {
      targetScale = 0;
      _parent.hpText.text = "";
      _parent.hp1Text.text = "";
      _parent.pctText.text = "";
   }
   _xscale = _xscale + (targetScale - _xscale) / 2;
}


onClipEvent(load){
   _xscale = 0;
   targetScale = 0;
   _parent.hp1Text.text = "";
   _parent.hpText.text = "";
   _parent.pctText.text = "";
}


