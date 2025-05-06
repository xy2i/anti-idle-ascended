//! status=pending
if(_parent._parent._currentframe == 4)
{
   gotoAndStop(1);
}
else if(_root.atie == true)
{
   gotoAndStop(4);
}
else if(_root.forfeit == true)
{
   gotoAndStop(3);
}
else
{
   gotoAndStop(2);
}
