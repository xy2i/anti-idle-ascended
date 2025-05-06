//! status=pending
function choice1()
{
   if(Math.random() < 0.5 + _root.save.stadiumAbilityCost / 1000)
   {
      _root.save.awesomeReputation += 3;
      _root.save.coinLag += coinStolen;
      _parent._parent.awesomePop.displayMessage("You successfully chased the thief and got the Coins back! The thief was really slow.\nReputation +3");
   }
   else
   {
      _root.save.awesomeEnergy -= 1;
      _parent._parent.awesomePop.displayMessage("You spent a lot of time (and energy) trying to chase the thief, but failed.\nEnergy -1");
   }
   _parent.gotoAndStop(2);
}
coinStolen = Math.floor(_root.save.coin * 0.002);
if(coinStolen > 2000000000)
{
   coinStolen = 2000000000;
}
_root.save.coin -= coinStolen;
choice1Text = "Chase!";
choice2Text = "";
choice3Text = "";
choice4Text = "";
choice2 = null;
choice3 = null;
choice4 = null;
