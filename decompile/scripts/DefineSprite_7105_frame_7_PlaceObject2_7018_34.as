//! status=pending
onClipEvent(enterFrame){
   score = _root.pwnts;
   scoreText.text = _root.withComma(score);
   targetScale = score / _root.roomPwnts * 100;
   hpBar._xscale += (targetScale - hpBar._xscale) / 2;
   order = 1;
   i = 1;
   while(i <= 4)
   {
      if(_root["pwnts" + i] > score)
      {
         order += 1;
      }
      i++;
   }
   _Y = order * 20 + 130;
}


onClipEvent(load){
   nameText.text = _root.stadiumName;
}


