//! status=pending
keyID = Math.round(_Y / 10) + 1;
keyText.text = keyID;
_alpha = 0;
onEnterFrame = function()
{
   if(_root["exist_card" + keyID] == 1)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 0;
   }
};
