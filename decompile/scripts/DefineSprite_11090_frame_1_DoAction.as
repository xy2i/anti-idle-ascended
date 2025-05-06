//! status=pending
upNumber.text = _root.withComma(_root.upnumber);
if(_root.saveGlobal.latestVersion != _root.upnumber)
{
   if(_root.saveGlobal.latestVersion <= 1502)
   {
      _root.saveGlobal.returning1 = true;
   }
   _root.saveGlobal.latestVersion = _root.upnumber;
   upNumber.textColor = 16776960;
}
