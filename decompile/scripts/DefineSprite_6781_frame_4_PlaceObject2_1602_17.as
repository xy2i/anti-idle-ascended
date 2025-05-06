//! status=pending
onClipEvent(enterFrame){
   if(Math.random() < 0.9 / _root.fps && _root.arcadeTimeSpent >= 1 && _parent.corAnswer == 4 || _root.dragonGuess == 4)
   {
      _root.dragonGuess = -1;
      _root.problemDisp = _parent.firstNum + " / " + _parent.secondNum + " = <font color=\'#FFFF00\'>" + _parent.choice4.text + "</font>";
      if(_parent.corAnswer == 4)
      {
         _parent._parent.correct();
      }
      else
      {
         _parent._parent.wrong();
      }
   }
}


