//! status=pending
on(release){
   if(_root.save.inventoryExist[1333] == 1)
   {
      if(_root.save.inventoryDesc[1333] == "This medal\'s name depends on your Anti-Idle title when you craft it. Don\'t ask how that works.")
      {
         _root.showPopup("Cannot Contribute","The Museum is not interested in this item.");
      }
      else if(_root.save.inventoryDesc[1333] == "Thank you for your donation and your continued support!")
      {
         _root.showPopup("Cannot Contribute","The Museum is not interested in this item.");
      }
      else
      {
         tmpName = _root.save.inventoryName[1333];
         if(tmpName.indexOf("Dragon Slayer Hat") != -1)
         {
            tmpName = "Dragon Slayer Hat";
         }
         if(tmpName.indexOf("Dragon Slayer Shirt") != -1)
         {
            tmpName = "Dragon Slayer Shirt";
         }
         if(tmpName.indexOf("Dragon Slayer Gloves") != -1)
         {
            tmpName = "Dragon Slayer Gloves";
         }
         if(tmpName.indexOf("Dragon Slayer Pants") != -1)
         {
            tmpName = "Dragon Slayer Pants";
         }
         if(tmpName.indexOf("Dragon Slayer Shoes") != -1)
         {
            tmpName = "Dragon Slayer Shoes";
         }
         if(tmpName.indexOf("Demon Slayer Hat") != -1)
         {
            tmpName = "Demon Slayer Hat";
         }
         if(tmpName.indexOf("Demon Slayer Shirt") != -1)
         {
            tmpName = "Demon Slayer Shirt";
         }
         if(tmpName.indexOf("Demon Slayer Gloves") != -1)
         {
            tmpName = "Demon Slayer Gloves";
         }
         if(tmpName.indexOf("Demon Slayer Pants") != -1)
         {
            tmpName = "Demon Slayer Pants";
         }
         if(tmpName.indexOf("Demon Slayer Shoes") != -1)
         {
            tmpName = "Demon Slayer Shoes";
         }
         if(tmpName.indexOf("[Event] [I] Mystery Enhancer Identifier") != -1)
         {
            tmpName = "[Event] Mystery Enhancer Identifier";
         }
         if(tmpName.indexOf("Armor Cleansing Rock") != -1)
         {
            tmpName = "Armor Cleansing Rock";
         }
         tmpSlot = 1400;
         i = 1401;
         while(i <= 3000)
         {
            if(_root.museumItem[i] == tmpName)
            {
               tmpSlot = i;
               if(_root.save.inventoryExist[tmpSlot] != 1)
               {
                  i = 3001;
               }
            }
            i++;
         }
         if(tmpSlot != 1400)
         {
            if(_root.save.inventoryExist[tmpSlot] == 1)
            {
               _root.showPopup("Cannot Contribute","The Museum already has this item.");
            }
            else
            {
               if(_root.save.inventorySubtype[1333] == "Trophy")
               {
                  _root.save.collectionPointTrophy += 1;
               }
               _root.swapArenaItem(1333,tmpSlot);
               _root.save.collectionPoint += _root.museumValue[tmpSlot];
               _parent.museum.museumOffset = Math.ceil((tmpSlot - 1400) / 10) - 1;
               if(_parent.museum.museumOffset > _parent.museum.museumMaxOffset)
               {
                  _parent.museum.museumOffset = _parent.museum.museumMaxOffset;
               }
               _root.showPopup("Success","You have successfully contributed the item. You have gained " + _root.museumValue[tmpSlot] + " CP. You currently have " + _root.withComma(_root.save.collectionPoint) + " CP.");
            }
         }
         else
         {
            _root.showPopup("Cannot Contribute","The Museum is not interested in this item.");
         }
      }
   }
   else
   {
      _root.showPopup("Cannot Contribute","You did not select an item to contribute. Ctrl + Click an item in your inventory, then click the slot on the left of this button.");
   }
}


