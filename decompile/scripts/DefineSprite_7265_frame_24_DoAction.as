//! status=pending
function choice1()
{
   if(Math.random() < 0.5)
   {
      _root.save.awesomeEnergy += 2;
      _parent._parent.awesomePop.displayMessage("After drinking the bottle of water (the water inside the bottle, not the bottle itself), you felt energized!\nEnergy +2");
   }
   else if(Math.random() < 0.6)
   {
      _root.save.awesomeEnergy -= 1;
      _parent._parent.awesomePop.displayMessage("You lost 1 Energy for some weird reason. FFFFFFFUUUUUUUUUUUU-");
   }
   else if(Math.random() < 0.5)
   {
      _root.save.awesomeEnergy += 5;
      _parent._parent.awesomePop.displayMessage("After drinking the bottle of water (the water inside the bottle, not the bottle itself), you felt super energized! THIS IS AWESOME!\nEnergy +5");
   }
   else if(Math.random() < 0.2)
   {
      _root.gainBoost(9999,4);
      if(_root.save.boostFreeze < 45 + Math.min(Math.floor(_root.save.totalStupidity / 500),255))
      {
         _root.save.boostFreeze = 45 + Math.min(Math.floor(_root.save.totalStupidity / 500),255);
      }
      _parent._parent.awesomePop.displayMessage("Turns out it was actually a Mega Boost Potion!!!1! THIS IS TOTALLY AWESOMEFSDHIOFSDFILSHDFKJH");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("Before you could drink the strange bottle of water, it vanished and got replaced with a bunch of junk items that people inserted into the machine. What is this sorcery?...");
   }
   _parent.gotoAndStop(2);
}
function choice2()
{
   if(_root.saveid == 23)
   {
      _parent._parent.awesomePop.displayMessage("You were going to sell the bottle, but on second thoughts, you decided not to. What if the water is poisonous?");
   }
   else if(Math.random() < 0.4)
   {
      _root.gainWhiteCoin(2);
      _root.save.awesomeReputation += 1;
      _parent._parent.awesomePop.displayMessage("You sold the bottle of water to a noob nearby and gained 2 White Coins. The noob then immediately sold it to someone else for 3 White Coins.\nReputation +1");
   }
   else if(Math.random() < 0.3333333333333333)
   {
      _root.gainWhiteCoin(2);
      _root.save.awesomeReputation += 4;
      _parent._parent.awesomePop.displayMessage("You sold the bottle of water to a noob nearby. He drank it and gained 500 Energy. He thanked you for that.\nReputation +4");
   }
   else if(Math.random() < 0.5)
   {
      _parent._parent.awesomePop.displayMessage("You tried hard to find someone to sell the bottle to, but everyone knows it costs only one White Coin so you couldn\'t sell your bottle to anyone. The bottle ended up expiring.");
   }
   else
   {
      _root.save.awesomeReputation -= 1;
      _parent._parent.awesomePop.displayMessage("You sold the bottle of water to a noob nearby. He was poisoned after drinking it. Good thing he had some antidote with him (wait, where are antidotes sold in the game?), but you had to refund the White Coins anyway.\nReputation -1");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Drink it!";
choice2Text = "Sell it for 2 White Coins";
choice3Text = "";
choice4Text = "";
choice3 = null;
choice4 = null;
