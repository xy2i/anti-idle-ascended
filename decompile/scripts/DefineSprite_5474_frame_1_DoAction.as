//! status=pending
function createSquare(hex, alp)
{
   this.createEmptyMovieClip("square_mc",100);
   this.square_mc.beginFill(("0x" + hex) * 1,alp);
   this.square_mc.moveTo(0,0);
   this.square_mc.lineTo(25,0);
   this.square_mc.lineTo(25,25);
   this.square_mc.lineTo(0,25);
   this.square_mc.lineTo(0,0);
   this.square_mc.endFill();
   _root.save.drawingBoardHex[loc] = hex;
   _root.save.drawingBoardAlp[loc] = alp;
}
if(_root.save.drawingBoardAlp[loc] > 0)
{
   createSquare(_root.save.drawingBoardHex[loc],_root.save.drawingBoardAlp[loc]);
}
onEnterFrame = function()
{
   createSquare(_root.drawingHex,100);
};
