//! status=pending
on(release){
   if(_root.save.gardenPoint >= 1500 && _root.save.gardenResearch < _parent.reqResearch)
   {
      _root.save.gardenPoint -= 1500;
      _root.save.gardenResearch = _parent.reqResearch;
   }
}


