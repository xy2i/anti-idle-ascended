//! status=pending
on(dragOver,rollOver){
   _root.epicdesc = "Click to destroy monster";
}


on(release){
   _root.fcg_player_mhp = 0;
   if(_root.fcg_time < 15)
   {
      _root.fcg_time += 1;
   }
   _root.fcg_player_time = 0.5;
}


on(rollOut,dragOut){
   _root.epicdesc = "";
}


onClipEvent(enterFrame){
   if(_root.fcg_player_mhp > 0)
   {
      gotoAndStop(1);
      bg.gotoAndStop(_root.fcg_player_mquanta);
      image.gotoAndStop(_root.fcg_player_mid);
      rareupgraded.gotoAndStop(_root.fcg_player_mupgraded + 1);
      triangle.gotoAndStop(_root.fcg_player_mquanta);
      reqBox.text = _root.fcg_player_mreq;
      nameBox.text = _root.fcg_player_mname;
      hpBox.text = "HP: " + _root.fcg_player_mhp;
      typeBox.text = _root.fcg_player_matk + " / " + _root.fcg_player_mdef;
      descBox.text = _root.fcg_player_mdesc;
      copyRight.text = _root.fcg_player_mauthor;
   }
   else
   {
      gotoAndStop(2);
   }
   if(_parent.holding[0] == 1 && _root.fcg_player_mhp > 0)
   {
      _root.fcg_player_mhp = 0;
      if(_root.fcg_time < 15)
      {
         _root.fcg_time += 1;
      }
      _root.fcg_player_time = 0.5;
   }
}


onClipEvent(load){
   gotoAndStop(2);
}


