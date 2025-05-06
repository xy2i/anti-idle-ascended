//! status=pending
function choice1()
{
   if(_root.save.progFrag >= 250)
   {
      _root.save.progFrag -= 250;
      _root.save.mysteryBox[5] += 1;
      _root.save.awesomeReputation += 1;
      _parent._parent.awesomePop.displayMessage("You successfully exchanged 250 Progress Box Fragments for 1 Progress Box.\nReputation +1");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You don\'t have enough Progress Box Fragments.");
   }
   _parent.gotoAndStop(2);
}
function choice2()
{
   if(_root.save.progFrag >= 2500)
   {
      _root.save.progFrag -= 2500;
      _root.save.mysteryBox[5] += 7;
      _root.save.awesomeReputation += 3;
      _parent._parent.awesomePop.displayMessage("You successfully exchanged 2,500 Progress Box Fragments for 7 Progress Boxes.\nReputation +3");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You don\'t have enough Progress Box Fragments.");
   }
   _parent.gotoAndStop(2);
}
function choice3()
{
   if(_root.save.progFrag >= 25000)
   {
      _root.save.progFrag -= 25000;
      _root.save.mysteryBox[5] += 50;
      _root.save.awesomeReputation += 6;
      _parent._parent.awesomePop.displayMessage("You successfully exchanged 25,000 Progress Box Fragments for 50 Progress Boxes.\nReputation +6");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You don\'t have enough Progress Box Fragments.");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Trade 250 Fragments for 1 Progress Box";
choice2Text = "Trade 2,500 Fragments for 7 Progress Boxes";
choice3Text = "Trade 25,000 Fragments for 50 Progress Boxes";
choice4Text = "";
choice4 = null;
