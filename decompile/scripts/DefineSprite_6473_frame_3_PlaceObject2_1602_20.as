//! status=pending
on(release,keyPress "1"){
   _root.problemDisp = _parent.equ + " <font color=\'#FFFF00\'>&#60;</font> " + _parent.numToCompare;
   if(_parent.finalNum < _parent.numToCompare)
   {
      _parent._parent.correct();
   }
   else
   {
      _parent._parent.wrong();
   }
}


