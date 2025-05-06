//! status=pending
on(release){
   if(_root.save.greenCoin >= Math.floor(_root.save.progSpeedManual * _root.save.progSpeedManual / 50) && _root.save.progSpeedManual < 200)
   {
      _root.save.greenCoin -= Math.floor(_root.save.progSpeedManual * _root.save.progSpeedManual / 50);
      _root.save.progSpeedManual += 1;
      _root.dispNews(15,"Anti-Idle Mode Speed upgraded to " + _root.save.progSpeedManual + "%!");
   }
}


