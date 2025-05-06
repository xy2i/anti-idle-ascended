//! status=pending
on(release){
   _root.saveGlobal.breakR[_root.colorChangeID] = _parent.cR;
   _root.saveGlobal.breakG[_root.colorChangeID] = _parent.cG;
   _root.saveGlobal.breakB[_root.colorChangeID] = _parent.cB;
   _parent.gotoAndStop(1);
}


