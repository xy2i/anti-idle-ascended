//! status=pending
on(release,keyPress "<Right>"){
   if(_root.save.fcgSpeed == 10)
   {
      _root.save.fcgSpeed = 12;
   }
   else if(_root.save.fcgSpeed == 12)
   {
      _root.save.fcgSpeed = 15;
   }
   else if(_root.save.fcgSpeed == 15)
   {
      _root.save.fcgSpeed = 20;
   }
   else if(_root.save.fcgSpeed == 20)
   {
      _root.save.fcgSpeed = 30;
   }
}


