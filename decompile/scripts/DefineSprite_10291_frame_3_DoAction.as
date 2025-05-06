//! status=pending
newTitleText.text = _root.save.userTitle;
onEnterFrame = function()
{
   t1.text = _root.save.titlered;
   t2.text = _root.save.titlegreen;
   t3.text = _root.save.titleblue;
   if(_root.topBar.titleDisp.titleText.text != _root.save.userTitle)
   {
      _root.topBar.titleDisp.titleText.text = _root.save.userTitle;
   }
   titleColor = _root.save.titlered * 65536 + _root.save.titlegreen * 256 + _root.save.titleblue;
   if(_root.topBar.titleDisp.titleText.textColor != titleColor)
   {
      _root.topBar.titleDisp.nameText.textColor = titleColor;
      _root.topBar.titleDisp.titleText.textColor = titleColor;
   }
};
