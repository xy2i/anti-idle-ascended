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
      bg.gotoAndStop(_root.fcg_opponent_quanta);
      image.gotoAndStop(_root.fcg_opponent_id);
      rareupgraded.gotoAndStop(_root.fcg_opponent_upgraded + 1);
      triangle.gotoAndStop(_root.fcg_opponent_quanta);
      reqBox.text = _root.fcg_opponent_req;
      nameBox.text = _root.fcg_opponent_name;
      typeBox.text = _root.fcg_opponent_type;
      copyRight.text = _root.fcg_opponent_author;
      if(_root.fcg_opponent_type == "Monster")
      {
         hpBox.text = "HP: " + _root.fcg_opponent_mhp;
         typeBox.text = _root.fcg_opponent_matk + " / " + _root.fcg_opponent_mdef;
      }
      else
      {
         hpBox.text = "";
      }
      descBox.text = _root.fcg_opponent_desc;
   }
}


onClipEvent(load){
   delay = 0;
   _alpha = 0;
   stop();
}


