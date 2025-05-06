//! status=pending
function checkAll()
{
   reqExp = _root.save.fcgLevel * _root.save.fcgLevel * 25 + 5;
   if(_root.save.fcgLevel >= 200)
   {
      _root.save.fcgLevel = 200;
      reqExp = Infinity;
   }
   if(_root.save.fcgExp >= reqExp && _root.save.fcgLevel < 200)
   {
      _root.save.fcgExp -= reqExp;
      _root.save.fcgExpTotal += reqExp;
      _root.save.fcgLevel += 1;
      _root.save.fcgCash += _root.save.fcgLevel * 50;
   }
   expPercent = Math.floor(_root.save.fcgExp / reqExp * 10000) / 100;
   expPercentDisp = expPercent;
   if(expPercent < 10)
   {
      expPercentDisp = "0" + expPercentDisp;
   }
   if(expPercent == Math.floor(expPercent))
   {
      expPercentDisp += ".00";
   }
   else if(expPercent == Math.floor(expPercent * 10) / 10)
   {
      expPercentDisp += "0";
   }
   expPercentDisp += "%";
   winPercent = Math.floor(_root.save.fcgWin / _root.save.fcgPlay * 10000) / 100;
   if(_root.save.fcgPlay < 1)
   {
      winPercent = 0;
   }
   winPercentDisp = winPercent;
   if(winPercent < 10)
   {
      winPercentDisp = "0" + winPercentDisp;
   }
   if(winPercent == Math.floor(winPercent))
   {
      winPercentDisp += ".00";
   }
   else if(winPercent == Math.floor(winPercent * 10) / 10)
   {
      winPercentDisp += "0";
   }
   winPercentDisp += "%";
   expText.text = _root.withComma(_root.save.fcgExp) + " / " + _root.withComma(reqExp) + " [" + expPercentDisp + "]";
   if(_root.save.fcgLevel >= 200)
   {
      expText.text = _root.withComma(_root.save.fcgExp) + " [MAX]";
   }
   totalText.text = _root.withComma(_root.save.fcgExp + _root.save.fcgExpTotal);
   winText.text = _root.withComma(_root.save.fcgWin) + " / " + _root.withComma(_root.save.fcgPlay) + " [" + winPercentDisp + "]";
   cashText.text = _root.withComma(_root.save.fcgCash);
}
checkAll();
onEnterFrame = function()
{
   checkAll();
};
