//! status=pending
onClipEvent(enterFrame){
   progFragText.htmlText = "You have <font color=\'#FFFFFF\'><b>" + _root.withComma(_root.save.progFrag) + "</b></font> Progress Box Fragments.";
}


onClipEvent(load){
   progFragText.htmlText = "";
}


