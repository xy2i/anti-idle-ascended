//! status=pending
onClipEvent(enterFrame){
   if(_parent.powerCost > 0 && _alpha < 100)
   {
      _alpha = _alpha + 10;
   }
   else if(_parent.powerCost == 0 && _alpha > 0)
   {
      _alpha = _alpha - 10;
   }
   if(_parent.powerCost > 0)
   {
      costText.text = "-" + _root.withComma(_parent.powerCost);
   }
   if(_root.save.fcgCash < _parent.powerCost)
   {
      costText.textColor = 16711680;
      if(_root.fcgCooldown < 1)
      {
         _root.fcgCooldown = 1;
      }
   }
   else
   {
      costText.textColor = 52479;
   }
}


onClipEvent(load){
   _alpha = 0;
}


