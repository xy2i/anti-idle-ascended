//! status=pending
_root.arcadeScore = 0;
_root.arcadeFakeScore = 0;
_root.arcadeTimeLeft = 45;
_root.arcadeQuestion = "How many triangles?";
_root.arcadeHint = "";
_root.arcadeQuestionAppear = 60;
_root.arcadeIdleTime = 10;
_root.arcadeSkipBonus = 0;
_root.arcadeMyCount = 0;
_root.arcadeCorrectCount = 0;
_root.arcadeDragonCount = 0;
_root.arcadeCountForgiveness = 3;
_root.arcadeCondition1 = "";
_root.arcadeCondition2 = "";
_root.arcadeCondition3 = "";
_root.arcadeMultiplier = 1;
_root.arcadeDifficulty = 1;
onEnterFrame = function()
{
   _root.arcadeTimeLeft -= 1 / _root.fps;
   if(_root.arcadeTimeLeft <= 10 && _root.arcadeHint == "")
   {
      if(_root.arcadeMyCount == _root.arcadeCorrectCount)
      {
         _root.arcadeHint = "Hint: The answer is " + _root.arcadeCorrectCount + ".";
      }
      else if(_root.arcadeMyCount > _root.arcadeCorrectCount && _root.arcadeDifficulty < 4)
      {
         _root.arcadeHint = "Hint: The answer is lower than " + _root.arcadeMyCount + ".";
         _root.arcadeDragonCount -= 1;
      }
      else if(_root.arcadeMyCount < _root.arcadeCorrectCount && _root.arcadeDifficulty < 4)
      {
         _root.arcadeHint = "Hint: The answer is higher than " + _root.arcadeMyCount + ".";
         _root.arcadeDragonCount += 1;
      }
      else
      {
         _root.arcadeHint = "Hint: The answer is NOT " + _root.arcadeMyCount + ".";
         if(_root.arcadeDragonCount < _root.arcadeCorrectCount && Math.random() < 0.8)
         {
            _root.arcadeDragonCount += 1;
         }
         if(_root.arcadeDragonCount > _root.arcadeCorrectCount && Math.random() < 0.8)
         {
            _root.arcadeDragonCount -= 1;
         }
      }
   }
   if(_root.arcadeTimeLeft <= 0)
   {
      difference = Math.abs(_root.arcadeCorrectCount - _root.arcadeMyCount);
      if(difference > _root.arcadeCountForgiveness)
      {
         _root.showPopup("Spectate Mode","The Dragon of Wisdom scored " + _root.withComma(_root.arcadeScore) + " in Triangle Count.");
         _parent.gotoAndStop(2);
      }
      else
      {
         _root.arcadeScore += Math.floor((70000 + _root.arcadeIdleTime * 1000 + _root.arcadeSkipBonus * 20000 - difference * 20000) * _root.arcadeMultiplier);
         _root.arcadeCountForgiveness -= difference;
         if(difference == 0 && _root.arcadeIdleTime > 5)
         {
            _root.arcadeMultiplier += 1;
         }
         _root.arcadeDifficulty += 1;
         if(_root.save.arcadeConfig6 == true && difference == 0)
         {
            if(_root.arcadeDifficulty <= 6)
            {
               _root.arcadeDifficulty += 2;
               _root.arcadeScore += 100000 * (_root.arcadeMultiplier * 2 + 1);
               _root.arcadeMultiplier += 2;
            }
            else if(_root.arcadeDifficulty <= 11)
            {
               _root.arcadeDifficulty += 1;
               _root.arcadeScore += 100000 * _root.arcadeMultiplier;
               _root.arcadeMultiplier += 1;
            }
         }
         _root.arcadeCondition1 = "";
         _root.arcadeCondition2 = "";
         _root.arcadeCondition3 = "";
         if(_root.arcadeDifficulty >= 3)
         {
            if(Math.random() < 0.25)
            {
               _root.arcadeCondition2 = "White";
            }
            else if(Math.random() < 0.5)
            {
               _root.arcadeCondition2 = "Black";
            }
         }
         if(_root.arcadeDifficulty >= 5)
         {
            if(Math.random() < 0.25)
            {
               _root.arcadeCondition3 = "Left";
            }
            else if(Math.random() < 0.5)
            {
               _root.arcadeCondition3 = "Right";
            }
         }
         if(_root.arcadeDifficulty >= 7)
         {
            if(Math.random() < 0.25)
            {
               _root.arcadeCondition1 = "Jump";
            }
         }
         _root.arcadeQuestion = "How many";
         if(_root.arcadeCondition1 == "Jump")
         {
            _root.arcadeQuestion += " jumping";
         }
         if(_root.arcadeCondition2 == "White")
         {
            _root.arcadeQuestion += " white";
         }
         if(_root.arcadeCondition2 == "Black")
         {
            _root.arcadeQuestion += " black";
         }
         _root.arcadeQuestion += " triangles";
         if(_root.arcadeCondition3 == "Left")
         {
            _root.arcadeQuestion += " move left?";
         }
         else if(_root.arcadeCondition3 == "Right")
         {
            _root.arcadeQuestion += " move right?";
         }
         else
         {
            _root.arcadeQuestion += "?";
         }
         _root.arcadeHint = "";
         _root.arcadeTimeLeft = 45 + _root.arcadeDifficulty * 3;
         if(_root.arcadeTimeLeft > 90)
         {
            _root.arcadeTimeLeft = 90;
         }
         _root.arcadeQuestionAppear = 60 + _root.arcadeDifficulty * 1;
         if(_root.arcadeTimeLeft > 90)
         {
            _root.arcadeTimeLeft = 90;
            _root.arcadeQuestionAppear = 75;
         }
         _root.arcadeIdleTime = 0;
         _root.arcadeSkipBonus = 0;
         _root.arcadeMyCount = 0;
         _root.arcadeCorrectCount = 0;
         _root.arcadeDragonCount = 0;
      }
   }
   _root.arcadeFakeScore += Math.ceil((_root.arcadeScore - _root.arcadeFakeScore) / 1.1);
   _parent.scoreText.text = _root.withComma(_root.arcadeFakeScore);
   _parent.timeText.text = _root.convertSec(_root.arcadeTimeLeft - 5);
   _parent.multiplierText.text = _root.arcadeMultiplier + "x";
   if(_root.arcadeHint == "" && _root.arcadeTimeLeft < 15)
   {
      hintText.text = "Confident of your answer? Press SPACE!";
   }
   else
   {
      hintText.text = _root.arcadeHint;
   }
   questionText.text = _root.arcadeQuestion;
   if(_root.arcadeTimeLeft > _root.arcadeQuestionAppear)
   {
      questionText.text = "Watch carefully!";
   }
};
