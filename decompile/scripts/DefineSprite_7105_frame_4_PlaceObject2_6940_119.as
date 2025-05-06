//! status=pending
onClipEvent(enterFrame){
   _root.stadiumOrder = 1;
   i = 1;
   while(i <= 4)
   {
      if(_parent.field["stadiumEnemy" + i]._x > _parent.field.stadiumHero._x)
      {
         _root.stadiumOrder += 1;
      }
      i++;
   }
   gotoAndStop(_root.stadiumOrder);
}


