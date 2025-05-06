//! status=pending
onClipEvent(enterFrame){
   if(_root.save.collectionPointMax < _root.save.collectionPoint)
   {
      _root.save.collectionPointMax = _root.save.collectionPoint;
   }
   cpText.text = _root.withComma(_root.save.collectionPoint);
   peakText.text = "Peak: " + _root.withComma(_root.save.collectionPointMax);
}


onClipEvent(load){
   cpText.text = _root.withComma(_root.save.collectionPoint);
   peakText.text = "Peak: " + _root.withComma(_root.save.collectionPointMax);
}


