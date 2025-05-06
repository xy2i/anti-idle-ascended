//! status=pending
onEnterFrame = function()
{
   ascendPointM.text = _root.withComma(_root.save.permaStupidity);
   ascendPointH.text = _root.withComma(_root.save.permaStupidityHard);
   ascendPointI.text = _root.withComma(_root.save.permaStupidityImpossible);
};
