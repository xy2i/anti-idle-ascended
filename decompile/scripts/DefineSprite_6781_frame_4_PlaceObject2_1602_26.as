//! status=pending
onClipEvent(enterFrame){
   if(Math.random() < 0.9 / _root.fps && _root.arcadeTimeSpent >= 1 && _parent.corAnswer == 1 || _root.dragonGuess == 1)
   {
      _root.dragonGuess = -1;
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
}


