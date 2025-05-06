//! status=pending
onClipEvent(enterFrame){
   if(Math.random() < 0.9 / _root.fps && _root.arcadeTimeSpent >= 1 && _parent.firstNum - _parent.secondNum == _parent.finalNum || _root.dragonGuess == 2)
   {
      _root.dragonGuess = -1;
      _root.problemDisp = _parent.firstNumText.text + " <font color=\'#FFFF00\'>-</font> " + _parent.secondNumText.text + " = " + _parent.finalNumText.text;
      if(_parent.firstNum - _parent.secondNum == _parent.finalNum)
      {
         _parent._parent.correct();
      }
      else
      {
         _parent._parent.wrong();
      }
   }
}


