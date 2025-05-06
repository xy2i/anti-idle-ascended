//! status=pending
onClipEvent(enterFrame){
   targetKillText = _root.withComma(_root.save.arenaZoneKill[23]);
   if(killText.text != targetKillText)
   {
      killText.text = targetKillText;
      zscale = 110;
   }
   if(zscale > 100)
   {
      zscale -= 1;
   }
   _xscale = zscale;
   _yscale = zscale;
}


onClipEvent(load){
   killText.text = _root.save.arenaZoneKill[23];
   zscale = 100;
}


