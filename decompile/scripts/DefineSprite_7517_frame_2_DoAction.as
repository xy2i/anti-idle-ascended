//! status=pending
function checkCard()
{
   cardImage.gotoAndStop(cardID);
   cardText.text = _root.withComma(_root.save.ripoffCard[cardID]);
   durationText.text = _root.withComma(cardDuration) + "h";
   timeText.text = _root.convertSecFull(_root.save[cardName + "Time"]);
   barInside._xscale = _root.save[cardName + "Time"] / 3600;
   if(_root.save[cardName + "Time"] <= 0)
   {
      gotoAndStop(2);
   }
}
checkCard();
del = 40;
onEnterFrame = function()
{
   del += 1;
   if(del >= 40)
   {
      del = 0;
      checkCard();
   }
};
