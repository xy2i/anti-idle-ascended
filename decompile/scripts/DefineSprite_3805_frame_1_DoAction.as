//! status=pending
trainingScoreText.text = _root.withComma(0);
trainingScoreText2.text = "";
lastSec = 0;
tempScore = 0;
onEnterFrame = function()
{
   tempScore += Math.ceil((_root.areaDamage - tempScore) / 1.5);
   if(_root.house.arena.enemy.enemyID != 0 && _root.house.arena.enemy.explodeCount % 40 == 0)
   {
      impr = _root.areaDamage - lastSec;
      if(impr > 0)
      {
         trainingScoreText2.text = "+" + _root.withComma(impr);
         trainingScoreText2._alpha = 100;
         trainingScoreText2._y = 24;
      }
      lastSec = _root.areaDamage;
   }
   trainingScoreText.text = _root.withComma(tempScore);
   trainingScoreText2._alpha = Math.floor(trainingScoreText2._alpha * 0.95);
   trainingScoreText2._y += 0.5;
};
