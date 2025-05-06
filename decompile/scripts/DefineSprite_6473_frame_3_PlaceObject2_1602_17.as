//! status=pending
on(release,keyPress "2"){
   _root.problemDisp = _parent.equ + " <font color=\'#FFFF00\'>=</font> " + _parent.numToCompare;
   if(_parent.finalNum == _parent.numToCompare)
   {
      _parent._parent.correct();
   }
   else
   {
      _parent._parent.wrong();
   }
}


