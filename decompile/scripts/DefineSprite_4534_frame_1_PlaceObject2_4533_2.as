//! status=pending
onClipEvent(enterFrame){
   if(_root.house.arena._currentframe == 1)
   {
      curSpd += (targetSpd - curSpd) / 10;
      del += 1;
      if(del < 200)
      {
         targetSpd = 0;
      }
      if(del >= 200 && del < 400)
      {
         gotoAndStop(1);
         targetSpd = 10;
      }
      if(del >= 400)
      {
         del = 0;
         if(_root.save.arenaSkillMax[56] >= 50)
         {
            del = 80;
         }
         fr = random(8) + 2;
         gotoAndStop(fr);
      }
      _parent._rotation += curSpd;
   }
}


onClipEvent(load){
   del = 0;
   targetSpd = 0;
   curSpd = 0;
}


