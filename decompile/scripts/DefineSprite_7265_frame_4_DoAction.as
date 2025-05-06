//! status=pending
function choice1()
{
   if(_root.save.coin >= Math.floor(amnt2 * 1))
   {
      _root.save.coin -= Math.floor(amnt2 * 1);
      if(Math.random() < _root.save.awesomeReputation / 100000)
      {
         _root.gainEXP(amnt1 * 1.5);
         _root.save.awesomeReputation += 3;
         _parent._parent.awesomePop.displayMessage("The merchant recognized you! He gave you 50% more EXP than what you paid for!\nEXP +" + _root.withComma(amnt1 * 1.5) + ", Reputation +3");
      }
      else if(Math.random() < _root.save.awesomeReputation / -100000)
      {
         _root.save.awesomeReputation -= 1;
         _parent._parent.awesomePop.displayMessage("The merchant found you not trustworthy and decided to sell you no EXP. He took the money, however. But hey, in this case, isn\'t HE the not trustworthy one? Heh...\nReputation -1");
      }
      else if(Math.random() < 0.1)
      {
         _parent._parent.awesomePop.displayMessage("You gave the merchant " + _root.withComma(amnt2 * 1) + " Coins. 2 seconds after that, you saw a message saying he was banned for scamming.");
      }
      else
      {
         _root.gainEXP(amnt1 * 1);
         _root.save.awesomeReputation += 1;
         _parent._parent.awesomePop.displayMessage("You gave the merchant " + _root.withComma(amnt2 * 1) + " Coins and got some EXP in return!\nEXP +" + _root.withComma(amnt1 * 1) + ", Reputation +1");
      }
   }
   else
   {
      _root.save.awesomeReputation -= 1;
      _parent._parent.awesomePop.displayMessage("After you made the decision to purchase the EXP, you realized that you didn\'t have enough money with you. How embarrassing.\nReputation -1");
   }
   _parent.gotoAndStop(2);
}
function choice2()
{
   if(_root.save.coin >= Math.floor(amnt2 * 2))
   {
      _root.save.coin -= Math.floor(amnt2 * 2);
      if(Math.random() < _root.save.awesomeReputation / 100000)
      {
         _root.gainEXP(amnt1 * 2.25);
         _root.save.awesomeReputation += 5;
         _parent._parent.awesomePop.displayMessage("The merchant recognized you! He gave you 50% more EXP than what you paid for!\nEXP +" + _root.withComma(amnt1 * 2.25) + ", Reputation +5");
      }
      else if(Math.random() < _root.save.awesomeReputation / -100000)
      {
         _root.save.awesomeReputation -= 2;
         _parent._parent.awesomePop.displayMessage("The merchant found you not trustworthy and decided to sell you no EXP. He took the money, however. But hey, in this case, isn\'t HE the not trustworthy one? Heh...\nReputation -2");
      }
      else if(Math.random() < 0.1)
      {
         _parent._parent.awesomePop.displayMessage("You gave the merchant " + _root.withComma(amnt2 * 2) + " Coins. 2 seconds after that, you saw a message saying he was banned for scamming.");
      }
      else
      {
         _root.gainEXP(amnt1 * 1.5);
         _root.save.awesomeReputation += 2;
         _parent._parent.awesomePop.displayMessage("You gave the merchant " + _root.withComma(amnt2 * 2) + " Coins and got some EXP in return!\nEXP +" + _root.withComma(amnt1 * 1.5) + ", Reputation +2");
      }
   }
   else
   {
      _root.save.awesomeReputation -= 1;
      _parent._parent.awesomePop.displayMessage("After you made the decision to purchase the EXP, you realized that you didn\'t have enough money with you. How embarrassing.\nReputation -1");
   }
   _parent.gotoAndStop(2);
}
amnt1 = Math.floor(200000 * Math.pow(_root.save.level,0.6) * (1 + _root.save.petStat[8] * 0.002));
if(_root.save.permaBanPenalty[12] == 3)
{
   amnt1 = Math.floor(amnt1 * 3);
}
else if(_root.save.permaBanPenalty[12] == 2)
{
   amnt1 = Math.floor(amnt1 * 2.2);
}
else if(_root.save.permaBanPenalty[12] == 1)
{
   amnt1 = Math.floor(amnt1 * 1.8);
}
amnt2 = Math.floor(500000 * Math.pow(_root.save.level,0.6));
choice1Text = "Buy " + _root.withComma(amnt1 * 1) + " EXP for " + _root.withComma(amnt2 * 1) + " Coins";
choice2Text = "Buy " + _root.withComma(amnt1 * 1.5) + " EXP for " + _root.withComma(amnt2 * 2) + " Coins";
choice3Text = "";
choice4Text = "";
choice3 = null;
choice4 = null;
