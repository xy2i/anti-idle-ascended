//! status=pending
on(dragOver,rollOver){
   focus = true;
}


on(release){
   doThis();
}


on(rollOut,dragOut){
   focus = false;
}


onClipEvent(enterFrame){
   checkAlpha();
   if(Key.isDown(16) && focus == true)
   {
      doThis();
   }
}


onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.petMana >= 100)
      {
         _alpha = 100;
      }
      else
      {
         _alpha = 30;
      }
   }
   function doThis()
   {
      if(_root.save.petMana >= 100)
      {
         if(_root.save.careerLevel[11] < 200 || Math.random() < 0.7)
         {
            _root.save.petMana -= 100;
         }
         _root.gainCareerEXP(11,1000,true);
         _root.save.doubleCoinTime += 300;
         _root.save.doubleExpTime += 300;
         _root.dispNews(154,"You have gained 5 minutes of 1.5x EXP and Coins!");
         _parent.checkStuff();
      }
   }
   focus = false;
   checkAlpha();
}


