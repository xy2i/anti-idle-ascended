//! status=pending
shopCheck = 2;
onEnterFrame = function()
{
   shopCheck -= 1;
   pageText.text = _root.specialShopPage;
   tokenDisp.text = _root.withComma(_root.save.questToken);
   tokenDisp2.text = _root.withComma(_root.save.eventToken);
};
