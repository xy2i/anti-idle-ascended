//! status=pending
on(release,keyPress "4"){
   _root.problemDisp = _parent.firstNum + " x " + _parent.secondNum + " = <font color=\'#FFFF00\'>" + _parent.choice4.text + "</font>";
   if(_parent.corAnswer == 4)
   {
      _parent._parent.correct();
   }
   else
   {
      _parent._parent.wrong();
   }
}


