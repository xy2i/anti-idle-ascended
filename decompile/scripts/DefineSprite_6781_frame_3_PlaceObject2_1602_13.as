//! status=pending
onClipEvent(enterFrame){
   if(Math.random() < 0.9 / _root.fps && _root.arcadeTimeSpent >= 1 && _parent.finalNum > _parent.numToCompare || _root.dragonGuess == 3)
   {
      _root.dragonGuess = -1;
      _root.problemDisp = _parent.equ + " <font color=\'#FFFF00\'>&#62;</font> " + _parent.numToCompare;
      if(_parent.finalNum > _parent.numToCompare)
      {
         _parent._parent.correct();
      }
      else
      {
         _parent._parent.wrong();
      }
   }
}


