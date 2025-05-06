//! status=pending
on(release){
   if(_root.alreadyopened != 1)
   {
      _root.fcgholder.attachMovie("entireFcg","entireFcg",10,{_x:0,_y:70,_width:650,_height:520});
      _root.alreadyopened = 1;
   }
}


