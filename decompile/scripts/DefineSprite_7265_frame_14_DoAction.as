//! status=pending
function choice1()
{
   if(_root.save.coin >= 5000000)
   {
      _root.save.coin -= 5000000;
      gemLevel = random(10) + 1;
      _root.save.lolGems[gemLevel] += 1;
      _root.save.awesomeReputation += 2;
      _parent._parent.awesomePop.displayMessage("You purchased the box. Upon opening, you found a Lv. " + gemLevel + " LolMarket Gem inside.\nReputation +2");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You don\'t have enough money.");
   }
   _parent.gotoAndStop(2);
}
function choice2()
{
   if(Math.random() < Math.sqrt(_root.save.lolProfit) / 10000 && Math.random() < 0.9 && _root.save.lolProfit > 0)
   {
      _root.save.awesomeReputation += 5;
      gemLevel = random(10) + 1;
      _root.save.lolGems[gemLevel] += 1;
      _parent._parent.awesomePop.displayMessage("You gave the noob some advice on how to use the LolMarket for maximum profit. He thanked you and gave you the Lv. " + gemLevel + " Gem for FREE.\nReputation +5");
   }
   else
   {
      _root.save.awesomeReputation += 1;
      _parent._parent.awesomePop.displayMessage("You gave the noob some advice on how to use the LolMarket for maximum profit. He didn\'t seem to understand it at all.\nReputation +1");
   }
   _parent.gotoAndStop(2);
}
function choice3()
{
   if(_root.saveid == 23)
   {
      _parent._parent.awesomePop.displayMessage("You were going to laugh at the noob, but then you remembered that you are on some kind of \'Pacifist\' challenge. You\'re not sure whether the challenge rules allows laughing, but maybe it\'s a better idea not to, just to be safe.");
   }
   else
   {
      _root.save.awesomeReputation -= 1;
      _parent._parent.awesomePop.displayMessage("You laughed at the noob. He continued complaining for a while then suddenly disappeared.\nReputation -1");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Buy the gem for 5,000,000 Coins";
choice2Text = "Give advice";
choice3Text = "Laugh";
choice4Text = "";
choice4 = null;
