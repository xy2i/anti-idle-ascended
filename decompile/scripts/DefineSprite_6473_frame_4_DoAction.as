//! status=pending
secondNum = 1 + random(5 + _root.arcadeDifficulty) + Math.floor(_root.arcadeDifficulty / 3);
firstNum = secondNum * (random(10 + Math.floor(_root.arcadeDifficulty / 3)) + Math.floor(_root.arcadeDifficulty / 5) + 3);
if(secondNum > 249)
{
   secondNum = 225 + random(25);
}
if(firstNum > secondNum * 88)
{
   firstNum = secondNum * (69 + random(20));
}
finalNum = firstNum / secondNum;
corAnswer = random(4) + 1;
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
   }
}
firstNumText.text = _root.withComma(firstNum);
secondNumText.text = _root.withComma(secondNum);
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
