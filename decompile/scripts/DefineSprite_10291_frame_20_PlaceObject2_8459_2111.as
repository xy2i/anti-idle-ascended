//! status=pending
onClipEvent(enterFrame){
   whiteCoinText.text = _root.withComma(_root.save.whiteCoin);
}


onClipEvent(load){
   whiteCoinText.text = _root.withComma(_root.save.whiteCoin);
}


