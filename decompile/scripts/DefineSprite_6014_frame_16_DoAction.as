//! status=pending
filterText.text = _root.save.arenaFilter;
onEnterFrame = function()
{
   filterArr = filterText.text.split(",");
   filterCount = filterArr.length;
   charCount = filterText.text.length;
   filterCountText.text = "Items: " + filterCount + " / 300 | Characters: " + charCount + " / 9001";
   if(filterCount <= 300 && charCount <= 9001)
   {
      _root.save.arenaFilter = filterText.text;
   }
};
