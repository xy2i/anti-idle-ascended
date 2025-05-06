//! status=pending
function choice1()
{
   if(_root.save.coin >= 10000000)
   {
      _root.save.coin -= 10000000;
      if(Math.random() < 0.3)
      {
         _root.save.awesomeReputation += 3;
         _parent._parent.awesomePop.displayMessage("The noob took your Coins and thanked you for it.\nReputation +3");
      }
      else
      {
         _root.save.awesomeReputation += 2;
         _parent._parent.awesomePop.displayMessage("The noob took your Coins and ran away. Turned out he wasn\'t poor at all.\nReputation +2");
      }
   }
   else
   {
      _root.save.awesomeReputation -= 1;
      _parent._parent.awesomePop.displayMessage("You wanted to help the noob, but realized that you had less Coins than him...\nReputation -1");
   }
   _parent.gotoAndStop(2);
}
function choice2()
{
   if(_root.saveid == 23)
   {
      _parent._parent.awesomePop.displayMessage("You were going to fight the noob, but then you remembered that you are on some kind of \'Pacifist\' challenge, and that would make you fail.");
   }
   else if(Math.random() < 0.09 + _root.save.arenaAttack / 100000)
   {
      _root.save.awesomeReputation -= 5;
      _root.gainCoin(50000000);
      _parent._parent.awesomePop.displayMessage("You easily PWNed the noob and gained 50,000,000 whole Coins! Ha, he was so rich...\nReputation -5");
   }
   else
   {
      _root.save.awesomeEnergy -= 1;
      _root.save.awesomeReputation -= 5;
      _parent._parent.awesomePop.displayMessage("Actually, the noob was stronger than you. Therefore, he defeated you. What a waste of time (and energy)...\nEnergy -1, Reputation -5");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Give 10,000,000 Coins";
choice2Text = "Fight!";
choice3Text = "";
choice4Text = "";
choice3 = null;
choice4 = null;
