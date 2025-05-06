//! status=pending
function checkStat()
{
   tempPage = _root.fishPopPage;
   ID = _root.fishPopPage * 10 + defID - 10;
   levelText.text = "Lv. " + _root.fishArray[ID].fishLevel;
   if(isNaN(_root.fishArray[ID].fishLevel))
   {
      levelText.text = _root.fishArray[ID].fishLevel;
   }
   foundText.text = _root.withComma(_root.save.fishFound[ID]);
   leftText.text = _root.withComma(_root.save.fishLeft[ID]);
   if(_root.save.fishFound[ID] >= 1000000)
   {
      foundText.text = _root.withComma(Math.floor(_root.save.fishFound[ID] / 1000)) + "k";
   }
   if(_root.save.fishLeft[ID] >= 100000)
   {
      leftText.text = _root.withComma(Math.floor(_root.save.fishLeft[ID] / 1000)) + "k";
   }
}
tempPage = _root.fishPopPage;
checkStat();
onEnterFrame = function()
{
   if(tempPage != _root.fishPopPage)
   {
      checkStat();
   }
   if(ID >= 1 && ID <= 10)
   {
      foundText.text = _root.withComma(_root.save.fishFound[ID]);
      leftText.text = _root.withComma(_root.save.fishLeft[ID]);
      if(_root.save.fishFound[ID] >= 1000000)
      {
         foundText.text = _root.withComma(Math.floor(_root.save.fishFound[ID] / 1000)) + "k";
      }
      if(_root.save.fishLeft[ID] >= 100000)
      {
         leftText.text = _root.withComma(Math.floor(_root.save.fishLeft[ID] / 1000)) + "k";
      }
   }
};
