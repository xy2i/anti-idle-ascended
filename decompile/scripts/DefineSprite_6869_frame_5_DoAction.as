//! status=pending
_root.stadiumDifficulty = 2;
onEnterFrame = function()
{
   betCoinText.text = _root.withComma(_root.stadiumBetCoin);
   betTokenText.text = _root.withComma(_root.stadiumBetToken);
};
