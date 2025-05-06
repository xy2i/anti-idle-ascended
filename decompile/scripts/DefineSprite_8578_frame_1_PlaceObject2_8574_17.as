//! status=pending
onClipEvent(enterFrame){
   dotID1 = 6;
   dotID2 = 7;
   _X = _parent["dot" + dotID1]._x;
   _Y = _parent["dot" + dotID1]._y;
   _xscale = (_parent["dot" + dotID2]._x - _parent["dot" + dotID1]._x) * 10;
   _yscale = (_parent["dot" + dotID2]._y - _parent["dot" + dotID1]._y) * 10;
   if(_yscale >= 0 && _yscale < 1)
   {
      _yscale = 1;
   }
   if(_yscale < 0 && _yscale > -1)
   {
      _yscale = -1;
   }
}


