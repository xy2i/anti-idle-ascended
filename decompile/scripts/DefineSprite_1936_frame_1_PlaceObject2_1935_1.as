//! status=pending
on(release){
   if(cardloc <= 6 && cardloc > 0 && _root["exist_card" + cardloc] == 1)
   {
      if(Key.isDown(16))
      {
         _parent._parent._parent.discardCard(cardloc);
      }
      else
      {
         _parent._parent._parent.summonCard(cardloc);
      }
   }
}


onClipEvent(enterFrame){
   delay += 1;
   if(delay > 4)
   {
      delay = 0;
      gotoAndStop(2 - _root["exist_card" + cardloc]);
      bg.gotoAndStop(_root["quanta_card" + cardloc]);
      image.gotoAndStop(_root["id_card" + cardloc]);
      rareupgraded.gotoAndStop(_root["upgraded_card" + cardloc] + 1);
      triangle.gotoAndStop(_root["quanta_card" + cardloc]);
      reqBox.text = _root["req_card" + cardloc];
      if(_parent.cardloc != undefined && _parent.cardloc <= 6 && _root["req_card" + cardloc] > _root["fcg_player_ene" + _root["quanta_card" + cardloc]])
      {
         playable.gotoAndStop(2);
      }
      else if(_root.fcg_time < 0.25 || _root.fcg_player_time > 0)
      {
         playable.gotoAndStop(3);
      }
      else
      {
         playable.gotoAndStop(1);
      }
      nameBox.text = _root["name_card" + cardloc];
      typeBox.text = _root["type_card" + cardloc];
      copyRight.text = _root["author_card" + cardloc];
      if(_root["type_card" + cardloc] == "Monster")
      {
         hpBox.text = "HP: " + _root["hp_card" + cardloc];
         typeBox.text = _root["atk_card" + cardloc] + " / " + _root["def_card" + cardloc];
      }
      else
      {
         hpBox.text = "";
      }
      descBox.text = _root["desc_card" + cardloc];
      if(_xmouse >= -45 && _xmouse <= 45 && _ymouse >= -50 && _ymouse < 0)
      {
         _parent.swapDepths(1000 + depth);
      }
      else
      {
         _parent.swapDepths(depth);
      }
      if(_root.fcg_dep == 2)
      {
         this.removeMovieClip();
         this.unloadMovie();
      }
   }
   if(cardloc <= 6 && cardloc > 0 && _parent._parent._parent.holding[cardloc] == 1 && _root["exist_card" + cardloc] == 1)
   {
      if(Key.isDown(16))
      {
         _parent._parent._parent.discardCard(cardloc);
      }
      else
      {
         _parent._parent._parent.summonCard(cardloc);
      }
   }
}


onClipEvent(load){
   cardloc = _parent.cardloc;
   depth = _parent.getDepth();
   delay = 5;
}


