//! status=pending
onClipEvent(enterFrame){
   _root.stadiumOrder = 1;
   i = 1;
   while(i <= 4)
   {
      if(i != _root.betTarget)
      {
         if(_parent.field["stadiumEnemy" + i]._x > _parent.field["stadiumEnemy" + _root.betTarget]._x)
         {
            _root.stadiumOrder += 1;
         }
      }
      i++;
   }
   gotoAndStop(_root.stadiumOrder);
}


