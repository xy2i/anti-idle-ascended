//! status=pending
function choice1()
{
   if(_root.saveid == 23)
   {
      _parent._parent.awesomePop.displayMessage("No, you can\'t do this. It\'s against the challenge rules for some reason.");
   }
   else if(Math.random() < 0.4)
   {
      if(Math.random() < 0.03)
      {
         amnt1 = 250000000;
      }
      else if(Math.random() < 0.1)
      {
         amnt1 = 100000000;
      }
      else if(Math.random() < 0.3)
      {
         amnt1 = 50000000;
      }
      else if(Math.random() < 0.6)
      {
         amnt1 = 25000000;
      }
      else
      {
         amnt1 = 10000000;
      }
      _root.gainCoin(amnt1);
      _root.save.harvestCount += 1;
      _root.save.harvestCoin += amnt1;
      _root.save.awesomeReputation -= 3;
      _parent._parent.awesomePop.displayMessage("You harvested from his tree and gained " + _root.withComma(amnt1) + " Coins!\nReputation -3");
   }
   else
   {
      _root.save.awesomeEnergy -= 1;
      _root.save.awesomeReputation -= 5;
      _parent._parent.awesomePop.displayMessage("You almost harvested from his tree, but he noticed and casted some kind of spell to attack you! He failed to spell \'cast\' though.\nEnergy -1, Reputation -5");
   }
   _parent.gotoAndStop(2);
}
function choice2()
{
   if(Math.random() < 0.4 && _root.save.nextWizard < _root.systemtimenow)
   {
      var _loc3_ = 1;
      while(_loc3_ <= 75)
      {
         if(_root.save.gardenTrees[_loc3_] > 0)
         {
            _root.save.gardenHarvestValue[_loc3_] += 10000;
         }
         _loc3_ = _loc3_ + 1;
      }
      _root.save.awesomeReputation += 10;
      _root.save.nextWizard = _root.systemtimenow + 600000;
      _parent._parent.awesomePop.displayMessage("That gardener was actually a skillful wizard! He cast a spell to increase the harvest value of your trees. Your trees (if any) now give more Coins when you harvest from them!\nReputation +10");
   }
   else
   {
      _root.save.awesomeReputation += 1;
      _parent._parent.awesomePop.displayMessage("He gave you a PRO TIP: Don\'t forget to harvest your trees! Well, considering the gardener himself forgot to harvest his tree, I doubt that PRO TIP is gonna do any good...\nReputation +1");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Secretly harvest from his tree";
choice2Text = "Ask for gardening advice";
choice3Text = "";
choice4Text = "";
choice3 = null;
choice4 = null;
