//! status=pending
_root.arcadeScore = 0;
_root.arcadeFakeScore = 0;
_root.arcadeTimeLeft = 45;
if(_root.save.rankedMode != true)
{
   _root.arcadeTimeLeft = 45 - _root.save.unrankedPower[23] * 2;
}
_root.arcadeQuestion = "How many triangles?";
_root.arcadeHint = "";
_root.arcadeQuestionAppear = 60;
_root.arcadeIdleTime = 10;
_root.arcadeSkipBonus = 0;
_root.arcadeMyCount = 0;
_root.arcadeCorrectCount = 0;
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
      else if(_root.arcadeMyCount > _root.arcadeCorrectCount && (_root.arcadeDifficulty < 4 || _root.save.arcadeDifficulty[8] == 1))
      {
         _root.arcadeHint = "Hint: The answer is lower than " + _root.arcadeMyCount + ".";
      }
      else if(_root.arcadeMyCount < _root.arcadeCorrectCount && (_root.arcadeDifficulty < 4 || _root.save.arcadeDifficulty[8] == 1))
      {
         _root.arcadeHint = "Hint: The answer is higher than " + _root.arcadeMyCount + ".";
      }
      else
      {
         _root.arcadeHint = "Hint: The answer is NOT " + _root.arcadeMyCount + ".";
      }
   }
   if(_root.arcadeTimeLeft <= 0)
   {
      difference = Math.abs(_root.arcadeCorrectCount - _root.arcadeMyCount);
      if(difference > _root.arcadeCountForgiveness)
      {
         _parent.gotoAndStop(38);
      }
      else
      {
         tmpScore = Math.floor((20000 + _root.arcadeIdleTime * 1000 + _root.arcadeSkipBonus * 20000 - difference * 20000 + _root.save.arcadeDifficulty[8] * 50000) * _root.arcadeMultiplier);
         if(_root.save.arcadeDifficulty[8] == 1)
         {
            tmpScore = Math.floor(tmpScore * 0.5);
         }
         _root.arcadeScore += tmpScore;
         if(_root.save.rankedMode == true || difference > 1 || _root.arcadeDifficulty > 1 + _root.save.unrankedPower[21] * 2)
         {
            _root.arcadeCountForgiveness -= difference;
         }
         if(difference == 0 && _root.arcadeIdleTime > 5)
         {
            _root.arcadeMultiplier += 1;
            if(_root.save.arcadeDifficulty[8] >= 3)
            {
               _root.arcadeMultiplier += 1;
            }
            if(_root.arcadeMultiplier >= 9)
            {
               _root.gainWhiteCoin(4);
            }
            else if(_root.arcadeMultiplier >= 6)
            {
               _root.gainWhiteCoin(2);
            }
            else if(_root.arcadeMultiplier >= 3)
            {
               _root.gainWhiteCoin(1);
            }
         }
         _root.arcadeDifficulty += 1;
         progToEarn = Math.floor(1000 + _root.arcadeMultiplier * 200);
         _root.progPercent += progToEarn;
         _root.dispNews(91,"[Triangle Count] Stage cleared! (+" + progToEarn + "% Progress)");
         if(_root.save.arcadeConfig6 == true && difference == 0)
         {
            if(_root.arcadeDifficulty <= 6 && _root.save.arcadeDifficulty[8] < 3)
            {
               _root.arcadeDifficulty += 2;
               tmpScore = (50000 + _root.save.arcadeDifficulty[8] * 50000) * (_root.arcadeMultiplier * 2 + 1);
               if(_root.save.arcadeDifficulty[8] == 1)
               {
                  tmpScore = Math.floor(tmpScore * 0.5);
               }
               _root.arcadeScore += tmpScore;
               _root.arcadeMultiplier += 2;
            }
            else if(_root.arcadeDifficulty <= 11 && _root.save.arcadeDifficulty[8] < 3)
            {
               _root.arcadeDifficulty += 1;
               tmpScore = (50000 + _root.save.arcadeDifficulty[8] * 50000) * _root.arcadeMultiplier;
               if(_root.save.arcadeDifficulty[8] == 1)
               {
                  tmpScore = Math.floor(tmpScore * 0.5);
               }
               _root.arcadeScore += tmpScore;
               _root.arcadeMultiplier += 1;
            }
            else if(_root.arcadeDifficulty <= 4 && _root.save.arcadeDifficulty[8] >= 3)
            {
               _root.arcadeDifficulty += 1;
               tmpScore = (50000 + _root.save.arcadeDifficulty[8] * 50000) * _root.arcadeMultiplier;
               _root.arcadeScore += tmpScore;
               _root.arcadeMultiplier += 2;
            }
         }
         _root.arcadeCondition1 = "";
         _root.arcadeCondition2 = "";
         _root.arcadeCondition3 = "";
         if(_root.arcadeDifficulty >= 3)
         {
            if((Math.random() < 0.5 || _root.arcadeDifficulty <= 4) && _root.save.arcadeDifficulty[8] >= 3)
            {
               _root.arcadeCondition2 = "Color-Changing";
            }
            else if(Math.random() < 0.3333333333333333)
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
            if((Math.random() < 0.5 || _root.arcadeDifficulty <= 6) && _root.save.arcadeDifficulty[8] >= 3 && _root.arcadeCondition2 != "Color-Changing")
            {
               _root.arcadeCondition3 = "Direction-Changing";
            }
            else if(Math.random() < 0.3333333333333333)
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
            if(Math.random() < 0.25 && _root.arcadeCondition2 != "Color-Changing" && _root.arcadeCondition3 != "Direction-Changing")
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
         else if(_root.arcadeCondition2 == "Black")
         {
            _root.arcadeQuestion += " black";
         }
         else if(_root.arcadeCondition2 == "Color-Changing")
         {
            _root.arcadeQuestion += " color-changing";
         }
         if(_root.arcadeCondition3 == "Direction-Changing")
         {
            _root.arcadeQuestion += " direction-changing";
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
         if(_root.save.rankedMode != true)
         {
            _root.arcadeTimeLeft = 45 + _root.arcadeDifficulty * 3 - _root.save.unrankedPower[23] * 2;
         }
         _root.arcadeQuestionAppear = 60 + _root.arcadeDifficulty * 1;
         if(_root.arcadeTimeLeft > 90)
         {
            _root.arcadeTimeLeft = 90;
            _root.arcadeQuestionAppear = 75;
         }
         if(_root.save.arcadeDifficulty[8] == 1)
         {
            _root.arcadeQuestionAppear += 10;
         }
         if(_root.save.arcadeDifficulty[8] == 4)
         {
            _root.arcadeTimeLeft += 5;
         }
         _root.arcadeIdleTime = 0;
         _root.arcadeSkipBonus = 0;
         _root.arcadeMyCount = 0;
         _root.arcadeCorrectCount = 0;
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
