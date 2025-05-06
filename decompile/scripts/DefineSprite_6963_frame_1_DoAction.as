//! status=pending
if(_root.save.stadiumBunnyHat != true && _root.stadiumOrder >= 2)
{
   gotoAndStop(10);
}
else
{
   gotoAndStop(2 + random(8));
}
