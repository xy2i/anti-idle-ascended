//! status=pending
function dispProgSpeed()
{
   p1.text = _root.save.progSpeedAuto + "%";
   p2.text = _root.save.progSpeedManual + "%";
   costA = Math.floor(_root.save.progSpeedAuto * _root.save.progSpeedAuto * 0.8);
   if(_root.save.progSpeedAuto >= 100)
   {
      costA = Math.floor(_root.save.progSpeedAuto * _root.save.progSpeedAuto * 8);
   }
   if(_root.save.progSpeedAuto >= 150)
   {
      costA = Math.floor((_root.save.progSpeedAuto - 149) * 180000);
   }
   if(_root.save.progSpeedAuto >= 200)
   {
      costA = Infinity;
   }
   costB = Math.floor(_root.save.progSpeedManual * _root.save.progSpeedManual / 5000);
   if(_root.save.progSpeedManual >= 200)
   {
      costB = Math.floor(_root.save.progSpeedManual * _root.save.progSpeedManual / 500);
   }
   if(_root.save.progSpeedManual >= 300)
   {
      costB = Math.floor((_root.save.progSpeedManual - 299) * 180);
   }
   if(_root.save.progSpeedManual >= 400)
   {
      costB = Math.floor((_root.save.progSpeedManual - 398) * 9000);
   }
   if(_root.save.progSpeedManual >= 500)
   {
      costB = Infinity;
   }
   p3.text = "-" + _root.withComma(costA);
   p4.text = "-" + _root.withComma(costB);
}
dispProgSpeed();
shinyTokenText.text = _root.withComma(_root.save.shinyToken);
if(_root.save.progFirstRestock != true)
{
   _root.save.progFirstRestock = true;
   _root.restockModule();
}
onEnterFrame = function()
{
   shinyTokenText.text = _root.withComma(_root.save.shinyToken);
};
