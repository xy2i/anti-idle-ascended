//! status=pending
pos = Math.round((_X - 100) / 15);
colorArr = ["000000","323232","4B4B4B","646464","7D7D7D","969696","AFAFAF","C8C8C8","E1E1E1","FAFAFA","643232","964B4B","C86464","644B32","96704B","C89664","646432","96964B","C8C864","4B6432","70964B","96C864","326432","4B964B","64C864","326464","4B9696","64C8C8","324B64","4B7096","6496C8","323264","4B4B96","6464C8","4B3264","704B96","9664C8","643264","964B96","C864C8","FA3232","FA9632","FAFA32","96FA32","32FA32","32FAFA","3296FA","3232FA","9632FA","FA32FA"];
thisColor = colorArr[pos];
gotoAndStop(pos + 2);
onEnterFrame = function()
{
   thisColor = colorArr[pos + _root.drawingPage * 25];
   gotoAndStop(pos + 2 + _root.drawingPage * 25);
};
onRelease = function()
{
   _root.drawingHex = thisColor;
   _parent.colorCodeText.text = thisColor;
};
