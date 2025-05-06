//! status=pending
onEnterFrame = null;
if(isNaN(curWpm) || curWpm < 0 || curWpm > 300)
{
   curWpm = 0;
}
wpmText.text = curWpm;
mistakeText.text = mistakeCount;
wpmText.textColor = 10092288;
blueCoinToGain = Math.floor(curWpm + 50);
_root.gainBlueCoin(blueCoinToGain,9999);
if(_root.save.bestWpm < curWpm)
{
   if(_root.save.bestWpm == 0)
   {
      _root.gainBlueCoin(2000);
      _root.save.ripoffCard[1] += 1;
   }
   _root.save.bestWpm = curWpm;
   finalText.text = "Time Taken: " + _root.convertSec(timeElapsed);
   wpmText.textColor = 16750848;
}
trace(charCount);
