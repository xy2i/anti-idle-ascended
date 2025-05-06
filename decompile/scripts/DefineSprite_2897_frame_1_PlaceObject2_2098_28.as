//! status=pending
on(release){
   if(_root.save.blueCoin >= Math.floor(_root.save.progSpeedAuto * _root.save.progSpeedAuto / 300) && _root.save.progSpeedAuto < 100)
   {
      _root.save.blueCoin -= Math.floor(_root.save.progSpeedAuto * _root.save.progSpeedAuto / 300);
      _root.save.progSpeedAuto += 1;
      _root.dispNews(15,"Idle Mode Speed upgraded to " + _root.save.progSpeedAuto + "%!");
   }
   else if(_root.save.blueCoin >= Math.floor(_root.save.progSpeedAuto * _root.save.progSpeedAuto / 30) && _root.save.progSpeedAuto < 150)
   {
      _root.save.blueCoin -= Math.floor(_root.save.progSpeedAuto * _root.save.progSpeedAuto / 30);
      _root.save.progSpeedAuto += 1;
      _root.dispNews(15,"Idle Mode Speed upgraded to " + _root.save.progSpeedAuto + "%!");
   }
   else if(_root.save.blueCoin >= Math.floor((_root.save.progSpeedAuto - 149) * 750) && _root.save.progSpeedAuto < 200 && _root.save.progSpeedAuto >= 150)
   {
      _root.save.blueCoin -= Math.floor((_root.save.progSpeedAuto - 149) * 750);
      _root.save.progSpeedAuto += 1;
      _root.dispNews(15,"Idle Mode Speed upgraded to " + _root.save.progSpeedAuto + "%!");
   }
}


