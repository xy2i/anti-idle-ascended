//! status=pending
onClipEvent(enterFrame){
   if(_parent._parent.enemy.enemyID != 0 && _parent._parent.enemy.enemyID != 440 && _parent._parent.enemy.enemyID != 227 && _root.save.arenaZone != 61)
   {
      _parent._visible = true;
      _parent.nameTag.levelText.text = "Lv. " + _parent._parent.enemy.level;
      if(_parent._parent.enemy.ultra == true)
      {
         if(_parent._parent.enemy.ultra3 == true)
         {
            _parent.nameTag.levelText.text = "ULTRA-3";
         }
         else if(_parent._parent.enemy.ultra2 == true)
         {
            _parent.nameTag.levelText.text = "ULTRA-2";
         }
         else if(_parent._parent.enemy.ultra1 == true)
         {
            _parent.nameTag.levelText.text = "ULTRA-1";
         }
      }
      _parent.nameTag.nameText.text = _parent._parent.enemy.name;
      _parent._x = _parent._parent.enemy._x + _parent._parent.enemy._width / 2 - 65;
      enemyRank = _parent._parent.enemy.enemyRank;
      if(enemyRank == 1)
      {
         tempColor = 16776960;
      }
      else if(enemyRank == 2)
      {
         tempColor = 16777215;
      }
      else if(enemyRank == 3)
      {
         tempColor = 16724736;
      }
      else if(enemyRank == 4)
      {
         tempColor = 10027263;
      }
      if(_parent._parent.enemy.ultra == true)
      {
         _parent.nameTag.gotoAndStop(4);
      }
      else if(_parent._parent.enemy.epic == true)
      {
         _parent.nameTag.gotoAndStop(3);
      }
      else if(_parent._parent.enemy.rare == true)
      {
         _parent.nameTag.gotoAndStop(2);
      }
      else
      {
         _parent.nameTag.gotoAndStop(1);
      }
      _parent.nameTag.levelText.textColor = tempColor;
      _parent.nameTag.nameText.textColor = tempColor;
      targetScale = _parent._parent.enemy.hp / _parent._parent.enemy.maxhp * 100;
      if(_root.save.arenaZone == 81)
      {
         targetScale = 100 - _parent._parent.enemy.explodeCount / 36;
      }
      if(targetScale < 0)
      {
         targetScale = 0;
      }
      if(_parent._parent.enemy.zombie == true)
      {
         insideBar.gotoAndStop(4);
      }
      else if(_parent._parent.enemy.evolve != 0)
      {
         insideBar.gotoAndStop(2);
      }
      else if(_parent._parent.enemy.boss == true)
      {
         insideBar.gotoAndStop(3);
      }
      else
      {
         insideBar.gotoAndStop(1);
      }
      insideBar._xscale += (targetScale - insideBar._xscale) / 2;
   }
   else
   {
      _parent._visible = false;
   }
}


onClipEvent(load){
   _parent._visible = false;
   insideBar._xscale = 0;
}


