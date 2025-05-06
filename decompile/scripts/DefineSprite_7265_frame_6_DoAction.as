//! status=pending
function choice1()
{
   if(_root.save.greenCoin >= 25000)
   {
      _root.save.greenCoin -= 25000;
      _root.save.arenaSuperiorCraft += 9;
      _root.save.awesomeReputation += 2;
      _parent._parent.awesomePop.displayMessage("You have successfully purchased 9 Superior Crafting Material!\nReputation +2");
   }
   else
   {
      _root.save.greenCoin = 0;
      _root.save.awesomeReputation -= 1;
      _parent._parent.awesomePop.displayMessage("The Master of Crafting patiently waited as you handed over the money, but then you realized you didn\'t have enough. He ranted about it for a while, and took all of your Green Coins.\nReputation -1");
   }
   _parent.gotoAndStop(2);
}
function choice2()
{
   if(_root.save.greenCoin >= 50000)
   {
      _root.save.greenCoin -= 50000;
      _root.save.arenaUnobtainium += 3;
      _root.save.awesomeReputation += 3;
      _parent._parent.awesomePop.displayMessage("You have successfully purchased 3 Unobtainium!\nReputation +3");
   }
   else
   {
      _root.save.greenCoin = 0;
      _root.save.awesomeReputation -= 1;
      _parent._parent.awesomePop.displayMessage("The Master of Crafting patiently waited as you handed over the money, but then you realized you didn\'t have enough. He ranted about it for a while, and took all of your Green Coins.\nReputation -1");
   }
   _parent.gotoAndStop(2);
}
function choice3()
{
   if(_root.save.greenCoin >= 50000)
   {
      _root.save.greenCoin -= 50000;
      _root.save.arenaCrystal1 += 4;
      _root.save.awesomeReputation += 3;
      _parent._parent.awesomePop.displayMessage("You have successfully purchased 4 Crystals of Rarity!\nReputation +3");
   }
   else
   {
      _root.save.greenCoin = 0;
      _root.save.awesomeReputation -= 1;
      _parent._parent.awesomePop.displayMessage("The Master of Crafting patiently waited as you handed over the money, but then you realized you didn\'t have enough. He ranted about it for a while, and took all of your Green Coins.\nReputation -1");
   }
   _parent.gotoAndStop(2);
}
function choice4()
{
   if(_root.save.greenCoin >= 100000)
   {
      _root.save.greenCoin -= 100000;
      _root.save.arenaCrystal2 += 2;
      _root.save.awesomeReputation += 4;
      _parent._parent.awesomePop.displayMessage("You have successfully purchased 2 Crystals of Ultimate Rarity!\nReputation +4");
   }
   else
   {
      _root.save.greenCoin = 0;
      _root.save.awesomeReputation -= 1;
      _parent._parent.awesomePop.displayMessage("The Master of Crafting patiently waited as you handed over the money, but then you realized you didn\'t have enough. He ranted about it for a while, and took all of your Green Coins.\nReputation -1");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Buy 9 Superior Crafting Material for 25,000 GC";
choice2Text = "Buy 3 Unobtainium for 50,000 GC";
choice3Text = "Buy 4 Crystals of Rarity for 50,000 GC";
choice4Text = "Buy 2 Crystals of Ultimate Rarity for 100,000 GC";
