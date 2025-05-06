//! status=pending
function disp()
{
   levelDisp.text = _root.save.robaconLevel;
   if(_root.save.vegetarianMode == true)
   {
      expDisp.text = "Broccoli: " + _root.withComma(_root.save.robaconBacon);
   }
   else
   {
      expDisp.text = "Bacon: " + _root.withComma(_root.save.robaconBacon);
   }
   if(_root.save.robaconLevel < 500)
   {
      pct = Math.floor(_root.save.robaconExp / _root.robaconReqExp * 1000) / 10;
      if(pct == Math.round(pct))
      {
         pct += ".0";
      }
      pctDisp.text = "EXP: " + pct + "%";
   }
   else
   {
      pctDisp.text = "EXP: MAX";
   }
}
disp();
