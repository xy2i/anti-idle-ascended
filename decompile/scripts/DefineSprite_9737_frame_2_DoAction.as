//! status=pending
cR = _root.saveGlobal.breakR[_root.colorChangeID];
cG = _root.saveGlobal.breakG[_root.colorChangeID];
cB = _root.saveGlobal.breakB[_root.colorChangeID];
cRO = _root.saveGlobal.breakR[_root.colorChangeID];
cGO = _root.saveGlobal.breakG[_root.colorChangeID];
cBO = _root.saveGlobal.breakB[_root.colorChangeID];
oriText.textColor = cRO * 65536 + cGO * 256 + cBO;
onEnterFrame = function()
{
   newText.textColor = cR * 65536 + cG * 256 + cB;
};
