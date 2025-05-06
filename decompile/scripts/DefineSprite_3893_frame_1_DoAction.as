//! status=pending
function createSquare(hex, alp)
{
   tmpCode = hex + "-" + alp;
   this.createEmptyMovieClip("square_mc",100);
   this.square_mc.beginFill(("0x" + hex) * 1,alp);
   this.square_mc.moveTo(0,0);
   this.square_mc.lineTo(5,0);
   this.square_mc.lineTo(5,5);
   this.square_mc.lineTo(0,5);
   this.square_mc.lineTo(0,0);
   this.square_mc.endFill();
   _root.save.drawingBoardHex[loc] = hex;
   _root.save.drawingBoardAlp[loc] = alp;
}
xLoc = Math.round(_X / 5);
yLoc = Math.round(_Y / 5);
if(xLoc < 30)
{
   loc = Math.round(xLoc + yLoc * 30);
}
else
{
   loc = 900 + Math.round(xLoc - 30 + yLoc * 10);
}
if(_root.save.drawingBoardAlp[loc] > 0)
{
   createSquare(_root.save.drawingBoardHex[loc],_root.save.drawingBoardAlp[loc]);
}
onEnterFrame = function()
{
   newCode = _root.save.drawingBoardHex[loc] + "-" + _root.save.drawingBoardAlp[loc];
   if(newCode != tmpCode)
   {
      createSquare(_root.save.drawingBoardHex[loc],_root.save.drawingBoardAlp[loc]);
   }
   if(_xmouse >= 0 && _xmouse < 5 && _ymouse > 0 && _ymouse <= 5 && _parent.holding == true)
   {
      if(Key.isDown(16))
      {
         createSquare("000000",0);
      }
      else
      {
         createSquare(_root.drawingHex,_root.drawingAlp);
      }
   }
};
if(_root.house.arena._currentframe == 1)
{
   onEnterFrame = null;
}
