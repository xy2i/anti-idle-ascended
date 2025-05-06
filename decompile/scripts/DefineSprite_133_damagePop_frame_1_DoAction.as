//! status=pending
_root.damageNumCount += 1;
tsc = _root.damageNumCount;
disp.text = damageNum;
disp.textColor = damageColor;
stop();
Xalpha = 180;
if(damageColor == 10027229 || damageColor == 12255453)
{
   Xalpha = 240;
}
if(damageColor == 14522624)
{
   Xalpha = 120;
}
alt = false;
onEnterFrame = function()
{
   alt = !alt;
   if(alt == true)
   {
      _Y = _Y - 1;
      Xalpha -= 200 / _root.fps;
      if(_root.damageNumCount - tsc > 10)
      {
         _Y = _Y - 2;
         Xalpha -= 800 / _root.fps;
      }
      if(_root.save.arenaZone == 20)
      {
         _Y = _Y - 4;
         Xalpha -= 1600 / _root.fps;
      }
      if(_root._quality == "BEST")
      {
         _alpha = Xalpha;
         if(Xalpha > 100)
         {
            _alpha = 100;
         }
      }
      if(_root._quality != "BEST" || Xalpha > 100)
      {
         Xalpha -= 400 / _root.fps;
      }
      if(_root.save.damageDisplay == false)
      {
         Xalpha -= 1600 / _root.fps;
      }
      if(_root.save.damageDisplay != false && (_root._quality == "HIGH" || _root._quality == "BEST"))
      {
         if(Xalpha > 150)
         {
            _xscale = 150;
            _yscale = 150;
         }
         else if(Xalpha > 100)
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
