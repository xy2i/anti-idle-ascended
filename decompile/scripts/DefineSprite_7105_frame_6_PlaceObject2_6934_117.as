//! status=pending
onClipEvent(enterFrame){
   _root.stadiumTimer -= 0.025;
   timer.text = _root.convertSec(_root.stadiumTimer);
   if(_root.stadiumTimer >= 420)
   {
      timer.textColor = 10066329;
   }
   else if(_root.stadiumTimer >= 180)
   {
      timer.textColor = 65280;
   }
   else if(_root.stadiumTimer >= 60)
   {
      timer.textColor = 16776960;
   }
   else
   {
      timer.textColor = 16711680;
   }
   if(_root.stadiumTimer < 0)
   {
      _root.roomPwnts = 0;
      _root.pwnts = _parent.field.stadiumHero.score;
      _root.stadiumName = _parent.field.stadiumHero.mehName;
      _root.roomPwnts += _root.pwnts;
      i = 1;
      while(i <= 4)
      {
         _root["pwnts" + i] = _parent.field["stadiumEnemy" + i].score;
         _root["stadiumName" + i] = _parent.field["stadiumEnemy" + i].mehName;
         _root.roomPwnts += _root["pwnts" + i];
         i++;
      }
      if(_parent.field.stadiumHero.pac == 1)
      {
         _root.save.pacifist = 1337;
      }
      if(_parent.field.stadiumHero.noDeath == 1)
      {
         _root.save.noDeath = 1337;
      }
      _parent.gotoAndStop(7);
   }
}


onClipEvent(load){
   _root.stadiumTimer = 430;
}


