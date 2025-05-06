//! status=pending
function choice1()
{
   if(_root.save.greenCoin >= toTrade1)
   {
      _root.save.greenCoin -= toTrade1;
      if(Math.random() < 0.2)
      {
         _parent._parent.awesomePop.displayMessage("After the investment, Darkruler returns with your profits, mumbling to himself. He hands you some purple coins, which appear to strongly resemble wooden coins painted purple. It seems your investment didn\'t pay out after all.");
      }
      else if(Math.random() < 0.4)
      {
         _root.save.awesomeReputation += 1;
         _root.save.awesomeRedCoin += 1;
         _parent._parent.awesomePop.displayMessage("Darkruler returns looking excited, showing you a shiny red coin, ranting about how much better this is than what you wanted because it\'s the rarest currency. It seems he forgot red coins are useless now.\nReputation +1");
      }
      else
      {
         _root.gainBlueCoin(toTrade1 / 1000);
         _parent._parent.awesomePop.displayMessage("After a lecture lasting 2005 minutes, full of terms that sound made up, Darkruler returns the proceeds of your investment to you. Congratulations, you made a profit! Maybe he actually knew what he was talking about.\nYou get " + _root.withComma(toTrade1 / 1000) + " Blue Coins.");
      }
   }
   else
   {
      _root.save.awesomeReputation -= 1;
      _parent._parent.awesomePop.displayMessage("Darkruler waits for you to hand over the required materials. Upon finding out that you don\'t have them, he grumbles and rants, fussing about how you tried to trick him. He ends up smacking you over your hands with his ruler, before he walks off.\nReputation -1");
   }
   _parent.gotoAndStop(2);
}
function choice2()
{
   if(_root.save.blueCoin >= toTrade2)
   {
      _root.save.blueCoin -= toTrade2;
      if(Math.random() < 0.1)
      {
         _parent._parent.awesomePop.displayMessage("After the investment, Darkruler returns with your profits, mumbling to himself. He hands you some purple coins, which appear to strongly resemble wooden coins painted purple. It seems your investment didn\'t pay out after all.");
      }
      else if(Math.random() < 0.3)
      {
         _root.save.awesomeReputation += 1;
         _root.save.awesomeRedCoin += 1;
         _parent._parent.awesomePop.displayMessage("Darkruler returns looking excited, showing you a shiny red coin, ranting about how much better this is than what you wanted because it\'s the rarest currency. It seems he forgot red coins are useless now.\nReputation +1");
      }
      else
      {
         _root.gainGreenCoin(toTrade2 * 600);
         _parent._parent.awesomePop.displayMessage("After a lecture lasting 2005 minutes, full of terms that sound made up, Darkruler returns the proceeds of your investment to you. Congratulations, you made a profit! Maybe he actually knew what he was talking about.\nYou get " + _root.withComma(toTrade2 * 600) + " Green Coins.");
      }
   }
   else
   {
      _root.save.awesomeReputation -= 1;
      _parent._parent.awesomePop.displayMessage("Darkruler waits for you to hand over the required materials. Upon finding out that you don\'t have them, he grumbles and rants, fussing about how you tried to trick him. He ends up smacking you over your hands with his ruler, before he walks off.\nReputation -1");
   }
   _parent.gotoAndStop(2);
}
function choice3()
{
   if(_root.save.arenaPixel >= toTrade3)
   {
      _root.save.arenaPixel -= toTrade3;
      if(Math.random() < 0.2)
      {
         _parent._parent.awesomePop.displayMessage("After the investment, Darkruler returns with your profits, mumbling to himself. He hands you some purple coins, which appear to strongly resemble wooden coins painted purple. It seems your investment didn\'t pay out after all.");
      }
      else if(Math.random() < 0.4)
      {
         _root.save.awesomeReputation += 1;
         _root.save.awesomeRedCoin += 1;
         _parent._parent.awesomePop.displayMessage("Darkruler returns looking excited, showing you a shiny red coin, ranting about how much better this is than what you wanted because it\'s the rarest currency. It seems he forgot red coins are useless now.\nReputation +1");
      }
      else
      {
         _root.save.arenaCraft += Math.floor(toTrade3 / 10);
         _parent._parent.awesomePop.displayMessage("After a lecture lasting 2005 minutes, full of terms that sound made up, Darkruler returns the proceeds of your investment to you. Congratulations, you made a profit! Maybe he actually knew what he was talking about.\nYou get " + _root.withComma(toTrade3 / 10) + " Crafting Material.");
      }
   }
   else
   {
      _root.save.awesomeReputation -= 1;
      _parent._parent.awesomePop.displayMessage("Darkruler waits for you to hand over the required materials. Upon finding out that you don\'t have them, he grumbles and rants, fussing about how you tried to trick him. He ends up smacking you over your hands with his ruler, before he walks off.\nReputation -1");
   }
   _parent.gotoAndStop(2);
}
function choice4()
{
   if(_root.save.arenaCraft >= toTrade4)
   {
      _root.save.arenaCraft -= toTrade4;
      if(Math.random() < 0.1)
      {
         _parent._parent.awesomePop.displayMessage("After the investment, Darkruler returns with your profits, mumbling to himself. He hands you some purple coins, which appear to strongly resemble wooden coins painted purple. It seems your investment didn\'t pay out after all.");
      }
      else if(Math.random() < 0.3)
      {
         _root.save.awesomeReputation += 1;
         _root.save.awesomeRedCoin += 1;
         _parent._parent.awesomePop.displayMessage("Darkruler returns looking excited, showing you a shiny red coin, ranting about how much better this is than what you wanted because it\'s the rarest currency. It seems he forgot red coins are useless now.\nReputation +1");
      }
      else
      {
         _root.save.arenaPixel += Math.floor(toTrade4 * 6);
         _parent._parent.awesomePop.displayMessage("After a lecture lasting 2005 minutes, full of terms that sound made up, Darkruler returns the proceeds of your investment to you. Congratulations, you made a profit! Maybe he actually knew what he was talking about.\nYou get " + _root.withComma(toTrade4 * 6) + " Pixels.");
      }
   }
   else
   {
      _root.save.awesomeReputation -= 1;
      _parent._parent.awesomePop.displayMessage("Darkruler waits for you to hand over the required materials. Upon finding out that you don\'t have them, he grumbles and rants, fussing about how you tried to trick him. He ends up smacking you over your hands with his ruler, before he walks off.\nReputation -1");
   }
   _parent.gotoAndStop(2);
}
toTrade1 = Math.ceil(_root.save.greenCoin / 100000) * 1000;
toTrade2 = Math.ceil(_root.save.blueCoin / 1000) * 10;
toTrade3 = Math.ceil(_root.save.arenaPixel / 1000000) * 10000;
toTrade4 = Math.ceil(_root.save.arenaCraft / 1000000) * 10000;
if(toTrade1 > 5000000)
{
   toTrade1 = 5000000;
}
if(toTrade2 > 5000)
{
   toTrade2 = 5000;
}
if(toTrade3 > 50000000)
{
   toTrade3 = 50000000;
}
if(toTrade4 > 5000000)
{
   toTrade4 = 5000000;
}
choice1Text = "Trade " + _root.withComma(toTrade1) + " Green Coins for Blue Coins";
choice2Text = "Trade " + _root.withComma(toTrade2) + " Blue Coins for Green Coins";
choice3Text = "Trade " + _root.withComma(toTrade3) + " Pixels for Crafting Material";
choice4Text = "Trade " + _root.withComma(toTrade4) + " Crafting Material for Pixels";
