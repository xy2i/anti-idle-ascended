//! status=pending
onClipEvent(enterFrame){
   rightP.correctText.text = _root.arcadeCorrectCount;
   leftP.realX = -18 - _root.arcadeCountForgiveness * 4;
   rightP.realX = 18 + _root.arcadeCountForgiveness * 4;
   _X = 50 + _root.arcadeCorrectCount * 4;
   if(_root.arcadeMyCount == _root.arcadeCorrectCount && _root.arcadeDifficulty < 8 && _root.arcadeTimeLeft < 14.5 && _root.arcadeTimeLeft > 5)
   {
      if(_root.arcadeTimeLeft >= 10)
      {
         _root.arcadeSkipBonus = 1;
      }
      _root.arcadeTimeLeft = 5;
   }
   if(_root.arcadeTimeLeft <= 5)
   {
      leftP.targetX = leftP.realX;
      rightP.targetX = rightP.realX;
   }
   else
   {
      leftP.targetX = -500;
      rightP.targetX = 1000;
   }
   leftP._x += (leftP.targetX - leftP._x) / 5;
   rightP._x += (rightP.targetX - rightP._x) / 5;
}


onClipEvent(load){
   leftP.targetX = -500;
   rightP.targetX = 1000;
}


