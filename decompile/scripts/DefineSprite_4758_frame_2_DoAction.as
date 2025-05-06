//! status=pending
function disp()
{
   levelDisp.text = _root.save.arenaLevel;
   if(_root.save.arenaLevel < 500)
   {
      expDisp.text = _root.withComma(_root.save.arenaExp) + " / " + _root.withComma(_root.arenaReqExp);
      pct = Math.floor(_root.save.arenaExp / _root.arenaReqExp * 1000) / 10;
      if(pct == Math.round(pct))
      {
         pct += ".0";
      }
      pctDisp.text = "[" + pct + "%]";
   }
   else
   {
      expDisp.text = _root.withComma(_root.save.arenaExp);
      pctDisp.text = "[MAX]";
   }
}
disp();
