//! status=pending
function choice1()
{
   if(_root.save.awesomeMaxEnergy != tmp)
   {
      _parent._parent.awesomePop.displayMessage("Your Max Energy has already been upgraded.");
   }
   else if(_root.save.blueCoin >= costX)
   {
      _root.save.blueCoin -= costX;
      _root.save.awesomeMaxEnergy += 1;
      _parent._parent.awesomePop.displayMessage("You have successfully upgraded your Max Energy!");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You don\'t have enough money.");
   }
   _parent.gotoAndStop(2);
}
tmp = _root.save.awesomeMaxEnergy;
if(_root.save.awesomeMaxEnergy >= 12)
{
   choice1Text = "";
   costX = 9999999;
}
else if(_root.save.awesomeMaxEnergy == 11)
{
   choice1Text = "Upgrade to 60 Max Energy for 100,000 Blue Coins";
   costX = 100000;
}
else if(_root.save.awesomeMaxEnergy == 10 && _root.save.careerLevel[10] >= 100)
{
   choice1Text = "Upgrade to 55 Max Energy for 50,000 Blue Coins";
   costX = 50000;
}
else if(_root.save.awesomeMaxEnergy == 10 && _root.save.careerLevel[10] < 100)
{
   choice1Text = "";
   costX = 9999999;
}
else if(_root.save.awesomeMaxEnergy == 9)
{
   choice1Text = "Upgrade to 50 Max Energy for 20,000 Blue Coins";
   costX = 20000;
}
else if(_root.save.awesomeMaxEnergy == 8)
{
   choice1Text = "Upgrade to 45 Max Energy for 10,000 Blue Coins";
   costX = 10000;
}
else if(_root.save.awesomeMaxEnergy == 7)
{
   choice1Text = "Upgrade to 40 Max Energy for 5,000 Blue Coins";
   costX = 5000;
}
else if(_root.save.awesomeMaxEnergy == 6)
{
   choice1Text = "Upgrade to 35 Max Energy for 2,000 Blue Coins";
   costX = 2000;
}
else
{
   choice1Text = "Upgrade to 30 Max Energy for 1,000 Blue Coins";
   costX = 1000;
}
choice2Text = "";
choice3Text = "";
choice4Text = "";
if(costX > 999999)
{
   choice1Text = "";
   choice1 = null;
}
choice2 = null;
choice3 = null;
choice4 = null;
