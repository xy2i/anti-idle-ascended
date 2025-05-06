//! status=pending
on(release){
   if(_currentframe == 1)
   {
      _root.save.defStatPage = 2;
      gotoAndStop(2);
   }
   else if(_currentframe == 2)
   {
      _root.save.defStatPage = 3;
      gotoAndStop(3);
   }
   else
   {
      _root.save.defStatPage = 1;
      gotoAndStop(1);
   }
}


