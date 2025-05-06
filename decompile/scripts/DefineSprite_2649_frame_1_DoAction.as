//! status=pending
stop();
if(_root.save.banned <= 0 && _root.saveid < 10)
{
   gotoAndStop(2);
}
ascentText.text = "+" + _root.save.banned;
