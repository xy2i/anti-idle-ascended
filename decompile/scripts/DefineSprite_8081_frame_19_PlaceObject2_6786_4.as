//! status=pending
onClipEvent(enterFrame){
   if(targetAlpha > 0)
   {
      targetAlpha -= 40 / _root.fps;
      _alpha = _alpha + (targetAlpha - _alpha) / 10;
      if(_alpha > 100)
      {
         _alpha = 100;
      }
      gotoAndStop(1);
   }
   else
   {
      gotoAndStop(2);
   }
   if(_root.save.bestLevel >= 2 && _root.save.newbieProgress < 15 && targetAlpha <= 0)
   {
      if(Math.random() < 0.02)
      {
         tempSpeech += 1;
         if(tempSpeech > 10)
         {
            tempSpeech = 0;
         }
         if(tempSpeech == 1)
         {
            speech("Hello! I am the Dragon of Wisdom. Complete the Newbie Tasks to understand the basics of Anti-Idle!");
         }
         if(tempSpeech == 2)
         {
            speech("Press the orange [Shop] button in the bottom right corner to access the Feature Shop, where you can buy plenty of awesome features!");
         }
         if(tempSpeech == 3)
         {
            speech("Once you unlock some features, this game becomes REALLY fun! Trust me!");
         }
         if(tempSpeech == 4)
         {
            speech("After buying Idle Mode, you can turn it on or off by pressing the button below the Progress Bar.");
         }
         if(tempSpeech == 5)
         {
            speech("Idle Mode allows you to claim Progress Bar rewards automatically, but at a slower speed! Claim Progress Bar rewards to gain EXP and Coins!");
         }
         if(tempSpeech == 6)
         {
            speech("The Boost Generator feature allows you to refill Boost. Boost is VERY important! Boost increases the Progress Bar speed, and the amount of EXP and Coins you gain!");
         }
         if(tempSpeech == 7)
         {
            speech("After buying features such as the Garden or the Battle Arena, you can access them through the [World] dropdown menu above!");
         }
         if(tempSpeech == 8)
         {
            speech("In the Garden, you can plant and harvest trees for PROFIT!");
         }
         if(tempSpeech == 9)
         {
            speech("When you reach level 25, you can unlock the Battle Arena - the most fun feature in the entire game!");
         }
         if(tempSpeech == 10)
         {
            speech("If you ever want to return here, just select [Dragon] in the [World] dropdown menu!");
         }
      }
   }
}


onClipEvent(load){
   function speech(mess)
   {
      gotoAndStop(1);
      messText.text = mess;
      targetAlpha = 400;
   }
   tempSpeech = 0;
   speech("Hello! I am the Dragon of Wisdom. I know many things that you don\'t, but as you can see (can you?), I\'m really hungry for food. So, feed me!");
   if(_root.save.level < 50)
   {
      speech("Welcome to Anti-Idle: The Game!");
   }
}


