//! status=pending
on(dragOver,rollOver){
   _root.epicdesc = txt;
}


on(rollOut,dragOut){
   _root.epicdesc = "";
}


onClipEvent(enterFrame){
   type = 1;
   txt = "";
   val = _root.fcg_player_mspecial;
   valx = _root.fcg_player_mspecialpow;
   if(val == "Growth")
   {
      type = 2;
      txt = "Growth: " + valx;
   }
   if(val == "GrowthA")
   {
      type = 3;
      txt = "Attack Growth: " + valx;
   }
   if(val == "GrowthD")
   {
      type = 4;
      txt = "Defense Growth: " + valx;
   }
   if(val == "Generator")
   {
      type = 5;
      txt = "Generator: " + valx;
   }
   if(val == "Transform")
   {
      type = 6;
      txt = "Transform";
   }
   if(val == "Rebirth")
   {
      type = 7;
      txt = "Rebirth";
   }
   if(val == "Lure")
   {
      type = 8;
      txt = "Lure";
   }
   if(val == "MonKill")
   {
      type = 9;
      txt = "Kill Monsters";
   }
   if(val == "Poison")
   {
      type = 10;
      txt = "Venom: " + valx;
   }
   gotoAndStop(type);
}


