//! status=pending
onClipEvent(enterFrame){
   delay += 1;
   if(delay > 2)
   {
      if(_alpha > 0)
      {
         _alpha = _alpha - 2;
      }
      delay = 0;
      bg.gotoAndStop(_root.fcg_player_quanta);
      image.gotoAndStop(_root.fcg_player_id);
      rareupgraded.gotoAndStop(_root.fcg_player_upgraded + 1);
      triangle.gotoAndStop(_root.fcg_player_quanta);
      reqBox.text = _root.fcg_player_req;
      nameBox.text = _root.fcg_player_name;
      typeBox.text = _root.fcg_player_type;
      copyRight.text = _root.fcg_player_author;
      if(_root.fcg_player_type == "Monster")
      {
         hpBox.text = "HP: " + _root.fcg_player_mhp;
         typeBox.text = _root.fcg_player_matk + " / " + _root.fcg_player_mdef;
      }
      else
      {
         hpBox.text = "";
      }
      descBox.text = _root.fcg_player_desc;
   }
}


onClipEvent(load){
   delay = 0;
   _alpha = 0;
   stop();
}


