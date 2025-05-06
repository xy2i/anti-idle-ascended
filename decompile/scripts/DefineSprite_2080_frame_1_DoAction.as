//! status=pending
box1r = 0;
box2r = 0;
box3r = 0;
onEnterFrame = function()
{
   box1target = _root.fcg_rewardt1;
   box2target = _root.fcg_rewardt2;
   box3target = _root.fcg_rewardt3;
   box1r += Math.ceil((box1target - box1r) / 10);
   box2r += Math.ceil((box2target - box2r) / 30);
   box3r += Math.ceil((box3target - box3r) / 30);
   box1 = "+" + _root.withComma(Math.round(box1r));
   box2 = "+" + _root.withComma(Math.round(box2r));
   box3 = "+" + _root.withComma(Math.round(box3r));
};
