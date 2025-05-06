//! status=pending
onClipEvent(enterFrame){
   delay += 1;
   if(delay > 2)
   {
      delay = 0;
      checkFrame();
   }
}


onClipEvent(load){
   function createSquare(col, alp)
   {
      if(_root.saveid != 4 || _root.kongregate_username == "Tukkun" || _root.kongregate_username == "Kongregate Username" || _root.kongregate_username == undefined)
      {
         this.createEmptyMovieClip("square_mc",100);
         square_mc.beginFill(col,alp);
         square_mc.moveTo(0,0);
         square_mc.lineTo(650,0);
         square_mc.lineTo(650,650);
         square_mc.lineTo(0,650);
         square_mc.lineTo(0,0);
         square_mc.endFill();
      }
   }
   function checkFrame()
   {
      newCol = _root.save.bgred * 65536 + _root.save.bggreen * 256 + _root.save.bgblue;
      if(_currentframe != _root.save.bgNum || tempCol != newCol)
      {
         gotoAndStop(_root.save.bgNum);
         tempCol = newCol;
         if(_root.save.bgNum == 8)
         {
            createSquare(newCol,100);
         }
         else
         {
            createSquare(newCol,20);
         }
      }
      if(_root.saveid == 4 && _root.kongregate_username != "Tukkun")
      {
         gotoAndStop(9);
      }
   }
   delay = 2;
   tempCol = -1;
   checkFrame();
}


