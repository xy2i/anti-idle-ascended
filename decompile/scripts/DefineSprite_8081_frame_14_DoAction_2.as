//! status=pending
holding = [0,0,0,0,0,0,0,0,0,0];
onEnterFrame = function()
{
   i = 0;
   while(i <= 9)
   {
      if((Key.isDown(48 + i) || Key.isDown(96 + i)) && _root.optionsScreen._currentframe == 1)
      {
         holding[i] += 1;
         if(i != 9)
         {
            j = 0;
            while(j <= 8)
            {
               if(j != i)
               {
                  holding[j] = 0;
               }
               j++;
            }
         }
      }
      else
      {
         holding[i] = 0;
      }
      i++;
   }
};
