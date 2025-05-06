//! status=pending
function genRandom()
{
   textToGet = random(11) + 1;
   if(textToGet == 1)
   {
      randomMessage.text = "Did you know? Anti-Idle: The Game is loading!";
   }
   if(textToGet == 2)
   {
      randomMessage.text = "This is one of 11 messages you can get, LOL!";
   }
   if(textToGet == 3)
   {
      randomMessage.text = "Don\'t forget to come back and check for updates!";
   }
   if(textToGet == 4)
   {
      randomMessage.text = "If it takes too long to load or doesn\'t load at all, try refreshing.";
   }
   if(textToGet == 5)
   {
      randomMessage.text = "Happy Birthday! What, it isn\'t your birthday? Oh well...";
   }
   if(textToGet == 6)
   {
      randomMessage.text = "Loading epicness...";
   }
   if(textToGet == 7)
   {
      randomMessage.text = "Finding a way to reduce lag...";
   }
   if(textToGet == 8)
   {
      randomMessage.text = "Increasing player\'s Impatience Quotient...";
   }
   if(textToGet == 9)
   {
      randomMessage.text = "The game is fully loaded when the green bar is full, by the way.";
   }
   if(textToGet == 10)
   {
      randomMessage.text = "Oh, by the way, this isn\'t the game. This is just the preloader!";
   }
   if(textToGet == 11)
   {
      if(_root.kongregate_username != undefined && _root.kongregate_username != "Guest")
      {
         randomMessage.text = "Someone named " + _root.kongregate_username + " is waiting to play Anti-Idle: The Game!";
      }
      else
      {
         randomMessage.text = "Don\'t forget, playing with a Kongregate account grants you higher rewards!";
      }
   }
}
randomMessage.text = "";
preloadCount = 0;
onEnterFrame = function()
{
   preloadCount += 1;
   if(preloadCount > 200)
   {
      preloadCount = 0;
      genRandom();
   }
   if(_root.getBytesLoaded() == _root.getBytesTotal())
   {
      _root.gotoAndPlay(2);
   }
};
