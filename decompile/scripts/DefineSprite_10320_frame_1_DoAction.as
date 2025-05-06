//! status=pending
stop();
if((_root.save.curDateID != _root.refresh_date || _root.save.curSheetID != _root.refresh_year * 100 + _root.refresh_month) && _root.saveid <= 4 && _root.save.bestLevel >= 7)
{
   gotoAndStop(2);
}
