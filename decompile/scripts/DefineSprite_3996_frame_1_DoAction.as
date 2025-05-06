//! status=pending
onEnterFrame = function()
{
   nameText._width = nameText.textWidth + 5;
   if(nameText._width < 80)
   {
      nameText._width = 80;
   }
   tag._width = nameText._width + 50;
   _X = 65 - tag._width / 2;
};
