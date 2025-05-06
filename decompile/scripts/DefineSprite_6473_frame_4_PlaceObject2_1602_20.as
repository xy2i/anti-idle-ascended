//! status=pending
on(release,keyPress "3"){
   _root.problemDisp = _parent.firstNum + " / " + _parent.secondNum + " = <font color=\'#FFFF00\'>" + _parent.choice3.text + "</font>";
   if(_parent.corAnswer == 3)
   {
      _parent._parent.correct();
   }
   else
   {
      _parent._parent.wrong();
   }
}


