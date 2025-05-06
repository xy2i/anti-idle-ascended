//! status=pending
on(release){
   checkCompatible();
   if(compatible == true && _root.save.specialStock[_parent.ID] > 0)
   {
      _root.save.questToken -= _parent.qtCost;
      if(_root.eventName == "Special Shop Day")
      {
         _root.gainEventToken(Math.ceil(_parent.qtCost / 5));
      }
      _root.save.specialStock[_parent.ID] -= 1;
      _parent.purchase();
   }
   checkCompatible();
}


onClipEvent(enterFrame){
   checkCompatible();
}


onClipEvent(load){
   function checkCompatible()
   {
      _parent.checkStat();
      compatible = false;
      _alpha = 10;
      if(_root.save.questToken >= _parent.qtCost && _root.save.specialStock[_parent.ID] > 0)
      {
         if(_parent.owned < _parent.cap || _parent.cap <= 0)
         {
            compatible = true;
            _alpha = 100;
         }
      }
   }
   checkCompatible();
}


