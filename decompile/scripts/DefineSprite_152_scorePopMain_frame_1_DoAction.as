//! status=pending
whatDisp.text = what;
whatDisp.textColor = whatColor;
al = 200;
stop();
onEnterFrame = function()
{
   al -= 400 / _root.fps;
   _Y = _Y - 0.5;
   if(al < 10)
   {
      gotoAndStop(2);
   }
   if(_root._quality == "HIGH" || _root._quality == "BEST")
   {
      _alpha = al;
      if(al > 100)
      {
         _alpha = 100;
      }
   }
};
