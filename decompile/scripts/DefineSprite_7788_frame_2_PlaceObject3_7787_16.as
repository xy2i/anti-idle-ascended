//! status=pending
onClipEvent(enterFrame){
   if(alp > 0)
   {
      alp = Math.floor(alp * 0.9 - 1);
      if(alp < 0)
      {
         alp = 0;
      }
   }
   _alpha = alp;
   _yscale = alp;
   if(tmpValue != _parent.perfectText.text)
   {
      tmpValue = _parent.perfectText.text;
      alp = 100;
   }
}


onClipEvent(load){
   _alpha = 0;
   _yscale = 0;
   alp = 0;
   tmpValue = "";
}


