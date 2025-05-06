//! status=pending
_alpha = 0;
onEnterFrame = function()
{
   if(_root.showWhack == true)
   {
      _root.showWhack = false;
      whackText2 = _root.whackMessage;
      whackText.text = whackText2;
      _alpha = 100;
   }
   if(_alpha > 0)
   {
      _alpha = _alpha - 4;
   }
   else
   {
      _root.whackMessage = "";
      whackText2 = _root.whackMessage;
      whackText.text = whackText2;
   }
};
