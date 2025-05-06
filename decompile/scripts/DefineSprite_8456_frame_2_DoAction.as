//! status=pending
offlineRest = _root.quitDuration;
maxRest = 72;
if(_root.save.bestLevel < 180 && maxRest > 3)
{
   maxRest = 3;
}
else if(_root.save.bestLevel < 500 && maxRest > 6)
{
   maxRest = 6;
}
else if(_root.save.bestLevel < 2000 && maxRest > 24)
{
   maxRest = 24;
}
if(offlineRest > maxRest)
{
   offlineRest = maxRest;
}
pbPerHour = Math.ceil((50 + _root.save.progFrag / 50000) * Math.min(_root.save.banned + 1,6));
if(pbPerHour > 1000)
{
   pbPerHour = 1000;
}
offlineExp = Math.floor(450000 * Math.pow(_root.save.level,0.75) * Math.pow(offlineRest,0.9) * Math.min(_root.save.banned + 1,6));
offlineCoin = Math.floor(450000 * Math.pow(_root.save.level,0.75) * Math.pow(offlineRest,0.9) * (0.9 + Math.random() * 0.2) * Math.min(_root.save.banned + 1,6));
offlinePb = Math.floor(offlineRest * pbPerHour);
if(offlinePb > Math.floor(_root.save.progFrag / 100))
{
   offlinePb = Math.floor(_root.save.progFrag / 100);
}
if(offlinePb > 999999 - _root.save.mysteryBox[5])
{
   offlinePb = 999999 - _root.save.mysteryBox[5];
}
if(offlinePb < 0)
{
   offlinePb = 0;
}
_root.save.mysteryBox[5] += offlinePb;
_root.save.progFrag -= offlinePb * 100;
if(offlineExp > 999999999999)
{
   offlineExp = 999999999999;
}
if(offlineCoin > 999999999999)
{
   offlineCoin = 999999999999;
}
_root.save.restTime += 3600 * offlineRest;
_root.save.totalPlayTime += 1800 * offlineRest;
_root.save.ascendPlayTime += 1800 * offlineRest;
if(_root.save.restTime >= 360000)
{
   _root.save.restTime = 360000;
}
o1.text = _root.withComma(offlineExp);
o2.text = _root.withComma(offlineCoin);
o3.text = offlineRest;
o4.text = _root.withComma(offlinePb * 100);
o5.text = _root.withComma(offlinePb);
_root.gainEXP(offlineExp,38);
_root.gainCoin(offlineCoin,38);
