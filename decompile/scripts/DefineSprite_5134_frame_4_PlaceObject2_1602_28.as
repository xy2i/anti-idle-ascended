//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Click this button to give Robroccoli 10% of your remaining Broccoli.";
}


on(release){
   baconToGive = Math.ceil(_root.save.arenaBacon / 10);
   if(baconToGive > 9999999 - _root.save.robaconBacon)
   {
      baconToGive = 9999999 - _root.save.robaconBacon;
   }
   _root.save.arenaBacon -= baconToGive;
   _root.save.robaconBacon += baconToGive;
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


