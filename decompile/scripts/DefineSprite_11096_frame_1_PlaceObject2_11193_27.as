//! status=pending
onClipEvent(enterFrame){
   if(_root.save.businessDisplay == true && _root.save.curBusiness != 0)
   {
      _visible = true;
   }
   else
   {
      _visible = false;
   }
}


