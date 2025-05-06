//! status=pending
secondNum = 1 + random(5 + _root.arcadeDifficulty) + Math.floor(_root.arcadeDifficulty / 3);
firstNum = secondNum * (random(10 + Math.floor(_root.arcadeDifficulty / 3)) + Math.floor(_root.arcadeDifficulty / 5) + 3);
finalNum = firstNum / secondNum;
corAnswer = random(4) + 1;
complication = firstNum / 50 + finalNum / 2;
if(secondNum % 10 == 0)
{
   complication -= 5;
}
else if(firstNum % 10 % (secondNum % 10) == 0)
{
   complication -= 3;
}
if(corAnswer == 1)
{
   if(Math.random() < 0.5 || _root.arcadeDifficulty <= 15 || finalNum < 5)
   {
      choice1.text = finalNum;
      choice2.text = finalNum + 1;
      choice3.text = finalNum + 2;
      choice4.text = finalNum + 3;
   }
   else
   {
      choice1.text = finalNum;
      choice2.text = finalNum + 1;
      choice3.text = finalNum + 10;
      choice4.text = finalNum + 11;
      complication += 2;
   }
}
if(corAnswer == 2)
{
   if(Math.random() < 0.5 || _root.arcadeDifficulty <= 15 || finalNum < 5)
   {
      choice1.text = finalNum - 1;
      choice2.text = finalNum;
      choice3.text = finalNum + 1;
      choice4.text = finalNum + 2;
   }
   else
   {
      choice1.text = finalNum - 1;
      choice2.text = finalNum;
      choice3.text = finalNum + 9;
      choice4.text = finalNum + 10;
      complication += 2;
   }
}
if(corAnswer == 3)
{
   if(Math.random() < 0.5 || _root.arcadeDifficulty <= 15 || finalNum < 10)
   {
      choice1.text = finalNum - 2;
      choice2.text = finalNum - 1;
      choice3.text = finalNum;
      choice4.text = finalNum + 1;
   }
   else
   {
      choice1.text = finalNum - 10;
      choice2.text = finalNum - 9;
      choice3.text = finalNum;
      choice4.text = finalNum + 1;
      complication += 2;
   }
}
if(corAnswer == 4)
{
   if(Math.random() < 0.5 || _root.arcadeDifficulty <= 15 || finalNum < 11)
   {
      choice1.text = finalNum - 3;
      choice2.text = finalNum - 2;
      choice3.text = finalNum - 1;
      choice4.text = finalNum;
   }
   else
   {
      choice1.text = finalNum - 11;
      choice2.text = finalNum - 10;
      choice3.text = finalNum - 1;
      choice4.text = finalNum;
      complication += 2;
   }
}
if(complication < 0)
{
   complication = 0;
}
firstNumText.text = _root.withComma(firstNum);
secondNumText.text = _root.withComma(secondNum);
assistDuration = 0;
if(_root.save.rankedMode != true)
{
   assistDuration = _root.save.unrankedPower[13] * 0.5;
}
curSpeech = "Hmm...";
onEnterFrame = function()
{
   if(_root.arcadeTimeSpent >= 0.5 + complication / 10 && Math.random() < 10 / _root.fps)
   {
      _root.dragonGuess = corAnswer;
      if(Math.random() < 0.2)
      {
         _parent.dragonSpeech.speech("For the \'Select the correct answer!\' questions, there are a lot of tricks to help you! Sometimes, you only need to look at the last digits.");
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
      mathAssist.gotoAndStop(2);
      if(Math.random() < 0.3)
      {
         mathAssist.assistText.text = "Ends with " + finalNum % 10;
      }
      else if(Math.random() < 0.5)
      {
         mathAssist.assistText.text = _root.withComma(finalNum) + " or " + _root.withComma(finalNum + 1);
      }
      else
      {
         mathAssist.assistText.text = _root.withComma(finalNum - 1) + " or " + _root.withComma(finalNum);
      }
      assistDuration = -70;
   }
};
