//! status=pending
on(release,keyPress "<Left>"){
   if(_root.save.fcgSpeed == 12)
   {
      _root.save.fcgSpeed = 10;
   }
   else if(_root.save.fcgSpeed == 15)
   {
      _root.save.fcgSpeed = 12;
   }
   else if(_root.save.fcgSpeed == 20)
   {
      _root.save.fcgSpeed = 15;
   }
   else if(_root.save.fcgSpeed == 30)
   {
      _root.save.fcgSpeed = 20;
   }
}


