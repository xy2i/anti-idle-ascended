//! status=pending
if(_root.saveid < 10)
{
   if(_root.saveGlobal.challengePerfect[0] == true && _root.save.challengePerfect[0] != true && _root.emptyAccessorySlot > 0)
   {
      _root.save.challengePerfect[0] = true;
      _root.getArenaAccessory(100,"Medal",70,0,0,0,50,50,50,1,0,1,0,10,706,"Random","Random","Random",0,Infinity,false,false,false,false,0,"Speed Runner","You managed to beat Speedrun Mode! Congratulations!",true);
   }
   i = 1;
   while(i <= 6)
   {
      if(_root.saveGlobal.challengeAttempted[i] == true && _root.save.challengeAttempted[i] != true && _root.emptyArmorSlot > 0)
      {
         _root.save.challengeAttempted[i] = true;
         _root.getArenaArmor(50,"Skin",13 + i,0,0,125,0,0,0,1,0,1,0,7,0,"Random","Random","Random",0,Infinity,false,false,true,false,false,0,"Challenge #" + i + " Participant","Thank you for participating in Challenge #" + i + "!",true);
      }
      if(!isNaN(_root.saveGlobal.challengeTime[i]) && _root.save.challengeClear[i] != true && _root.emptyAccessorySlot > 0)
      {
         _root.save.challengeClear[i] = true;
         if(i == 1)
         {
            medalName = "This is NOT a Restaurant";
         }
         if(i == 2)
         {
            medalName = "Defenseless Warrior";
         }
         if(i == 3)
         {
            medalName = "Peaceful Player";
         }
         if(i == 4)
         {
            medalName = "Time Traveler";
         }
         if(i == 5)
         {
            medalName = "FCG Master";
         }
         if(i == 6)
         {
            medalName = "Zombie";
         }
         _root.getArenaAccessory(100,"Medal",70 + i,0,0,0,50,50,50,1,0,1,0,10,706,"Random","Random","Random",0,Infinity,false,false,false,false,0,medalName,"You managed to beat Challenge #" + i + "! Congratulations!",true);
      }
      if((_root.saveGlobal.challengePerfect[i] == true || !isNaN(_root.saveGlobal.challengeTime[i])) && _root.save.challengePerfect[i] != true && _root.emptyWeaponSlot > 0)
      {
         _root.save.challengePerfect[i] = true;
         _root.getArenaWeapon(150,"Trophy",318 + i,false,1337,10,200,20,20,20,9999,0,9999,0,0,706,"EXP","Boss Damage","Attack Power",0,Infinity,true,true,true,false,false,25,"Challenge #" + i + " Master","You completed Challenge #" + i + " before the deadline! Congratulations!\n\nKeep this Trophy in your inventory for a +1% Drop Rate bonus.",true);
      }
      i++;
   }
}
_root.antiLag = 0;
_root.antiLag2 = 0;
_root.summonCount = 0;
onEnterFrame = null;
