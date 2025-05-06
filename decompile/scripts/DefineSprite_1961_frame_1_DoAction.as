//! status=pending
stop();
alt = false;
xscale = 0;
_xscale = 0;
onEnterFrame = function()
{
   alt = !alt;
   if(alt == true)
   {
      _xscale = _xscale + (xscale - _xscale) / 1.5;
      if(_xscale > 100)
      {
         _xscale = 100;
      }
      if(_xscale < 0)
      {
         _xscale = 0;
      }
      _parent.textBox.text = _parent.numberdisp;
   }
};
