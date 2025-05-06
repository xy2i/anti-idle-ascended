//! status=pending
onClipEvent(enterFrame){
   progPct = _root.finalExp / expReq * 100;
   if(progPct > 100)
   {
      progPct = 100;
   }
   if(_root.saveid >= 20)
   {
      if(_root.save.challengeToken == Math.floor(_root.saveid * (_root.saveid + 1) * (_root.saveid - 7) * 156.4))
      {
         progPct = 100;
      }
      else
      {
         progPct = 0;
         if(_root.saveid == 23)
         {
            progPct = _root.save.level / 3000 * 100;
         }
         if(_root.saveid == 24)
         {
            progPct = _root.save.level / 1337 * 100;
         }
         if(_root.saveid == 25)
         {
            progPct = _root.save.fcgLevel10 / 80 * 100;
         }
         if(_root.saveid == 26)
         {
            progPct = _root.totalAllyTamed / 2;
         }
      }
   }
   _xscale = 100 - progPct;
   _parent.progText.text = Math.floor(progPct) + "%";
}


onClipEvent(load){
   expReq = 2500000000000;
   if(_root.save.gDifficulty == 2)
   {
      expReq *= 2;
   }
   if(_root.save.gDifficulty == 3)
   {
      expReq *= 4;
   }
   if(_root.save.gOldAscension == false)
   {
      if(_root.save.banned >= 1000)
      {
         expReq += 25000000000000;
      }
      else if(_root.save.banned >= 800)
      {
         expReq += 10000000000 * (_root.save.banned - 800) + 23000000000000;
      }
      else if(_root.save.banned >= 600)
      {
         expReq += 20000000000 * (_root.save.banned - 600) + 19000000000000;
      }
      else if(_root.save.banned >= 400)
      {
         expReq += 30000000000 * (_root.save.banned - 400) + 13000000000000;
      }
      else if(_root.save.banned >= 200)
      {
         expReq += 40000000000 * (_root.save.banned - 200) + 5000000000000;
      }
      else if(_root.save.banned >= 100)
      {
         expReq += 50000000000 * (_root.save.banned - 100);
      }
   }
   if(_root.saveid >= 10)
   {
      expReq = 3000000000000;
   }
}


