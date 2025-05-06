//! status=pending
on(release){
   colorArr = ["000000","323232","4B4B4B","646464","7D7D7D","969696","AFAFAF","C8C8C8","E1E1E1","FAFAFA","643232","964B4B","C86464","644B32","96704B","C89664","646432","96964B","C8C864","4B6432","70964B","96C864","326432","4B964B","64C864","326464","4B9696","64C8C8","324B64","4B7096","6496C8","323264","4B4B96","6464C8","4B3264","704B96","9664C8","643264","964B96","C864C8","FA3232","FA9632","FAFA32","96FA32","32FA32","32FAFA","3296FA","3232FA","9632FA","FA32FA"];
   proReq = false;
   inp = _parent.shareCodeText.text;
   loadArray = inp.split(",");
   valid = true;
   if(loadArray.length % 3 != 1)
   {
      valid = false;
   }
   if(loadArray[loadArray.length - 1] != "END")
   {
      valid = false;
   }
   tmpHex = new Array();
   tmpAlp = new Array();
   i = 0;
   while(i <= 1199)
   {
      tmpHex[i] = "000000";
      tmpAlp[i] = 0;
      i++;
   }
   if(valid == true)
   {
      i = 0;
      while(i < loadArray.length - 1)
      {
         thisLoc = loadArray[i];
         thisHex = loadArray[i + 1];
         premColor = true;
         j = 0;
         while(j <= 49)
         {
            if(thisHex == colorArr[j])
            {
               premColor = false;
            }
            j++;
         }
         if(premColor == true)
         {
            proReq = true;
         }
         thisAlp = loadArray[i + 2] * 1;
         if(thisAlp > 0 && thisAlp < 100)
         {
            proReq = true;
         }
         if(isNaN(("0x" + thisHex) * 1))
         {
            valid = false;
         }
         else if(("0x" + thisHex) * 1 < 0 || ("0x" + thisHex) * 1 > 16777215)
         {
            valid = false;
         }
         if(thisAlp < 0 || thisAlp > 100 || isNaN(thisAlp))
         {
            valid = false;
         }
         if(thisLoc < 0 || thisLoc > 1199 || isNaN(thisLoc))
         {
            valid = false;
         }
         if(valid == true)
         {
            tmpHex[thisLoc] = thisHex;
            tmpAlp[thisLoc] = thisAlp;
         }
         i += 3;
      }
      if(proReq == true && _root.save.battlePoint < 0 && _root.save.dt < 1)
      {
         _root.showPopup("Error","This drawing requires Advanced Version to load.");
      }
      else if(valid == true)
      {
         i = 0;
         while(i <= 1199)
         {
            _root.save.drawingBoardHex[i] = tmpHex[i];
            _root.save.drawingBoardAlp[i] = tmpAlp[i];
            trace(i + ": " + _root.save.drawingBoardHex[i] + ", " + _root.save.drawingBoardAlp[i]);
            i++;
         }
         _root.showPopup("Success","Drawing successfully loaded.");
         _parent.gotoAndStop(1);
      }
      else
      {
         _root.showPopup("Error","Invalid load code. Please check again to ensure that there are no line breaks or missing characters.");
      }
   }
   else
   {
      _root.showPopup("Error","Invalid load code. Please check again to ensure that there are no line breaks or missing characters.");
   }
}


