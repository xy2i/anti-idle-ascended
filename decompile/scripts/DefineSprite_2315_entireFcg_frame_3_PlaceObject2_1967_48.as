//! status=pending
onClipEvent(enterFrame){
   hp = _root.fcg_player_chp;
   attack = _root.fcg_player_catk;
   defense = _root.fcg_player_cdef;
   numberdisp = "HP: " + hp + " | " + attack + " / " + defense;
   insideBar.xscale = hp;
   insideBar._x = (100 - insideBar._xscale) * 2;
}


onClipEvent(load){
   textBox.textColor = 16777215;
   glow1 = new flash.filters.GlowFilter(0,70,5,5,3,1,false,false);
   textBox.filters = [glow1];
}


