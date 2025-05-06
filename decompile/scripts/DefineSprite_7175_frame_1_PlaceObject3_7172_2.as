//! status=pending
onClipEvent(enterFrame){
   _parent.repText.text = _root.withComma(_root.save.awesomeReputation);
   red = 255;
   if(_root.save.awesomeReputation > 0)
   {
      red = Math.floor(255 - _root.save.awesomeReputation / 10);
   }
   if(red < 0)
   {
      red = 0;
   }
   green = 255;
   if(_root.save.awesomeReputation < 0)
   {
      green = Math.floor(255 + _root.save.awesomeReputation / 10);
   }
   if(green < 0)
   {
      green = 0;
   }
   _parent.repText.textColor = red * 256 * 256 + green * 256;
   targetRot = Math.log(Math.abs(_root.save.awesomeReputation) + 1) / 13.815510557964274 * 135;
   if(targetRot > 135 || Math.abs(_root.save.awesomeReputation) == 999999)
   {
      targetRot = 135;
   }
   if(_root.save.awesomeReputation < 0)
   {
      targetRot *= -1;
   }
   rot += (targetRot - rot) / 5;
   _rotation = rot;
}


onClipEvent(load){
   rot = 0;
   _parent.repText.text = _root.withComma(_root.save.awesomeReputation);
}


