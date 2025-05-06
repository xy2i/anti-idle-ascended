//! status=pending
on(release){
   _root.showPopup("PWNed!","You cannot throw slimes. They throw you.");
}


onClipEvent(enterFrame){
   if(Math.random() > 0.9)
   {
      xSpeed += Math.random() * 10 - Math.random() * 10;
   }
   if(Math.random() > 0.99 && _Y >= -81)
   {
      _Y = -81;
      ySpeed -= Math.random() * 20;
   }
   _X = _X + xSpeed;
   if(_X > 260)
   {
      _X = 260;
      xSpeed *= -1;
   }
   if(_X < -160)
   {
      _X = -160;
      xSpeed *= -1;
   }
   if(_Y < -80)
   {
      _Y = _Y + ySpeed;
   }
   xSpeed *= 0.9;
   ySpeed += 0.5;
   if(_Y >= -80)
   {
      _Y = -80;
      ySpeed = 0;
   }
}


onClipEvent(load){
   _X = 0;
   _Y = -80;
   xSpeed = 0;
   ySpeed = 0;
}


