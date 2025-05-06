//! status=pending
onEnterFrame = null;
i = 1;
while(i <= 12)
{
   if(_root.save.ripoffCard[i] > 999)
   {
      _root.save.ripoffCard[i] = 999;
   }
   i++;
}
