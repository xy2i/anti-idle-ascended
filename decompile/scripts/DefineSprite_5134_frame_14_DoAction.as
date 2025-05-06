//! status=pending
finalScore = _root.areaDamage;
num = finalScore;
div = 0;
prim = true;
if(num < 2 || num >= 9999999968)
{
   prim = false;
}
else
{
   i = 2;
   while(i <= Math.sqrt(num) + 1)
   {
      if(num % i == 0)
      {
         prim = false;
         div = i;
         i = num;
      }
      i++;
   }
}
digArray = new Array();
digCount = new Array();
totalDig = 0;
i = 0;
while(i <= 9)
{
   digCount[i] = 0;
   i++;
}
if(num == 0)
{
   digArray.push(0);
   digCount[0] = 1;
}
num = finalScore;
palinum = 0;
pali = false;
while(num > 0)
{
   totalDig += 1;
   palinum = palinum * 10 + num % 10;
   digArray.push(num % 10);
   digCount[num % 10] += 1;
   num = Math.floor(num / 10);
}
if(finalScore == palinum)
{
   pali = true;
}
curConsec = -1;
curConsecL = 0;
maxConsec = -1;
maxConsecL = 0;
i = 0;
while(i < digArray.length)
{
   if(curConsec != digArray[i])
   {
      curConsec = digArray[i];
      curConsecL = 1;
   }
   else
   {
      curConsecL += 1;
      if(maxConsecL <= curConsecL)
      {
         maxConsecL = curConsecL;
         maxConsec = curConsec;
      }
   }
   i++;
}
uniqueCount = 0;
allUnique = true;
i = 0;
while(i <= 9)
{
   if(digCount[i] >= 1)
   {
      uniqueCount += 1;
   }
   if(digCount[i] >= 2)
   {
      allUnique = false;
   }
   i++;
}
bonList = new Array();
bonMult = new Array();
bonList.push("No Bonus");
bonMult.push(0);
bonList.push("No Bonus");
bonMult.push(0);
if(finalScore > 0)
{
   if(totalDig >= 2)
   {
      bonList.push(totalDig + " Digits");
      bonMult.push(totalDig * 5);
   }
   if(finalScore % 100000000 == 0)
   {
      bonList.push("Divisible by 100,000,000");
      bonMult.push(400);
   }
   else if(finalScore % 50000000 == 0)
   {
      bonList.push("Divisible by 50,000,000");
      bonMult.push(350);
   }
   else if(finalScore % 25000000 == 0)
   {
      bonList.push("Divisible by 25,000,000");
      bonMult.push(325);
   }
   else if(finalScore % 10000000 == 0)
   {
      bonList.push("Divisible by 10,000,000");
      bonMult.push(300);
   }
   else if(finalScore % 5000000 == 0)
   {
      bonList.push("Divisible by 5,000,000");
      bonMult.push(275);
   }
   else if(finalScore % 2500000 == 0)
   {
      bonList.push("Divisible by 2,500,000");
      bonMult.push(250);
   }
   else if(finalScore % 1000000 == 0)
   {
      bonList.push("Divisible by 1,000,000");
      bonMult.push(225);
   }
   else if(finalScore % 500000 == 0)
   {
      bonList.push("Divisible by 500,000");
      bonMult.push(200);
   }
   else if(finalScore % 250000 == 0)
   {
      bonList.push("Divisible by 250,000");
      bonMult.push(175);
   }
   else if(finalScore % 100000 == 0)
   {
      bonList.push("Divisible by 100,000");
      bonMult.push(150);
   }
   else if(finalScore % 50000 == 0)
   {
      bonList.push("Divisible by 50,000");
      bonMult.push(125);
   }
   else if(finalScore % 25000 == 0)
   {
      bonList.push("Divisible by 25,000");
      bonMult.push(100);
   }
   else if(finalScore % 10000 == 0)
   {
      bonList.push("Divisible by 10,000");
      bonMult.push(90);
   }
   else if(finalScore % 5000 == 0)
   {
      bonList.push("Divisible by 5,000");
      bonMult.push(80);
   }
   else if(finalScore % 2500 == 0)
   {
      bonList.push("Divisible by 2,500");
      bonMult.push(70);
   }
   else if(finalScore % 1000 == 0)
   {
      bonList.push("Divisible by 1,000");
      bonMult.push(60);
   }
   else if(finalScore % 500 == 0)
   {
      bonList.push("Divisible by 500");
      bonMult.push(50);
   }
   else if(finalScore % 250 == 0)
   {
      bonList.push("Divisible by 250");
      bonMult.push(40);
   }
   else if(finalScore % 100 == 0)
   {
      bonList.push("Divisible by 100");
      bonMult.push(30);
   }
   else if(finalScore % 50 == 0)
   {
      bonList.push("Divisible by 50");
      bonMult.push(25);
   }
   else if(finalScore % 25 == 0)
   {
      bonList.push("Divisible by 25");
      bonMult.push(20);
   }
   else if(finalScore % 10 == 0)
   {
      bonList.push("Divisible by 10");
      bonMult.push(15);
   }
   else if(finalScore % 5 == 0)
   {
      bonList.push("Divisible by 5");
      bonMult.push(10);
   }
   else if(finalScore % 2 == 0)
   {
      bonList.push("Divisible by 2");
      bonMult.push(5);
   }
   if(prim == true)
   {
      bonList.push("Prime");
      bonMult.push(50);
   }
   if(uniqueCount == 1)
   {
      bonList.push("Repdigit");
      bonMult.push(totalDig * 100);
   }
   if(pali == true)
   {
      bonList.push("Palindrome");
      bonMult.push(totalDig * 50 + uniqueCount * 50);
   }
   if(uniqueCount > 1 && allUnique == true)
   {
      bonList.push("All Unique Digits");
      bonMult.push(uniqueCount * 10);
   }
   if(maxConsecL >= 2)
   {
      bonList.push(maxConsecL + " Consecutive " + maxConsec + "\'s");
      bonMult.push(maxConsecL * 10);
   }
}
bon1ID = 0;
bon2ID = 0;
i = 1;
while(i < bonMult.length)
{
   if(bonMult[i] >= bonMult[bon1ID])
   {
      bon1ID = i;
   }
   i++;
}
i = 1;
while(i < bonMult.length)
{
   if(bonMult[i] >= bonMult[bon2ID] && i != bon1ID)
   {
      bon2ID = i;
   }
   i++;
}
a1 = Math.floor(Math.pow(finalScore,0.4) * 25 * _root.save.boost / 100) * 1000;
b1 = Math.floor(Math.pow(finalScore,0.4) * 0.05 + 1);
t4.text = bonList[bon1ID] + ":";
a2 = Math.ceil(a1 * bonMult[bon1ID] / 100);
b2 = Math.ceil(b1 * bonMult[bon1ID] / 100);
t7.text = bonList[bon2ID] + ":";
a3 = Math.ceil(a1 * bonMult[bon2ID] / 100);
b3 = Math.ceil(b1 * bonMult[bon2ID] / 100);
if(_root.worstMoon == true)
{
   a1 = Math.floor(a1 * 5);
   a2 = Math.floor(a2 * 5);
   a3 = Math.floor(a3 * 5);
   b1 = Math.floor(b1 * 5);
   b2 = Math.floor(b2 * 5);
   b3 = Math.floor(b3 * 5);
}
if(_root.apocalypse == true)
{
   a1 = Math.floor(a1 * 2);
   a2 = Math.floor(a2 * 2);
   a3 = Math.floor(a3 * 2);
   b1 = Math.floor(b1 * 2);
   b2 = Math.floor(b2 * 2);
   b3 = Math.floor(b3 * 2);
}
if(_root.areaPract == true)
{
   a1 = Math.floor(a1 * 0.001);
   a2 = Math.floor(a2 * 0.001);
   a3 = Math.floor(a3 * 0.001);
   b1 = 0;
   b2 = 0;
   b3 = 0;
}
a4 = a1 + a2 + a3;
b4 = b1 + b2 + b3;
t1.text = _root.withComma(finalScore);
t2.text = "+" + _root.withComma(a1);
t3.text = "+" + _root.withComma(b1);
t5.text = "+" + _root.withComma(a2);
t6.text = "+" + _root.withComma(b2);
t8.text = "+" + _root.withComma(a3);
t9.text = "+" + _root.withComma(b3);
t10.text = "+" + _root.withComma(a4);
t11.text = "+" + _root.withComma(b4);
if(isNaN(a4))
{
   a4 = 0;
}
if(isNaN(b4))
{
   b4 = 0;
}
_root.gainEXP(a4);
_root.save.battlePoint += b4;
if(_root.save.raidSpecial < finalScore)
{
   _root.save.raidSpecial = finalScore;
}
