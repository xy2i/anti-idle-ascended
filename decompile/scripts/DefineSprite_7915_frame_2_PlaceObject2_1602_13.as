//! status=pending
on(release){
   _parent.started = false;
   _parent.charTyped = 0;
   _parent.timeElapsed = 0;
   _parent.curLine = 0;
   _parent.curWpm = 0;
   _parent.mistakeCount = 0;
   _parent.whatToType = _parent.typeArray[_parent.curLine];
   _parent.prevLine2.text = "Type what you see below:";
   _parent.prevLine1.text = _parent.typeArray[_parent.curLine - 1];
   _parent.currentLine.text = _parent.typeArray[_parent.curLine];
   _parent.nextLine1.text = _parent.typeArray[_parent.curLine + 1];
   _parent.nextLine2.text = _parent.typeArray[_parent.curLine + 2];
   _parent.recentMistake = 0;
   _parent.myTyping = "";
   _parent.prevTyping = "";
   _parent.curLength = 0;
}


