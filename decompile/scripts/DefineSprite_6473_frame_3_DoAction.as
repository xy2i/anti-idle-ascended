//! status=pending
sign = random(4) + 1;
if(sign == 1)
{
   secondNum = random(10) + _root.arcadeDifficulty;
   firstNum = secondNum + random(10 + _root.arcadeDifficulty);
   finalNum = firstNum + secondNum;
   equ = firstNum + " + " + secondNum;
}
if(sign == 2)
{
   secondNum = random(10) + _root.arcadeDifficulty;
   firstNum = secondNum + random(10 + _root.arcadeDifficulty);
   finalNum = firstNum - secondNum;
   equ = firstNum + " - " + secondNum;
}
if(sign == 3)
{
   secondNum = random(10) + Math.floor(_root.arcadeDifficulty / 3);
   firstNum = secondNum + random(10);
   finalNum = firstNum * secondNum;
   equ = firstNum + " x " + secondNum;
}
if(sign == 4)
{
   secondNum = 1 + random(10) + Math.floor(_root.arcadeDifficulty / 3);
   firstNum = secondNum * random(5 + Math.floor(_root.arcadeDifficulty / 3));
   finalNum = firstNum / secondNum;
   equ = firstNum + " / " + secondNum;
}
numToCompare = finalNum;
corAnswer = random(3) + 1;
difference = random(50 - _root.arcadeDifficulty);
if(difference < 1)
{
   difference = 1;
}
if(corAnswer == 3)
{
   if(finalNum > 0)
   {
      numToCompare = Math.ceil(finalNum - finalNum * difference / 100) - 1;
      if(Math.random() < 0.002 * Math.pow(_root.save.arcadeDifficulty[3],4) && numToCompare > 20)
      {
         numToCompare -= 10;
      }
   }
   else
   {
      corAnswer = 2;
   }
}
if(corAnswer == 2)
{
   numToCompare = finalNum;
}
if(corAnswer == 1)
{
   numToCompare = Math.floor(finalNum + finalNum * difference / 100) + 1;
   if(Math.random() < 0.25 && numToCompare > 30)
   {
      numToCompare += 10;
   }
}
firstNumText.text = _root.withComma(firstNum);
secondNumText.text = _root.withComma(secondNum);
finalNumText.text = _root.withComma(numToCompare);
assistDuration = 0;
if(_root.save.rankedMode != true)
{
   assistDuration = _root.save.unrankedPower[13] * 0.5;
}
if(_root.save.arcadeConfig5 == false)
{
   assistDuration = -999;
}
onEnterFrame = function()
{
   assistDuration += 1 / _root.fps;
   if(assistDuration > 2 + _root.arcadeDifficulty / 10)
   {
      mathAssist.gotoAndStop(2);
      mathAssist.assistText.text = _root.withComma(finalNum);
      assistDuration = -70;
   }
};
