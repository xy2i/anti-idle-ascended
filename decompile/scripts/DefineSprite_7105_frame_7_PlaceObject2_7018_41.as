//! status=pending
onClipEvent(enterFrame){
   score = _root["pwnts" + t];
   scoreText.text = _root.withComma(score);
   targetScale = score / _root.roomPwnts * 100;
   hpBar._xscale += (targetScale - hpBar._xscale) / 2;
   order = 1;
   i = 1;
   while(i <= 4)
   {
      if(_root["pwnts" + i] > score && i != t)
      {
         order += 1;
      }
      if(_root["pwnts" + i] == score && i < t)
      {
         order += 1;
      }
      i++;
   }
   if(_root.pwnts >= score)
   {
      order += 1;
   }
   _Y = order * 20 + 130;
}


onClipEvent(load){
   t = 2;
   nameText.text = _root["stadiumName" + t];
}


