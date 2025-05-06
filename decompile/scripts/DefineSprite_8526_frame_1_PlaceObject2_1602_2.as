//! status=pending
on(release){
   _root.save.displayName = _parent.newNameText.text;
   _root.globalSave.displayName = _parent.newNameText.text;
   _root.topBar.titleDisp.nameText.text = _root.save.displayName;
}


