//! status=pending
_parent.ult = true;
if(_parent.missileQuickAttack == true || Math.random() < 0.3)
{
   _parent.missileQuickAttack = true;
   gotoAndStop(4);
}
else if(Math.random() < 0.7)
{
   gotoAndStop(2);
}
else
{
   _parent.missilePower = Math.ceil(_parent.missilePower * 1.6);
   gotoAndStop(3);
}
