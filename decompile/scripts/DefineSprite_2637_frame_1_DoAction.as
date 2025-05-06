//! status=pending
kongName = _root.kongregate_username;
if(kongName == undefined || kongName == "Guest")
{
   kongName = _root.save.displayName;
}
nameText.text = kongName;
titleText.text = _root.save.userTitle;
