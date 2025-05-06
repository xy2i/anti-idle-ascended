//! status=pending
on(release){
   if(_root.save.blueCoin >= Math.floor(_root.save.progSpeedManual * _root.save.progSpeedManual / 5000) && _root.save.progSpeedManual < 200)
   {
      _root.save.blueCoin -= Math.floor(_root.save.progSpeedManual * _root.save.progSpeedManual / 5000);
      _root.save.progSpeedManual += 1;
      _root.dispNews(15,"Anti-Idle Mode Speed upgraded to " + _root.save.progSpeedManual + "%!");
   }
   else if(_root.save.blueCoin >= Math.floor(_root.save.progSpeedManual * _root.save.progSpeedManual / 500) && _root.save.progSpeedManual < 300)
   {
      _root.save.blueCoin -= Math.floor(_root.save.progSpeedManual * _root.save.progSpeedManual / 500);
      _root.save.progSpeedManual += 1;
      _root.dispNews(15,"Anti-Idle Mode Speed upgraded to " + _root.save.progSpeedManual + "%!");
   }
   else if(_root.save.blueCoin >= Math.floor((_root.save.progSpeedManual - 299) * 180) && _root.save.progSpeedManual < 400 && _root.save.progSpeedManual >= 300)
   {
      _root.save.blueCoin -= Math.floor((_root.save.progSpeedManual - 299) * 180);
      _root.save.progSpeedManual += 1;
      _root.dispNews(15,"Anti-Idle Mode Speed upgraded to " + _root.save.progSpeedManual + "%!");
   }
}


