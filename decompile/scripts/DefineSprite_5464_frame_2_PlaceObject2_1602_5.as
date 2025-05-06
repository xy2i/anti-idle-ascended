//! status=pending
on(release){
   textToCopy = _parent.loadCode;
   System.setClipboard(textToCopy);
}


