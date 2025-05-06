//! status=pending
onClipEvent(enterFrame){
   del += 1;
   if(del > 2)
   {
      del = 0;
      score = _parent._parent.field["stadiumEnemy" + t].score;
      scoreText.text = _root.withComma(score);
      targetScale = _parent._parent.field["stadiumEnemy" + t].health;
      hpBar._xscale += (targetScale - hpBar._xscale) / 2;
      order = 1;
      i = 1;
      while(i <= 4)
      {
         if(_parent._parent.field["stadiumEnemy" + i].score > score && i != t)
         {
            order += 1;
         }
         if(_parent._parent.field["stadiumEnemy" + i].score == score && i < t)
         {
            order += 1;
         }
         i++;
      }
      if(_parent._parent.field.stadiumHero.score >= score)
      {
         order += 1;
      }
      _Y = order * 20 - 20;
   }
}


onClipEvent(load){
   t = 3;
   nameText.text = _parent._parent.field["stadiumEnemy" + t].mehName;
   del = 2;
}


