//! status=pending
on(release){
   if(_root.save.questToken >= 10000)
   {
      _root.save.questToken -= 10000;
      _root.save.featureSpecialShop = true;
      i = 1;
      while(i <= 34)
      {
         _root.save.specialStock[i] = 0;
         if(Math.random() < 0.5)
         {
            _root.save.specialStock[i] = random(5) + 1;
         }
         if(_root.saveid >= 20)
         {
            _root.save.specialStock[i] = 5;
         }
         i++;
      }
      _root.save.specialStock[1] = 1;
      _root.save.specialStock[2] = 5;
      _root.save.specialStock[27] = 1;
      _root.save.specialStock[28] = 1;
      _root.save.specialStock[29] = 1;
      _root.save.specialStock[30] = 1;
      _parent.gotoAndStop(19);
   }
}


