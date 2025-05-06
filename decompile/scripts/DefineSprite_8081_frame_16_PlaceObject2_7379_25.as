//! status=pending
on(press){
   xBase = _xmouse;
   yBase = _ymouse;
   dragging = true;
}


on(releaseOutside,release){
   dragging = false;
   bounce = false;
}


onClipEvent(enterFrame){
   if(dragging == true)
   {
      xVel *= 0.8;
      yVel *= 0.8;
      xNew = _parent._xmouse - xBase;
      yNew = _parent._ymouse - yBase;
      if(xNew < 25)
      {
         xNew = 25;
      }
      if(xNew > 475)
      {
         xNew = 475;
      }
      if(yNew < 0)
      {
         yNew = 0;
      }
      if(yNew > 300)
      {
         yNew = 300;
      }
      xVel += xNew - tmpX;
      yVel += yNew - tmpY;
      tmpX = xNew;
      tmpY = yNew;
      xPos = tmpX;
      yPos = tmpY;
   }
   else
   {
      xVel *= 0.8;
      yVel += 4;
      xPos += xVel;
      yPos += yVel;
      if(altitude < 300 - yPos)
      {
         altitude = 300 - yPos;
      }
      if(xPos < 25)
      {
         xPos = 25;
         xVel *= -0.6;
      }
      if(xPos > 475)
      {
         xPos = 475;
         xVel *= -0.6;
      }
      if(yPos > 300)
      {
         if(altitude >= 350 && bounce == false)
         {
            if(_root.save.aprilFoolsBest < altitude)
            {
               _root.save.aprilFoolsBest = altitude;
               _parent.afDisp.afText.text = "Altitude: " + _root.withComma(altitude) + "px (NEW BEST!)";
               _parent.afDisp.alphaX = 200;
            }
            else
            {
               _parent.afDisp.afText.text = "Altitude: " + _root.withComma(altitude) + "px (Best: " + _root.withComma(_root.save.aprilFoolsBest) + "px)";
               _parent.afDisp.alphaX = 200;
            }
         }
         altitude = 0;
         bounce = true;
         yPos = 300;
         yVel *= -0.4;
         if(yVel > -2)
         {
            yVel = 0;
         }
      }
   }
   _X = xPos;
   _Y = yPos;
}


onClipEvent(load){
   dragging = false;
   xVel = 0;
   yVel = 0;
   xPos = _X;
   yPos = _Y;
   tmpX = xPos;
   tmpY = yPos;
   altitude = 0;
   bounce = false;
   xBase = 0;
   yBase = 0;
}


