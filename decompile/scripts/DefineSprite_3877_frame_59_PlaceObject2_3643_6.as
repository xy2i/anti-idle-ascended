//! status=pending
onClipEvent(load){
   claimed = false;
   _X = random(380) + 105;
   _Y = random(45) + 140;
}


onClipEvent(mouseDown){
   if(this.hitTest(_root.cursor))
   {
      if(claimed != true)
      {
         if(_root.save.questType == "Special" && _root.save.questSubtype == "Treasure Map Piece" && Math.random() < 0.8)
         {
            _root.save.questCount += 1;
            claimed = true;
            _root.dispNews(66,"Found a Treasure Map Piece!");
         }
         else
         {
            pixelToGet = 50000 + random(6) * 10000;
            _root.save.arenaPixel += pixelToGet;
            claimed = true;
            _root.dispNews(66,"Found " + _root.withComma(pixelToGet) + " Pixels in a censored treasure chest!");
         }
      }
   }
}


