//! status=pending
onClipEvent(enterFrame){
   del += 1 / _root.fps;
   if(whiteCoinText.text != _root.withComma(_root.save.whiteCoin))
   {
      whiteCoinText.text = _root.withComma(_root.save.whiteCoin);
      del = 0;
   }
   if(del < 5 && _X > 545)
   {
      _X = _X - 20;
   }
   else if(del > 5 && _X < 645)
   {
      _X = _X + 20;
   }
   if(this.hitTest(_root.cursor) && del > 4.5)
   {
      del = 4.5;
   }
   if(_root.save.whiteCoin == 0)
   {
      _alpha = 0;
   }
   else
   {
      _alpha = 100;
   }
}


onClipEvent(load){
   whiteCoinText.text = _root.withComma(_root.save.whiteCoin);
   del = 5;
}


