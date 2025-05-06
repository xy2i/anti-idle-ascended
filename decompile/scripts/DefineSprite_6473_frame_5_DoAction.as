//! status=pending
firstNum = 21 + random(10 + Math.floor(Math.max(_root.arcadeDifficulty - 50,0) / 2)) + Math.floor(Math.max(_root.arcadeDifficulty - 50,0) / 4);
secondNum = 11 + random(5 + Math.floor(Math.max(_root.arcadeDifficulty - 50,0) / 3)) + Math.floor(Math.max(_root.arcadeDifficulty - 50,0) / 6);
if(firstNum > 99)
{
   firstNum = 79 + random(20);
}
if(secondNum > 99)
{
   secondNum = 79 + random(20);
}
finalNum = firstNum * secondNum;
corAnswer = random(4) + 1;
if(corAnswer == 1)
{
   if(Math.random() < 0.5)
   {
      choice1.text = finalNum;
      choice2.text = finalNum + 10;
      choice3.text = finalNum + 20;
      choice4.text = finalNum + 30;
   }
   else
   {
      choice1.text = finalNum;
      choice2.text = finalNum + 10;
      choice3.text = finalNum + 100;
      choice4.text = finalNum + 110;
   }
}
if(corAnswer == 2)
{
   if(Math.random() < 0.5)
   {
      choice1.text = finalNum - 10;
      choice2.text = finalNum;
      choice3.text = finalNum + 10;
      choice4.text = finalNum + 20;
   }
   else
   {
      choice1.text = finalNum - 10;
      choice2.text = finalNum;
      choice3.text = finalNum + 90;
      choice4.text = finalNum + 100;
   }
}
if(corAnswer == 3)
{
   if(Math.random() < 0.5)
   {
      choice1.text = finalNum - 20;
      choice2.text = finalNum - 10;
      choice3.text = finalNum;
      choice4.text = finalNum + 10;
   }
   else
   {
      choice1.text = finalNum - 100;
      choice2.text = finalNum - 90;
      choice3.text = finalNum;
      choice4.text = finalNum + 10;
   }
}
if(corAnswer == 4)
{
   if(Math.random() < 0.5)
   {
      choice1.text = finalNum - 30;
      choice2.text = finalNum - 20;
      choice3.text = finalNum - 10;
      choice4.text = finalNum;
   }
   else
   {
      choice1.text = finalNum - 110;
      choice2.text = finalNum - 100;
      choice3.text = finalNum - 10;
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
};
