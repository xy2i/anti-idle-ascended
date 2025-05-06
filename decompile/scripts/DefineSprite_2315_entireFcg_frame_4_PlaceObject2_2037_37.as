//! status=pending
on(keyPress "<Space>"){
   _root.fcg_targety = -50;
   _parent.gotoAndStop(2);
}


on(release,keyPress "<Escape>"){
   _root.fcg_targety = -50;
   _parent.gotoAndStop(2);
}


