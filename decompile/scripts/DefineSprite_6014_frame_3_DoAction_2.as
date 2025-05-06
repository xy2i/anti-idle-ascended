//! status=pending
onEnterFrame = function()
{
   if(_root.save.battlePoint < 0 && _root.save.dt < 5)
   {
      colorCodeText.text = _root.drawingHex;
      alphaText.text = _root.drawingAlp;
      colorCodeText.textColor = 10066329;
      alphaText.textColor = 10066329;
   }
   else
   {
      colorCodeText.textColor = 0;
      alphaText.textColor = 0;
      tempColor = ("0x" + colorCodeText.text) * 1;
      if(!isNaN(tempColor))
      {
         if(tempColor >= 0 && tempColor <= 16777215)
         {
            _root.drawingHex = colorCodeText.text;
         }
      }
      tempAlpha = alphaText.text * 1;
      if(!isNaN(tempAlpha))
      {
         if(tempAlpha >= 0 && tempAlpha <= 100)
         {
            _root.drawingAlp = tempAlpha;
         }
      }
   }
};
if(_root.drawingHex == undefined)
{
   _root.drawingHex = "000000";
}
if(isNaN(_root.drawingAlp))
{
   _root.drawingAlp = 100;
}
