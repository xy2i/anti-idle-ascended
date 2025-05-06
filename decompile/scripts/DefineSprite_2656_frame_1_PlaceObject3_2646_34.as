//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Level</font></b>\nYour current level. The higher level you are, the more things you can do. Level also increases your bragging rights.";
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(levelText.text != _root.save.level)
   {
      levelText.text = _root.save.level;
   }
   red = 100 - Math.floor(_root.save.currentExp / _root.requiredExp * 100);
   if(red < 0)
   {
      red = 0;
   }
   if(red > 50)
   {
      red = 50;
   }
   red = Math.floor(red / 50 * 255);
   green = Math.floor(_root.save.currentExp / _root.requiredExp * 100);
   if(green < 0)
   {
      green = 0;
   }
   if(green > 50)
   {
      green = 50;
   }
   green = Math.floor(green / 50 * 225);
   color = red * 256 * 256 + green * 256;
   if(_root.save.level == 9002 && _root.saveid < 20)
   {
      color = 16711935;
   }
   if(_root.saveid >= 20 && _root.save.challengeToken == Math.floor(_root.saveid * (_root.saveid + 1) * (_root.saveid - 7) * 156.4))
   {
      color = 16711935;
   }
   if(levelText.textColor != color)
   {
      levelText.textColor = color;
   }
}


