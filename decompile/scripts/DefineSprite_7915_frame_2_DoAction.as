//! status=pending
stop();
started = false;
charTyped = 0;
timeElapsed = 0;
curLine = 0;
curWpm = 0;
mistakeCount = 0;
recentMistake = 0;
whatToType = typeArray[curLine];
prevLine2.text = "Type what you see below:";
prevLine1.text = typeArray[curLine - 1];
currentLine.text = typeArray[curLine];
currentLine2.text = typeArray[curLine];
nextLine1.text = typeArray[curLine + 1];
nextLine2.text = typeArray[curLine + 2];
myTyping = "";
prevTyping = "";
curLength = 0;
onEnterFrame = function()
{
   if(myTyping == " ")
   {
      myTyping = "";
   }
   if(myTyping.length - curLength >= 15 || Key.isDown(2) || Key.isDown(17) || Key.isDown(45))
   {
      myTyping = "";
   }
   curLength = myTyping.length;
   if(myTyping != "" && started != true)
   {
      started = true;
   }
   if(started == true)
   {
      timeElapsed += 1 / _root.fps;
   }
   curWpm = Math.floor((charTyped + curLength) / timeElapsed * 12);
   wpmText.text = curWpm;
   if(curLine < 4)
   {
      wpmText.text = "?";
   }
   mistakeText.text = mistakeCount;
   if(myTyping != whatToType.substr(0,myTyping.length))
   {
      typeHere.textColor = 16711680;
   }
   else
   {
      typeHere.textColor = 6749952;
   }
   if(myTyping == whatToType || myTyping == whatToType + " " || myTyping == whatToType + "  " || myTyping == whatToType + "   ")
   {
      if(whatToType == "" || Key.isDown(32) || Key.isDown(13))
      {
         charTyped += whatToType.length;
         if(whatToType != "")
         {
            charTyped += 1;
            _root.gainBlueCoin(3,9999);
         }
         curLine += 1;
         curLength = 0;
         myTyping = "";
         whatToType = typeArray[curLine];
         prevLine2.text = typeArray[curLine - 2];
         prevLine1.text = typeArray[curLine - 1];
         currentLine.text = typeArray[curLine];
         currentLine2.text = typeArray[curLine];
         nextLine1.text = typeArray[curLine + 1];
         nextLine2.text = typeArray[curLine + 2];
         if(whatToType == "[END]")
         {
            gotoAndStop(3);
         }
      }
   }
   prevTyping = myTyping;
};
