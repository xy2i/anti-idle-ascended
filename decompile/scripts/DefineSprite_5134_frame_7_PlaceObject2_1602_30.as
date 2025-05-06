//! status=pending
on(release){
   _parent.checkBM();
   if(_root.save.battlePoint >= _parent.nextReward && !isNaN(_parent.nextReward))
   {
      if(_root.emptyEnhancerSlot >= 1)
      {
         _root.save.battleReward += 1;
         if(_root.save.battleReward >= 1 && _root.save.battleReward <= 4)
         {
            _root.getArenaEnhancer("Weapon Attack Enhancer",10,50,0,100,"","","",0,706,0,Infinity,"Weapon Attack Rock Lv. 10","",false);
         }
         if(_root.save.battleReward == 5)
         {
            _root.getArenaEnhancer("Weapon Attack Enhancer",10,50,0,100,"","","",0,706,0,Infinity,"[I] Weapon Attack Rock Lv. 10","",true);
         }
         if(_root.save.battleReward >= 6 && _root.save.battleReward <= 9)
         {
            _root.getArenaEnhancer("Weapon Unobtainium Enhancer",355,5,0,100,"","","",0,706,0,Infinity,"Weapon Unobtainium Enhancer Lv. 5","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.",false);
         }
         if(_root.save.battleReward == 10)
         {
            _root.getArenaEnhancer("Weapon Unobtainium Enhancer",355,5,0,100,"","","",0,706,0,Infinity,"[I] Weapon Unobtainium Enhancer Lv. 5","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.",true);
         }
         if(_root.save.battleReward >= 11 && _root.save.battleReward <= 14)
         {
            _root.getArenaEnhancer("Armor Unobtainium Enhancer",365,5,0,100,"","","",0,706,0,Infinity,"Armor Unobtainium Enhancer Lv. 5","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.",false);
         }
         if(_root.save.battleReward == 15)
         {
            _root.getArenaEnhancer("Armor Unobtainium Enhancer",365,5,0,100,"","","",0,706,0,Infinity,"[I] Armor Unobtainium Enhancer Lv. 5","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.",true);
         }
         if(_root.save.battleReward >= 16 && _root.save.battleReward <= 19)
         {
            _root.getArenaEnhancer("Armor Unique Enhancer",410,1800,0,100,"","","",0,706,0,Infinity,"Armor Unique Enhancer MAX","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.",false);
         }
         if(_root.save.battleReward == 20)
         {
            _root.getArenaEnhancer("Armor Unique Enhancer",410,1800,0,100,"","","",0,706,0,Infinity,"[I] Armor Unique Enhancer MAX","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.",true);
         }
         if(_root.save.battleReward >= 21 && _root.save.battleReward <= 24)
         {
            _root.getArenaEnhancer("Weapon Unique Enhancer",400,3000,0,100,"","","",0,706,0,Infinity,"Weapon Unique Enhancer MAX","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.",false);
         }
         if(_root.save.battleReward == 25)
         {
            _root.getArenaEnhancer("Weapon Unique Enhancer",400,3000,0,100,"","","",0,706,0,Infinity,"[I] Weapon Unique Enhancer MAX","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.",true);
         }
      }
      else
      {
         _root.showPopup("Error","Your Enhancer inventory is full.");
      }
   }
}


onClipEvent(enterFrame){
   if(_root.save.battlePoint >= _parent.nextReward)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


