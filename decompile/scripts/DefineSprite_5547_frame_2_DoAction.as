//! status=pending
shareCode = "";
i = 0;
while(i <= 1199)
{
   if(_root.save.drawingBoardAlp[i] > 0)
   {
      shareCode += i + "," + _root.save.drawingBoardHex[i] + "," + _root.save.drawingBoardAlp[i] + ",";
   }
   i++;
}
shareCode += "END";
shareCodeText.text = shareCode;
