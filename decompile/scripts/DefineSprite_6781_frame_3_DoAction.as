//! status=pending
sign = random(4) + 1;
complication = 0;
if(sign == 1)
{
   secondNum = random(10) + _root.arcadeDifficulty;
   firstNum = secondNum + random(10 + _root.arcadeDifficulty);
   finalNum = firstNum + secondNum;
   equ = firstNum + " + " + secondNum;
   complication += finalNum / 25;
}
if(sign == 2)
{
   secondNum = random(10) + _root.arcadeDifficulty;
   firstNum = secondNum + random(10 + _root.arcadeDifficulty);
   finalNum = firstNum - secondNum;
   equ = firstNum + " - " + secondNum;
   complication += finalNum / 15;
}
if(sign == 3)
{
   secondNum = random(10) + Math.floor(_root.arcadeDifficulty / 3);
   firstNum = secondNum + random(10);
   finalNum = firstNum * secondNum;
   equ = firstNum + " x " + secondNum;
   complication += finalNum / 35;
}
if(sign == 4)
{
   secondNum = 1 + random(10) + Math.floor(_root.arcadeDifficulty / 3);
   firstNum = secondNum * random(5 + Math.floor(_root.arcadeDifficulty / 3));
   finalNum = firstNum / secondNum;
   equ = firstNum + " / " + secondNum;
   complication += finalNum / 5;
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
   }
   else
   {
      corAnswer = 2;
   }
   if(Math.abs(finalNum - numToCompare) % 10 == 0)
   {
      complication += 5;
   }
   complication += 3 - Math.abs(finalNum - numToCompare) / 10;
}
if(corAnswer == 2)
{
   numToCompare = finalNum;
   complication += 3;
}
if(corAnswer == 1)
{
   numToCompare = Math.floor(finalNum + finalNum * difference / 100) + 1;
   if(Math.abs(finalNum - numToCompare) % 10 == 0)
   {
      complication += 5;
   }
   complication += 3 - Math.abs(finalNum - numToCompare) / 10;
}
if(complication < 0)
{
   complication = 0;
}
firstNumText.text = _root.withComma(firstNum);
secondNumText.text = _root.withComma(secondNum);
finalNumText.text = _root.withComma(numToCompare);
assistDuration = 0;
if(_root.save.rankedMode != true)
{
   assistDuration = _root.save.unrankedPower[13] * 0.5;
}
onEnterFrame = function()
{
   if(_root.arcadeTimeSpent >= 0.5 + complication / 10 && Math.random() < 10 / _root.fps)
   {
      _root.dragonGuess = corAnswer;
      if(Math.random() < 0.2)
      {
         _parent.dragonSpeech.speech("Inequalities are usually difficult, but sometimes the answer is very obvious! Sometimes you only need to estimate.");
      }
   }
   if(_root.arcadeTimeSpent >= 2.5 && _root.arcadeTimeSpent < 2.7)
   {
      _parent.dragonSpeech.speech("Hmm...");
   }
   if(_root.arcadeTimeSpent >= 4 && Math.random() < 1 / _root.fps && _root.dragonGuess == 0)
   {
      _root.dragonGuess = 1 + random(3);
   }
   assistDuration += 1 / _root.fps;
   if(assistDuration > 2 + _root.arcadeDifficulty / 10)
   {
      mathAssist.gotoAndStop(2);
      mathAssist.assistText.text = _root.withComma(finalNum);
      assistDuration = -70;
   }
};
