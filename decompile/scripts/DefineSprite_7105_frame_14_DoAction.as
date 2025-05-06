//! status=pending
function evalCost(abc)
{
   if(abc == 400)
   {
      return Infinity;
   }
   if(abc >= 300)
   {
      return Math.floor(abc * 8 - 1600);
   }
   if(abc >= 200)
   {
      return Math.floor(abc * 4 - 400);
   }
   if(abc >= 100)
   {
      return Math.floor(abc * 2 - 100);
   }
   return Math.floor(abc);
}
_root.stadiumHatUnlocked = 0;
if(_root.save.stadiumRace >= 500 || _root.save.stadiumImpossibleRace >= 25)
{
   _root.stadiumHatUnlocked += 1;
}
if(_root.save.stadiumItem >= 500 || _root.save.stadiumImpossibleItem >= 25)
{
   _root.stadiumHatUnlocked += 1;
}
if(_root.save.stadiumDeathMatch >= 50 || _root.save.stadiumBestDeathMatch >= 1000)
{
   _root.stadiumHatUnlocked += 1;
}
if(_root.save.aceFinish > 0)
{
   _root.stadiumHatUnlocked += 1;
}
if(_root.save.stadiumBetCorrect >= 50)
{
   _root.stadiumHatUnlocked += 1;
}
if(_root.save.stadiumTokenMax >= 1000000)
{
   _root.stadiumHatUnlocked += 1;
}
if(_root.save.stadiumBunnyHat == true)
{
   _root.stadiumHatUnlocked += 1;
}
if(_root.save.stadiumH1 == true)
{
   _root.stadiumHatUnlocked += 1;
}
if(_root.save.stadiumH2 == true)
{
   _root.stadiumHatUnlocked += 1;
}
if(_root.save.stadiumH3 == true)
{
   _root.stadiumHatUnlocked += 1;
}
onEnterFrame = function()
{
   upCostText.text = _root.withComma(evalCost(_root.save.stadiumAbilityCost));
   i = 1;
   while(i <= 8)
   {
      this["ext" + i] = 0;
      i++;
   }
   if(_root.save.stadiumHat == 2)
   {
      ext2 += 5;
      ext3 += 5;
      ext8 += 15;
   }
   if(_root.save.stadiumHat == 3)
   {
      ext4 += 5;
      ext5 += 5;
      ext7 += 5;
      ext8 += 15;
   }
   if(_root.save.stadiumHat == 4)
   {
      ext1 += 15;
      ext8 += 20;
   }
   if(_root.save.stadiumHat == 5)
   {
      ext6 += 10;
      ext8 += 20;
   }
   if(_root.save.stadiumHat == 6)
   {
      ext2 += 15;
      ext3 += 5;
      ext5 += 5;
   }
   if(_root.save.stadiumHat == 7)
   {
      ext8 += 25;
   }
   if(_root.save.stadiumHat == 8)
   {
      ext3 += 5;
      ext6 += 10;
   }
   if(_root.save.stadiumHat == 9)
   {
      i = 1;
      while(i <= 8)
      {
         this["ext" + i] += 2;
         i++;
      }
   }
   if(_root.save.stadiumHat == 10)
   {
      i = 1;
      while(i <= 8)
      {
         this["ext" + i] += 5;
         i++;
      }
   }
   if(_root.save.stadiumHat == 11)
   {
      i = 1;
      while(i <= 8)
      {
         this["ext" + i] += 10;
         i++;
      }
   }
   abil1.text = _root.save.stadiumEnergy + ext1;
   abil2.text = _root.save.stadiumAccel + ext2;
   abil3.text = _root.save.stadiumMaxSpeed + ext3;
   abil4.text = _root.save.stadiumStartSpeed + ext4;
   abil5.text = _root.save.stadiumDash + ext5;
   abil6.text = _root.save.stadiumJump + ext6;
   abil7.text = _root.save.stadiumBoost + ext7;
   abil8.text = _root.save.stadiumReward + ext8;
   i = 1;
   while(i <= 8)
   {
      if(this["ext" + i] > 0)
      {
         this["abil" + i].textColor = 10092543;
      }
      else if(this["abil" + i].text == 50)
      {
         this["abil" + i].textColor = 16776960;
      }
      else
      {
         this["abil" + i].textColor = 10092288;
      }
      i++;
   }
};
