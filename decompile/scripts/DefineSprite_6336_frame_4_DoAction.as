//! status=pending
if(_root.mmrSong == 0)
{
   _parent.customSongText.text = "Custom Song";
   _parent.songNameArr[0] = _root.mmrSongTitle;
}
else
{
   _parent.customSongText.text = "";
}
_parent.songNameText.text = _root.mmrSongTitle;
_parent.artistText.text = "Original by: " + _root.mmrSongOriginalBy;
_parent.arrangementText.text = "MMR X Arrangement: " + _root.mmrSongArrangementBy;
onEnterFrame = null;
