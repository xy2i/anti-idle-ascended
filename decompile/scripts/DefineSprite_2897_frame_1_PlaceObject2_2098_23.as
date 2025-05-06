//! status=pending
on(release){
   if(_root.save.greenCoin >= Math.floor(_root.save.progSpeedAuto * _root.save.progSpeedAuto / 3) && _root.save.progSpeedAuto < 100)
   {
      _root.save.greenCoin -= Math.floor(_root.save.progSpeedAuto * _root.save.progSpeedAuto / 3);
      _root.save.progSpeedAuto += 1;
      _root.dispNews(15,"Idle Mode Speed upgraded to " + _root.save.progSpeedAuto + "%!");
   }
}


