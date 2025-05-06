//! status=pending
onClipEvent(enterFrame){
   target = _parent.field.stadiumHero.score;
   if(target > disp)
   {
      disp += Math.ceil((target - disp) / 10);
   }
   else if(target < disp)
   {
      disp += Math.floor((target - disp) / 10);
   }
   if(pwntText.text != _root.withComma(disp))
   {
      pwntText.text = _root.withComma(disp);
      scale = 110;
      _alpha = 150;
   }
   if(scale > 100)
   {
      scale -= 2;
   }
   if(_alpha > 50)
   {
      _alpha = _alpha - 1;
   }
   _xscale = scale;
   _yscale = scale;
}


onClipEvent(load){
   scale = 100;
   disp = _parent.field.stadiumHero.score;
}


