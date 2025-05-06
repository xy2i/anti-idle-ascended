//! status=pending
function checkAlly()
{
   tempOffset = _parent.allyOffset;
   tempID = _parent.allyOffset + Math.round(_Y / 20) + 1;
   if(_parent.allyFiltered == true)
   {
      ID = _parent.allyArray[tempID];
   }
   else
   {
      ID = tempID;
   }
   if(isNaN(ID))
   {
      ID = 0;
   }
   if(ID >= 1)
   {
      allyEXP = _root.save.arenaAllyEXP[ID];
      if(isNaN(allyEXP))
      {
         if(isNaN(_root.save.arenaBestiary[ID]))
         {
            allyEXP = 0;
            obtained = false;
            gotoAndStop(2);
         }
         else
         {
            allyEXP = 0;
            obtained = false;
            gotoAndStop(4);
            favorite = _root.save.arenaAllyFavorite[ID];
            if(favorite == true)
            {
               favoriteIcon.gotoAndStop(1);
            }
            else
            {
               favoriteIcon.gotoAndStop(2);
            }
            allyName.text = _root.enemyList[ID].name;
            if(ID < 10)
            {
               fakeID = "00" + ID;
            }
            else if(ID < 100)
            {
               fakeID = "0" + ID;
            }
            else
            {
               fakeID = ID;
            }
            allyID.text = fakeID;
         }
      }
      else
      {
         obtained = true;
         gotoAndStop(3);
         favorite = _root.save.arenaAllyFavorite[ID];
         if(allyEXP >= 10000 || ID >= 501)
         {
            expBar._xscale = 100;
            if(ID >= 501)
            {
               if(_root.save.arenaAllyUpgrade[ID] == 15)
               {
                  fr = 22;
               }
               else
               {
                  fr = 21;
               }
            }
            else if(_root.save.arenaAllyUpgrade[ID] == 15)
            {
               fr = 13;
               if(!isNaN(_root.save.arenaBestiaryUlt1[ID]))
               {
                  fr += 1;
               }
               if(!isNaN(_root.save.arenaBestiaryUlt2[ID]))
               {
                  fr += 2;
               }
               if(!isNaN(_root.save.arenaBestiaryUlt3[ID]))
               {
                  fr += 4;
               }
            }
            else
            {
               fr = 2 + _root.save.arenaAllyUpgrade[ID];
            }
            expBar.gotoAndStop(fr);
            allyProg.text = "";
         }
         else
         {
            expBar._xscale = allyEXP / 100;
            expBar.gotoAndStop(1);
            allyProg.text = _root.withComma(allyEXP) + " EXP";
         }
         if(favorite == true)
         {
            favoriteIcon.gotoAndStop(1);
         }
         else
         {
            favoriteIcon.gotoAndStop(2);
         }
         allyName.text = _root.enemyList[ID].name;
         if(ID < 10)
         {
            fakeID = "00" + ID;
         }
         else if(ID < 100)
         {
            fakeID = "0" + ID;
         }
         else
         {
            fakeID = ID;
         }
         allyID.text = fakeID;
         if(_root.save.arenaAlly == ID)
         {
            equipped = true;
            equipIcon.gotoAndStop(1);
         }
         else
         {
            equipped = false;
            equipIcon.gotoAndStop(2);
         }
      }
   }
   else
   {
      gotoAndStop(2);
   }
}
checkAlly();
onEnterFrame = function()
{
   if(tempOffset != _parent.allyOffset || _parent.recheckAlly > 0)
   {
      checkAlly();
   }
   if(equipped == true && _root.save.arenaAlly != ID)
   {
      checkAlly();
   }
};
