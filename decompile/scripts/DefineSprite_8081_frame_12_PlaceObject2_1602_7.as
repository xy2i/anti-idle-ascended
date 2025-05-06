//! status=pending
on(release){
   if(_root.alreadyopened != 1)
   {
      _root.fcgholder.attachMovie("entireFcg","entireFcg",10,{_x:10,_y:70,_width:500,_height:400});
      _root.alreadyopened = 1;
   }
}


