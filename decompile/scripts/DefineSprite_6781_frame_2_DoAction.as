//! status=pending
sign = random(4) + 1;
complication = 0;
if(sign == 1)
{
   secondNum = random(10);
   firstNum = secondNum + random(10);
   finalNum = firstNum + secondNum;
}
if(sign == 2)
{
   secondNum = random(10);
   firstNum = secondNum + random(10);
   finalNum = firstNum - secondNum;
}
if(sign == 3)
{
   secondNum = random(5);
   firstNum = secondNum + random(5);
   finalNum = firstNum * secondNum;
}
if(sign == 4)
{
   secondNum = 1 + random(5);
   firstNum = secondNum * random(5);
   finalNum = firstNum / secondNum;
}
complication = firstNum / 10;
if(sign == 2)
{
   complication = finalNum / 10;
}
if(firstNum % secondNum == 0)
{
   complication /= 4;
}
if(finalNum % secondNum == 0)
{
   complication /= 4;
}
firstNumText.text = firstNum;
secondNumText.text = secondNum;
finalNumText.text = finalNum;
if(_root.arcadeDifficulty >= 10 && Math.random() < 0.8)
{
   if(finalNum > 0)
   {
      if(Math.random() < 0.5 || _root.arcadeDifficulty <= 20)
      {
         complication += 4;
         xNumPt1 = random(finalNum);
         xNumPt2 = finalNum - xNumPt1;
         finalNumText.text = xNumPt1 + "+" + xNumPt2;
      }
      else
      {
         complication += 5;
         xNumPt1 = finalNum + random(10);
         xNumPt2 = xNumPt1 - finalNum;
         finalNumText.text = xNumPt1 + "-" + xNumPt2;
      }
   }
}
if(_root.arcadeDifficulty >= 15 && Math.random() < 0.8)
{
   if(finalNum > 0)
   {
      if(Math.random() < 0.5 || _root.arcadeDifficulty <= 25)
      {
         complication += 4;
         xNumPt1 = random(firstNum);
         xNumPt2 = firstNum - xNumPt1;
         firstNumText.text = "(" + xNumPt1 + "+" + xNumPt2 + ")";
      }
      else
      {
         complication += 5;
         xNumPt1 = firstNum + random(10);
         xNumPt2 = xNumPt1 - firstNum;
         firstNumText.text = "(" + xNumPt1 + "-" + xNumPt2 + ")";
      }
   }
}
if(_root.arcadeDifficulty >= 20 && Math.random() < 0.8)
{
   if(finalNum > 0)
   {
      if(Math.random() < 0.5 || _root.arcadeDifficulty <= 30)
      {
         complication += 4;
         xNumPt1 = random(secondNum);
         xNumPt2 = secondNum - xNumPt1;
         secondNumText.text = "(" + xNumPt1 + "+" + xNumPt2 + ")";
      }
      else
      {
         complication += 5;
         xNumPt1 = secondNum + random(10);
         xNumPt2 = xNumPt1 - secondNum;
         secondNumText.text = "(" + xNumPt1 + "-" + xNumPt2 + ")";
      }
   }
}
assistDuration = 0;
if(_root.save.rankedMode != true)
{
   assistDuration = _root.save.unrankedPower[13] * 0.5;
}
onEnterFrame = function()
{
   if(_root.arcadeTimeSpent >= 0.5 + complication / 10 && Math.random() < 10 / _root.fps)
   {
      if(firstNum + secondNum == finalNum)
      {
         _root.dragonGuess = 1;
      }
      if(firstNum - secondNum == finalNum)
      {
         _root.dragonGuess = 2;
      }
      if(firstNum * secondNum == finalNum)
      {
         _root.dragonGuess = 3;
      }
      if(firstNum / secondNum == finalNum)
      {
         _root.dragonGuess = 4;
      }
      if(Math.random() < 0.2)
      {
         _parent.dragonSpeech.speech("When you see easy questions, try to solve them quickly for a speed bonus!");
      }
   }
   if(_root.arcadeTimeSpent >= 2.5 && _root.arcadeTimeSpent < 2.7)
   {
      _parent.dragonSpeech.speech("Hmm...");
   }
   if(_root.arcadeTimeSpent >= 4 && Math.random() < 1 / _root.fps && _root.dragonGuess == 0)
   {
      _root.dragonGuess = 1 + random(4);
   }
   assistDuration += 1 / _root.fps;
   if(assistDuration > 2 + _root.arcadeDifficulty / 10)
   {
      mathAssistA.gotoAndStop(2);
      mathAssistA.assistText.text = firstNum;
      mathAssistB.gotoAndStop(2);
      mathAssistB.assistText.text = secondNum;
      mathAssistC.gotoAndStop(2);
      mathAssistC.assistText.text = finalNum;
      assistDuration = -70;
   }
};
