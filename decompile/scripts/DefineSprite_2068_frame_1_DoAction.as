//! status=pending
box1r = 0;
box2r = 0;
box3r = 0;
box4r = 0;
delay = 0;
onEnterFrame = function()
{
   delay += 1;
   if(delay > 1)
   {
      box1target = _root["fcg_reward" + line + "a"];
      box2target = _root["fcg_reward" + line + "b"];
      box3target = _root["fcg_reward" + line + "c"];
      box4target = _root["fcg_reward" + line + "d"];
      box1r += (box1target - box1r) / 5;
      box2r += (box2target - box2r) / 5;
      box3r += (box3target - box3r) / 5;
      box4r += (box4target - box4r) / 5;
      box1 = _root.withComma(Math.round(box1r));
      if(box2r > 0)
      {
         box2 = "+" + _root.withComma(Math.round(box2r));
      }
      else
      {
         box2 = _root.withComma(Math.round(box2r));
      }
      if(box3r > 0)
      {
         box3 = "+" + _root.withComma(Math.round(box3r));
      }
      else
      {
         box3 = _root.withComma(Math.round(box3r));
      }
      if(box4r > 0)
      {
         box4 = "+" + _root.withComma(Math.round(box4r));
      }
      else
      {
         box4 = _root.withComma(Math.round(box4r));
      }
      delay = 0;
   }
};
