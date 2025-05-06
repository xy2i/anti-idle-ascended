//! status=pending
function checkStat()
{
   owned = 30 - _root.emptyEnhancerSlot;
   cap = 30;
}
function purchase()
{
   if(Math.random() < 0.3)
   {
      grade = 10;
   }
   else if(Math.random() < 0.5)
   {
      grade = 9;
   }
   else if(Math.random() < 0.7)
   {
      grade = 8;
   }
   else if(Math.random() < 0.9)
   {
      grade = 7;
   }
   else
   {
      grade = 6;
   }
   _root.getArenaEnhancer("Weapon Mystery Enhancer",90 + grade,2 + grade,0,1000,"","","",0,0,0,Infinity,"Weapon Mystery Rock Lv. " + grade,"Quest Reward");
}
stop();
qtCost = 2000;
etCost = 2000;
checkStat();
