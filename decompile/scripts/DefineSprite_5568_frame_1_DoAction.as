//! status=pending
museumOffset = 0;
museumMaxOffset = 115;
tmpOffset = 0;
onEnterFrame = function()
{
   _root.toCheck = true;
   if(tmpOffset != museumOffset)
   {
      tmpOffset = museumOffset;
      _root.actiondescription = "";
      _root.actiondescription2 = "";
   }
   if(_root.scrollingDir == -1)
   {
      museumOffset -= 2;
      if(museumOffset < 0)
      {
         museumOffset = 0;
      }
   }
   if(_root.scrollingDir == 1)
   {
      museumOffset += 2;
      if(museumOffset > museumMaxOffset)
      {
         museumOffset = museumMaxOffset;
      }
   }
   o1Text.text = museumOffset + 1;
   o2Text.text = museumOffset + 2;
   o3Text.text = museumOffset + 3;
   o4Text.text = museumOffset + 4;
   o5Text.text = museumOffset + 5;
};
