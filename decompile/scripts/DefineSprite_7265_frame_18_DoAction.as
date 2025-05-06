//! status=pending
function choice1()
{
   _root.save.awesomeReputation -= costX;
   _root.save.awesomeMaxEnergy += 1;
   _parent._parent.awesomePop.displayMessage("You successfully upgraded your Max Energy!\nReputation -" + costX);
   _parent.gotoAndStop(2);
}
if(_root.saveid == 23)
{
   choice1Text = "";
   costX = 9999999;
}
else if(_root.save.awesomeMaxEnergy == 15)
{
   choice1Text = "";
   costX = 9999999;
}
else if(_root.save.awesomeMaxEnergy == 14 && _root.save.careerLevel[10] >= 200)
{
   choice1Text = "Upgrade to 75 Max Energy (-400,000 Reputation)";
   costX = 400000;
}
else if(_root.save.awesomeMaxEnergy == 13 && _root.save.careerLevel[10] >= 200)
{
   choice1Text = "Upgrade to 70 Max Energy (-150,000 Reputation)";
   costX = 150000;
}
else if(_root.save.awesomeMaxEnergy == 12 && _root.save.careerLevel[10] >= 200)
{
   choice1Text = "Upgrade to 65 Max Energy (-50,000 Reputation)";
   costX = 50000;
}
else if(_root.save.awesomeMaxEnergy == 12 && _root.save.careerLevel[10] < 200)
{
   choice1Text = "";
   costX = 9999999;
}
else if(_root.save.awesomeMaxEnergy == 11)
{
   choice1Text = "Upgrade to 60 Max Energy (-10,000 Reputation)";
   costX = 10000;
}
else if(_root.save.awesomeMaxEnergy == 10 && _root.save.careerLevel[10] >= 100)
{
   choice1Text = "Upgrade to 55 Max Energy (-5,000 Reputation)";
   costX = 5000;
}
else if(_root.save.awesomeMaxEnergy == 10 && _root.save.careerLevel[10] < 100)
{
   choice1Text = "";
   costX = 9999999;
}
else if(_root.save.awesomeMaxEnergy == 9)
{
   choice1Text = "Upgrade to 50 Max Energy (-2,500 Reputation)";
   costX = 2500;
}
else if(_root.save.awesomeMaxEnergy == 8)
{
   choice1Text = "Upgrade to 45 Max Energy (-1,000 Reputation)";
   costX = 1000;
}
else if(_root.save.awesomeMaxEnergy == 7)
{
   choice1Text = "Upgrade to 40 Max Energy (-500 Reputation)";
   costX = 500;
}
else if(_root.save.awesomeMaxEnergy == 6)
{
   choice1Text = "Upgrade to 35 Max Energy (-200 Reputation)";
   costX = 200;
}
else
{
   choice1Text = "Upgrade to 30 Max Energy (-100 Reputation)";
   costX = 100;
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
