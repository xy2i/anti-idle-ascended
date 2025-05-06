//! status=pending
on(rollOut){
   _root.epicdesc = "";
}


on(rollOver){
   if(Key.isDown(32))
   {
      _root.epicdesc = "Enemy\'s Monster";
   }
}


onClipEvent(enterFrame){
   delay = 0;
   if(_root.fcg_opponent_mhp > 0)
   {
      gotoAndStop(1);
      bg.gotoAndStop(_root.fcg_opponent_mquanta);
      image.gotoAndStop(_root.fcg_opponent_mid);
      rareupgraded.gotoAndStop(_root.fcg_opponent_mupgraded + 1);
      triangle.gotoAndStop(_root.fcg_opponent_mquanta);
      reqBox.text = _root.fcg_opponent_mreq;
      nameBox.text = _root.fcg_opponent_mname;
      hpBox.text = "HP: " + _root.fcg_opponent_mhp;
      typeBox.text = _root.fcg_opponent_matk + " / " + _root.fcg_opponent_mdef;
      descBox.text = _root.fcg_opponent_mdesc;
      copyRight.text = _root.fcg_opponent_mauthor;
   }
   else
   {
      gotoAndStop(2);
   }
}


onClipEvent(load){
   gotoAndStop(2);
}


