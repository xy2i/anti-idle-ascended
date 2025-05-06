//! status=pending
onClipEvent(load){
   function checkFrame()
   {
      _root.worstMoon = false;
      _root.apocalypse = false;
      if(_root.save.arenaAlly == 1)
      {
         _root.worstMoon = true;
      }
      if(_root.save.inventoryName[_root.save.arenaTrinket] == "Worst Moon Gem")
      {
         if(_root.worstMoon == true)
         {
            _root.apocalypse = true;
         }
         else
         {
            _root.worstMoon = true;
         }
      }
      if(_root.saveid == 26)
      {
         _root.apocalypse = true;
         _root.worstMoon = true;
      }
      if(_root.apocalypse == true)
      {
         fr = 3;
      }
      else if(_root.worstMoon == true)
      {
         fr = 2;
      }
      else
      {
         fr = 1;
      }
      gotoAndStop(fr);
   }
   checkFrame();
}


