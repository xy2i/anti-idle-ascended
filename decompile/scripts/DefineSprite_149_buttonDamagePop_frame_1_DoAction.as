//! status=pending
Xalpha = 110;
alt = false;
onEnterFrame = function()
{
   alt = !alt;
   if(alt == true)
   {
      _Y = _Y - 1;
      Xalpha -= 800 / _root.fps;
      if(_root._quality == "BEST")
      {
         _alpha = Xalpha;
         if(Xalpha > 100)
         {
            _alpha = 100;
         }
      }
      if(_root.save.damageDisplay == false)
      {
         Xalpha -= 1600 / _root.fps;
      }
      if(_root.save.damageDisplay != false && (_root._quality == "HIGH" || _root._quality == "BEST"))
      {
         if(Xalpha > 100)
         {
            _xscale = Xalpha;
            _yscale = Xalpha;
         }
         else
         {
            _xscale = 100;
            _yscale = 100;
         }
      }
      if(Xalpha < 10)
      {
         gotoAndStop(8);
      }
   }
};
Xalpha += rank * 10;
gotoAndStop(rank);
