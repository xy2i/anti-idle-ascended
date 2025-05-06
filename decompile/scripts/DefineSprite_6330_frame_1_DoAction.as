//! status=pending
pos = Math.round((_Y - 40) / 35);
onEnterFrame = function()
{
   songNum = _parent.songOffset + pos;
   if(_parent._parent.songNameArr[songNum] == undefined)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
      if(songNum == 0)
      {
         trackCountText.text = "Custom Song";
         songNameText.text = _parent._parent.songNameArr[songNum];
         diffText1.text = "";
         diffText2.text = "";
         diffText3.text = "";
         diffText4.text = "";
         rankDisp1.gotoAndStop(13);
         rankDisp2.gotoAndStop(13);
         rankDisp3.gotoAndStop(13);
         rankDisp4.gotoAndStop(13);
      }
      else
      {
         trackCountText.text = "Track " + songNum;
         songNameText.text = _parent._parent.songNameArr[songNum];
         diffText1.text = _parent._parent.songDiffArr[songNum][0];
         diffText2.text = _parent._parent.songDiffArr[songNum][1];
         diffText3.text = _parent._parent.songDiffArr[songNum][2];
         diffText4.text = _parent._parent.songDiffArr[songNum][3];
         i = 1;
         while(i <= 4)
         {
            this["diffText" + i].text = Math.floor(_parent._parent.songDiffArr[songNum][i - 1] / 2);
            if(_parent._parent.songDiffArr[songNum][i - 1] % 2 == 1)
            {
               this["diffText" + i].text += "+";
            }
            if(isNaN(_root.save.highMMRSpecial[songNum * 10 + i]))
            {
               _root.save.highMMRSpecial[songNum * 10 + i] = 0;
            }
            scr = _root.save.highMMRSpecial[songNum * 10 + i];
            rank = 0;
            z = 1;
            while(z <= 12)
            {
               if(scr >= _root.mmrRankArr[z])
               {
                  rank = z;
               }
               z++;
            }
            if(rank > 0)
            {
               this["rankDisp" + i].gotoAndStop(rank);
            }
            else
            {
               this["rankDisp" + i].gotoAndStop(13);
            }
            i++;
         }
      }
   }
};
onRelease = function()
{
   if(songNum >= 0 && songNum < _parent._parent.songStr.length)
   {
      _root.mmrSong = songNum;
      _root.mmrSongStr = _parent._parent.songStr[_root.mmrSong];
      _parent.gotoAndStop(2);
   }
};
