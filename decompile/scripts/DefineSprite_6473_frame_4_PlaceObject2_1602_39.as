//! status=pending
on(release,keyPress "1"){
   _root.problemDisp = _parent.firstNum + " / " + _parent.secondNum + " = <font color=\'#FFFF00\'>" + _parent.choice1.text + "</font>";
   if(_parent.corAnswer == 1)
   {
      _parent._parent.correct();
   }
   else
   {
      _parent._parent.wrong();
   }
}


