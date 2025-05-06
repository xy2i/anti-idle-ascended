//! status=pending
onEnterFrame = null;
_root.save.featureTitleEditor = true;
_root.save.gardenFullness = 0;
elapsed_days = Math.floor(_root.save.ascendPlayTime / 86400);
remaining = _root.save.ascendPlayTime - elapsed_days * 86400;
elapsed_hours = Math.floor(remaining / 3600);
remaining -= elapsed_hours * 3600;
elapsed_minutes = Math.floor(remaining / 60);
remaining -= elapsed_minutes * 60;
elapsed_seconds = Math.floor(remaining / 1);
remaining -= elapsed_seconds * 1;
if(elapsed_hours < 10)
{
   elapsed_hours = "0" + elapsed_hours;
}
if(elapsed_minutes < 10)
{
   elapsed_minutes = "0" + elapsed_minutes;
}
if(elapsed_seconds < 10)
{
   elapsed_seconds = "0" + elapsed_seconds;
}
ascendTimeText.text = elapsed_days + "day " + elapsed_hours + "hr " + elapsed_minutes + "min " + elapsed_seconds + "sec";
ascendCountText.text = "Ascension #" + (_root.save.banned + 1);
if(_root.save.gDifficulty >= 3)
{
   ascendCountText.text += "\nDifficulty: Impossible";
}
else if(_root.save.gDifficulty >= 2)
{
   ascendCountText.text += "\nDifficulty: Hard";
}
else if(_root.save.gDifficulty >= 1)
{
   ascendCountText.text += "\nDifficulty: Medium";
}
