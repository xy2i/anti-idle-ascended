//! status=pending
function addRankedScore(gameID, scr, diff)
{
   gameNameArr = ["","Pong","Avoidance","Math","Whack","Mind","Balance","Count","MMRX"];
   gameName = gameNameArr[gameID];
   if(_root.save["highRanked" + gameName][0] < scr)
   {
      _root.save["highRanked" + gameName][2] = _root.save["highRanked" + gameName][1];
      _root.save["highRanked" + gameName][1] = _root.save["highRanked" + gameName][0];
      _root.save["highRanked" + gameName][0] = scr;
      _root.save["highRanked" + gameName + "Diff"][2] = _root.save["highRanked" + gameName + "Diff"][1];
      _root.save["highRanked" + gameName + "Diff"][1] = _root.save["highRanked" + gameName + "Diff"][0];
      _root.save["highRanked" + gameName + "Diff"][0] = diff;
   }
   else if(_root.save["highRanked" + gameName][1] < scr)
   {
      _root.save["highRanked" + gameName][2] = _root.save["highRanked" + gameName][1];
      _root.save["highRanked" + gameName][1] = scr;
      _root.save["highRanked" + gameName + "Diff"][2] = _root.save["highRanked" + gameName + "Diff"][1];
      _root.save["highRanked" + gameName + "Diff"][1] = diff;
   }
   else if(_root.save["highRanked" + gameName][2] < scr)
   {
      _root.save["highRanked" + gameName][2] = scr;
      _root.save["highRanked" + gameName + "Diff"][2] = diff;
   }
}
function ratingToString(rat)
{
   if(rat < 10)
   {
      res = "0.0" + Math.floor(rat);
   }
   else if(rat < 100)
   {
      res = "0." + Math.floor(rat);
   }
   else
   {
      res = Math.floor(rat / 100) + "." + Math.floor(rat % 100);
      if(Math.floor(rat % 100) < 10)
      {
         res = Math.floor(rat / 100) + ".0" + Math.floor(rat % 100);
      }
   }
   return res;
}
function calcRating(gameID, scr, ran)
{
   rat = 0;
   if(gameID == 1)
   {
      thresh = 4200000;
      crv = 2;
      nob = 0.3;
   }
   else if(gameID == 2)
   {
      thresh = 1750000;
      crv = 0.75;
      nob = 0.45;
   }
   else if(gameID == 3)
   {
      thresh = 2400000;
      crv = 2;
      nob = 0.45;
   }
   else if(gameID == 4)
   {
      thresh = 3300000;
      crv = 3.5;
      nob = 0.9;
   }
   else if(gameID == 5)
   {
      thresh = 10000000;
      crv = 1.25;
      nob = 0.3;
   }
   else if(gameID == 6)
   {
      thresh = 6000000;
      crv = 2.5;
      nob = 0.45;
   }
   else if(gameID == 7)
   {
      thresh = 13500000;
      crv = 1;
      nob = 0.3;
   }
   else if(gameID == 8)
   {
      thresh = 6000000;
      crv = 1.25;
      nob = 0.3;
   }
   if(scr > thresh)
   {
      scr = Math.floor(thresh + (scr - thresh) * crv);
   }
   thresh *= 0.7;
   mul = 0;
   if(ran == 1)
   {
      mul = 1.4;
   }
   else if(ran == 2)
   {
      mul = 0.5;
   }
   else if(ran == 3)
   {
      mul = 0.1;
   }
   if(scr > thresh * 1.6)
   {
      rat = Math.floor((150 + (scr - thresh * 1.6) / (thresh * 0.05)) * mul);
   }
   else if(scr > thresh)
   {
      rat = Math.floor((120 + (scr - thresh) / (thresh * 0.02)) * mul);
   }
   else
   {
      rat = Math.floor(Math.pow(scr / thresh,nob) * 120 * mul);
   }
   if(isNaN(rat))
   {
      rat = 0;
   }
   if(rat > 200)
   {
      rat = 200;
   }
   return rat;
}
function checkGlobal()
{
   _root.arcadeTmpRating = 0;
   _root.arcadeTmpRatingGame = new Array();
   _root.arcadeTmpScoreGame = new Array();
   _root.arcadeTmpDiff = new Array();
   var _loc2_ = 1;
   while(_loc2_ <= 8)
   {
      _root.arcadeTmpRatingGame[_loc2_] = new Array();
      _root.arcadeTmpScoreGame[_loc2_] = new Array();
      _root.arcadeTmpDiff[_loc2_] = new Array();
      _loc2_ = _loc2_ + 1;
   }
   _loc2_ = 0;
   while(_loc2_ <= 2)
   {
      _root.arcadeTmpScoreGame[1][_loc2_] = _root.save.highRankedPong[_loc2_];
      _root.arcadeTmpScoreGame[2][_loc2_] = _root.save.highRankedAvoidance[_loc2_];
      _root.arcadeTmpScoreGame[3][_loc2_] = _root.save.highRankedMath[_loc2_];
      _root.arcadeTmpScoreGame[4][_loc2_] = _root.save.highRankedWhack[_loc2_];
      _root.arcadeTmpScoreGame[5][_loc2_] = _root.save.highRankedMind[_loc2_];
      _root.arcadeTmpScoreGame[6][_loc2_] = _root.save.highRankedBalance[_loc2_];
      _root.arcadeTmpScoreGame[7][_loc2_] = _root.save.highRankedCount[_loc2_];
      _root.arcadeTmpScoreGame[8][_loc2_] = _root.save.highRankedMMRX[_loc2_];
      _root.arcadeTmpDiff[1][_loc2_] = _root.save.highRankedPongDiff[_loc2_];
      _root.arcadeTmpDiff[2][_loc2_] = _root.save.highRankedAvoidanceDiff[_loc2_];
      _root.arcadeTmpDiff[3][_loc2_] = _root.save.highRankedMathDiff[_loc2_];
      _root.arcadeTmpDiff[4][_loc2_] = _root.save.highRankedWhackDiff[_loc2_];
      _root.arcadeTmpDiff[5][_loc2_] = _root.save.highRankedMindDiff[_loc2_];
      _root.arcadeTmpDiff[6][_loc2_] = _root.save.highRankedBalanceDiff[_loc2_];
      _root.arcadeTmpDiff[7][_loc2_] = _root.save.highRankedCountDiff[_loc2_];
      _root.arcadeTmpDiff[8][_loc2_] = _root.save.highRankedMMRXDiff[_loc2_];
      _root.arcadeTmpRatingGame[1][_loc2_] = calcRating(1,_root.save.highRankedPong[_loc2_],_loc2_ + 1);
      _root.arcadeTmpRatingGame[2][_loc2_] = calcRating(2,_root.save.highRankedAvoidance[_loc2_],_loc2_ + 1);
      _root.arcadeTmpRatingGame[3][_loc2_] = calcRating(3,_root.save.highRankedMath[_loc2_],_loc2_ + 1);
      _root.arcadeTmpRatingGame[4][_loc2_] = calcRating(4,_root.save.highRankedWhack[_loc2_],_loc2_ + 1);
      _root.arcadeTmpRatingGame[5][_loc2_] = calcRating(5,_root.save.highRankedMind[_loc2_],_loc2_ + 1);
      _root.arcadeTmpRatingGame[6][_loc2_] = calcRating(6,_root.save.highRankedBalance[_loc2_],_loc2_ + 1);
      _root.arcadeTmpRatingGame[7][_loc2_] = calcRating(7,_root.save.highRankedCount[_loc2_],_loc2_ + 1);
      _root.arcadeTmpRatingGame[8][_loc2_] = calcRating(8,_root.save.highRankedMMRX[_loc2_],_loc2_ + 1);
      _root.arcadeTmpRating += calcRating(1,_root.save.highRankedPong[_loc2_],_loc2_ + 1);
      _root.arcadeTmpRating += calcRating(2,_root.save.highRankedAvoidance[_loc2_],_loc2_ + 1);
      _root.arcadeTmpRating += calcRating(3,_root.save.highRankedMath[_loc2_],_loc2_ + 1);
      _root.arcadeTmpRating += calcRating(4,_root.save.highRankedWhack[_loc2_],_loc2_ + 1);
      _root.arcadeTmpRating += calcRating(5,_root.save.highRankedMind[_loc2_],_loc2_ + 1);
      _root.arcadeTmpRating += calcRating(6,_root.save.highRankedBalance[_loc2_],_loc2_ + 1);
      _root.arcadeTmpRating += calcRating(7,_root.save.highRankedCount[_loc2_],_loc2_ + 1);
      _root.arcadeTmpRating += calcRating(8,_root.save.highRankedMMRX[_loc2_],_loc2_ + 1);
      _loc2_ = _loc2_ + 1;
   }
   pctText.text = ratingToString(_root.arcadeTmpRating);
   _root.save.arcadeRating = Math.floor(_root.arcadeTmpRating / 100);
   scoreMedalText.text = _root.withComma(_root.save.arcade100kMedal);
   _root.arcadeRewardMult = 3;
   if(_root.save.rankedMode == true)
   {
      if(_root.save.careerLevel[6] >= 100)
      {
         _root.arcadeRewardMult *= 1 + _root.save.arcadeRating * 0.12;
      }
      else
      {
         _root.arcadeRewardMult *= 1 + _root.save.arcadeRating * 0.1;
      }
   }
   else if(_root.save.careerLevel[6] >= 200)
   {
      _root.arcadeRewardMult *= 1 + _root.save.arcadeRating * 0.06;
   }
   else
   {
      _root.arcadeRewardMult *= 1 + _root.save.arcadeRating * 0.05;
   }
   arcadeTokenText.text = _root.save.arcadeToken;
}
checkGlobal();
gotoAndStop(2);
