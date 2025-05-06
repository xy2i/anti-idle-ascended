//! status=pending
onClipEvent(enterFrame){
   _root.stadiumOrder = 1;
   i = 1;
   while(i <= 4)
   {
      if(_parent.field["stadiumEnemy" + i].score > _parent.field.stadiumHero.score && !isNaN(_parent.field["stadiumEnemy" + i].score))
      {
         _root.stadiumOrder += 1;
      }
      i++;
   }
   gotoAndStop(_root.stadiumOrder);
}


