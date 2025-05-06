//! status=pending
on(release,keyPress "4"){
   _root.problemDisp = _parent.firstNumText.text + " <font color=\'#FFFF00\'>/</font> " + _parent.secondNumText.text + " = " + _parent.finalNumText.text;
   if(_parent.finalNum * _parent.secondNum == _parent.firstNum && _parent.secondNum != 0)
   {
      _parent._parent.correct();
   }
   else
   {
      _parent._parent.wrong();
      if(_parent.secondNum == 0)
      {
         _root.save.chuckNorris = 1337;
      }
   }
}


