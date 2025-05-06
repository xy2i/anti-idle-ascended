//! status=pending
on(release, keyPress "<Right>"){
   tempLength = _root.totalachievements;
   if(_root.achMode != "All")
   {
      tempLength = achArray.length - 1;
   }
   if(achPage < Math.ceil(tempLength / 7 / _root.achViewType))
   {
      achPage += 1;
   }
   toRefresh = 5;
}


