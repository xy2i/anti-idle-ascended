//! status=pending
onClipEvent(enterFrame){
   checkFrame();
}


onClipEvent(load){
   function checkFrame()
   {
      if(_parent.type == "Weapon")
      {
         gotoAndStop(2);
      }
      else if(_parent.subtype == "Hat")
      {
         gotoAndStop(3);
      }
      else if(_parent.subtype == "Shirt")
      {
         gotoAndStop(4);
      }
      else if(_parent.subtype == "Gloves")
      {
         gotoAndStop(5);
      }
      else if(_parent.subtype == "Pants")
      {
         gotoAndStop(6);
      }
      else if(_parent.subtype == "Shoes")
      {
         gotoAndStop(7);
      }
      else if(_parent.subtype == "Skin")
      {
         gotoAndStop(14);
      }
      else if(_parent.subtype == "Medal")
      {
         gotoAndStop(9);
      }
      else if(_parent.subtype == "Pendant")
      {
         gotoAndStop(11);
      }
      else if(_parent.subtype == "Earring")
      {
         gotoAndStop(12);
      }
      else if(_parent.subtype == "Trinket")
      {
         gotoAndStop(13);
      }
      else if(_parent.type == "Enhancer")
      {
         gotoAndStop(8);
      }
      else if(_parent.type == "Potion")
      {
         gotoAndStop(10);
      }
      else if(_parent.type == "Chip")
      {
         gotoAndStop(15);
      }
      bonuspow = _parent.bonusPow;
      if(isNaN(bonuspow))
      {
         bonuspow = 0;
      }
      if(bonuspow >= 100000)
      {
         fr = 11;
      }
      else if(bonuspow >= 706)
      {
         fr = 10;
      }
      else if(bonuspow >= 406)
      {
         fr = 9;
      }
      else if(bonuspow >= 256)
      {
         fr = 8;
      }
      else if(bonuspow >= 156)
      {
         fr = 7;
      }
      else if(bonuspow >= 106)
      {
         fr = 6;
      }
      else if(bonuspow >= 66)
      {
         fr = 5;
      }
      else if(bonuspow >= 36)
      {
         fr = 4;
      }
      else if(bonuspow >= 16)
      {
         fr = 3;
      }
      else if(bonuspow >= 1)
      {
         fr = 2;
      }
      else
      {
         fr = 1;
      }
      if(powDisp._currentframe != fr)
      {
         powDisp.gotoAndStop(fr);
      }
      cost = _parent.cost;
      costType = _parent.costType;
      if(_parent.craftItem == true || _root.save.arenaPixel >= cost && costType == "Pixels" || _root.save.arenaCraft >= cost && costType == "Crafting Material" || _root.save.blueCoin >= cost && costType == "Blue Coins" || _root.save.arenaProofTraining >= cost && costType == "Proof of Training" || _root.save.arenaProofMission >= cost && costType == "Proof of Mission")
      {
         fr = 1;
         if(_root.save.arenaLevel < _parent.reqRank)
         {
            fr = 5;
         }
      }
      else
      {
         fr = 4;
      }
      if(itemBG._currentframe != fr)
      {
         itemBG.gotoAndStop(fr);
      }
      protDisp.gotoAndStop(2);
   }
   checkFrame();
}


