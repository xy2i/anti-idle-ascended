//! status=pending
function choice0()
{
   if(_currentframe == 40)
   {
      if(_root.save.awesomeAuto[_currentframe] == 1)
      {
         choice1();
      }
      else if(_root.save.awesomeAuto[_currentframe] == 2)
      {
         choice2();
      }
      else if(_root.save.awesomeAuto[_currentframe] == 3)
      {
         choice3();
      }
      else if(_root.save.awesomeAuto[_currentframe] == 4)
      {
         choice4();
      }
      else if(_root.save.awesomeAuto[_currentframe] == 5)
      {
         choice5();
      }
   }
   else if(_root.save.awesomeAuto[_currentframe] == 1)
   {
      _parent.gotoAndStop(2);
   }
   else if(_root.save.awesomeAuto[_currentframe] == 2)
   {
      choice1();
   }
   else if(_root.save.awesomeAuto[_currentframe] == 3)
   {
      choice2();
   }
   else if(_root.save.awesomeAuto[_currentframe] == 4)
   {
      choice3();
   }
   else if(_root.save.awesomeAuto[_currentframe] == 5)
   {
      choice4();
   }
}
choice1 = null;
choice2 = null;
choice3 = null;
choice4 = null;
