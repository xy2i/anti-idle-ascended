//! status=pending
function choice1()
{
   if(Math.random() < 0.02)
   {
      _root.save.mysteryBox[4] += 1;
      _parent._parent.awesomePop.displayMessage("Inside the box, you found another box. Inside that box, you found a Legendary Box!");
   }
   else if(Math.random() < 0.05)
   {
      _root.save.mysteryBox[3] += 1;
      _parent._parent.awesomePop.displayMessage("Inside the box, you found another box. Inside that box, you found a Pixelated Mystery Box!");
   }
   else if(Math.random() < 0.05)
   {
      _root.save.gardenMegaFertilizer += 1;
      _parent._parent.awesomePop.displayMessage("Inside the box, you found a Mega Fertilizer!");
   }
   else if(Math.random() < 0.01)
   {
      _root.save.megaBoostPotion += 1;
      _parent._parent.awesomePop.displayMessage("Inside the box, you found a Mega Boost Potion!");
   }
   else if(Math.random() < 0.05)
   {
      _root.save.awesomeRefill += 1;
      _parent._parent.awesomePop.displayMessage("Inside the box, you found an Energy Refill!");
   }
   else if(Math.random() < 0.1)
   {
      _root.save.gardenFertilizer += 1;
      _parent._parent.awesomePop.displayMessage("Inside the box, you found a Fertilizer!");
   }
   else if(Math.random() < 0.02)
   {
      _root.save.boostPotion += 1;
      _parent._parent.awesomePop.displayMessage("Inside the box, you found a Regular Boost Potion!");
   }
   else if(Math.random() < 0.1)
   {
      _root.gainGreenCoin(100000);
      _parent._parent.awesomePop.displayMessage("Inside the box, you found 100,000 Green Coins!");
   }
   else if(Math.random() < 0.1)
   {
      _root.getArenaWeapon(_root.save.arenaLevel,"Trophy",196,false,837 + _root.save.arenaLevel,8,50,75,75,0,1,0,1,0,10,16,"Random","Random","Random",100000 + Math.round(Math.abs(_root.save.awesomeReputation / 1000)) * 400,Infinity,true,false,true,false,true,0,"Adventurer\'s Trophy","A trophy awarded for adventuring.");
      _parent._parent.awesomePop.displayMessage("Inside the box, you found an Adventurer\'s Trophy!");
   }
   else if(Math.random() < 0.2)
   {
      _root.gainGreenCoin(20000);
      _parent._parent.awesomePop.displayMessage("Inside the box, you found 20,000 Green Coins!");
   }
   else if(Math.random() < 0.2)
   {
      _root.gainCoin(1);
      _parent._parent.awesomePop.displayMessage("Inside the box, you found a Coin! Well, better than nothing.");
   }
   else if(Math.random() < 0.2)
   {
      _root.save.awesomeEnergy -= 1;
      _parent._parent.awesomePop.displayMessage("It looked like a gift box, but it was actually a box-in-the-box that people brought to the party! You were really scared.\nEnergy -1");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("The box was... empty. Yeah.");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Open";
choice2Text = "";
choice3Text = "";
choice4Text = "";
choice2 = null;
choice3 = null;
choice4 = null;
