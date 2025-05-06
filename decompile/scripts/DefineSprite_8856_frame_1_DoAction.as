//! status=pending
function disp()
{
   levelDisp.text = _root.save.careerLevel[careerID];
   if(_root.save.careerLevel[careerID] < 200)
   {
      careerReq = 100 + _root.save.careerLevel[careerID] * (_root.save.careerLevel[careerID] + 1) * Math.max(1,_root.save.careerLevel[careerID] - 99) * 5;
      expDisp.text = _root.withComma(_root.save.careerEXP[careerID]) + " / " + _root.withComma(careerReq);
      pct = Math.floor(_root.save.careerEXP[careerID] / careerReq * 1000) / 10;
      if(pct == Math.round(pct))
      {
         pct += ".0";
      }
      pctDisp.text = "[" + pct + "%]";
   }
   else
   {
      careerReq = 40000000;
      expDisp.text = _root.withComma(_root.save.careerEXP[careerID]);
      pctDisp.text = "[MAX]";
   }
}
disp();
onEnterFrame = function()
{
   disp();
};
