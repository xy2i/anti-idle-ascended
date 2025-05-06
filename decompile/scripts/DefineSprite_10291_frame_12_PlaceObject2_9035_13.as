//! status=pending
onClipEvent(enterFrame){
   if(targetMove > 0)
   {
      nextMove = Math.ceil(targetMove / 25) * 5;
   }
   else
   {
      nextMove = Math.floor(targetMove / 25) * 5;
   }
   _X = _X + nextMove;
   targetMove -= nextMove;
   if(_X < -650)
   {
      _X = _X + 1300;
      fr += 2;
   }
   if(_X > 650)
   {
      _X = _X - 1300;
      fr -= 2;
   }
   gotoAndStop(fr);
}


onClipEvent(load){
   fr = _parent.auView;
   targetMove = 0;
}


