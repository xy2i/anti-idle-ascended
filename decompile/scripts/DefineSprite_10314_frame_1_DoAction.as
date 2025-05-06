//! status=pending
stop();
dayCount = Math.round((_X - 75) / 60 + (_Y - 130) / 60 * 8) + 1;
if(dayCount > _root.max_date)
{
   gotoAndStop(2);
}
else
{
   attPic.gotoAndStop(_root.checkAttReward(dayCount));
   dayText.text = dayCount;
}
if(_root.save.curAttStamp > dayCount)
{
   checkCirc.gotoAndStop(1);
}
else if(_root.save.curAttStamp == dayCount)
{
   checkCirc.gotoAndStop(2);
}
else
{
   checkCirc.gotoAndStop(3);
}
