//! status=pending
function checkMouse()
{
   tX = Math.round(_root._xmouse);
   tY = Math.round(_root._ymouse);
   if(_X != tX || _Y != tY)
   {
      if(tX > 0 && tX < 650 && tY > 0 && tY < 670)
      {
         if(_root.cursoridle < 600)
         {
            _root.cursoridle = 0;
         }
         _X = tX;
         _Y = tY;
      }
   }
}
function checkDesc()
{
   if(_root.actiondescription2 == "")
   {
      if(_X > 450)
      {
         adX = -190;
      }
      else
      {
         adX = 15;
      }
   }
   else if(_X > 450)
   {
      adX = -190;
      adL = true;
   }
   else if(_X > 260)
   {
      adX = 15;
      adL = true;
   }
   else
   {
      adX = 15;
      adL = false;
   }
   if(ad._height > 0)
   {
      if(_Y > ad._height)
      {
         adY = -1 * ad._height;
      }
      else
      {
         adY = 15;
      }
   }
   if(adY > 650 - tY - ad._height)
   {
      adY = 650 - tY - ad._height;
   }
   ad._x = adX;
   ad._y = adY;
   if(_root.actiondescription2 != "")
   {
      fr = 1;
   }
   else if(_root.actiondescription != "")
   {
      fr = 2;
   }
   else if(_root.actiondescription == "" && _currentframe != 3)
   {
      fr = 3;
   }
   if(ad._currentframe != fr)
   {
      ad.gotoAndStop(fr);
   }
   if(fr != 3)
   {
      if(ad.textBox.htmlText != _root.actiondescription)
      {
         ad.textBox.htmlText = _root.actiondescription;
         ad.textBox.autoSize = true;
         ad.bgBox._height = ad.textBox._height;
      }
      if(fr == 1 && ad.textBox2.htmlText != _root.actiondescription2)
      {
         ad.textBox2.htmlText = _root.actiondescription2;
         ad.textBox2.autoSize = true;
         ad.bgBox2._height = ad.textBox2._height;
      }
   }
   if(fr == 1)
   {
      if(adL == true)
      {
         ad.bgBox2._x = -191;
         ad.textBox2._x = -191;
      }
      else
      {
         ad.bgBox2._x = 191;
         ad.textBox2._x = 191;
      }
   }
}
_root.actiondescription = "";
_root.actiondescription2 = "";
ad.gotoAndStop(3);
alt = false;
adX = _X;
adY = _Y;
adL = false;
checkMouse();
checkDesc();
onEnterFrame = function()
{
   checkMouse();
   alt = !alt;
   if(alt == true)
   {
      checkDesc();
   }
};
