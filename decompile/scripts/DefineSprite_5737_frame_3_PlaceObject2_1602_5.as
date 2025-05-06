//! status=pending
on(release){
   _parent.checkCrystal();
   _parent._parent.crystal2Apply = _parent.crystalTemp;
   _parent._parent.checkCraftStat();
   _parent.gotoAndStop(1);
}


