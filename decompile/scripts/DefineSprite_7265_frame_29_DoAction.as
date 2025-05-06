//! status=pending
function choice1()
{
   if(_root.save.fishLeft[1] >= 2)
   {
      _root.save.fishLeft[1] -= 2;
      if(Math.random() < 0.9)
      {
         _root.save.fishLeft[4] += 1;
         _root.save.fishFound[4] += 1;
         _parent._parent.awesomePop.displayMessage("After you make your choices, Darkruler pulls out a portable smithy and melts down your treasure boxes, reshaping them into a key. Telling you to be very careful, they\'re hot, he sets them on the ground for you. So much for accounting magic, but at least it worked.");
      }
      else
      {
         _parent._parent.awesomePop.displayMessage("After you make your choices, Darkruler pulls out a portable smithy and melts down your treasure boxes, reshaping them into a key. The key looks totally fake though, and doesn\'t fit in the boxes, so you decide to throw it away to save space.");
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
   if(_root.save.fishLeft[2] >= 2)
   {
      _root.save.fishLeft[2] -= 2;
      if(Math.random() < 0.9)
      {
         _root.save.fishLeft[5] += 1;
         _root.save.fishFound[5] += 1;
         _parent._parent.awesomePop.displayMessage("After you make your choices, Darkruler pulls out a portable smithy and melts down your treasure boxes, reshaping them into a key. Telling you to be very careful, they\'re hot, he sets them on the ground for you. So much for accounting magic, but at least it worked.");
      }
      else
      {
         _parent._parent.awesomePop.displayMessage("After you make your choices, Darkruler pulls out a portable smithy and melts down your treasure boxes, reshaping them into a key. The key looks totally fake though, and doesn\'t fit in the boxes, so you decide to throw it away to save space.");
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
   if(_root.save.fishLeft[3] >= 2)
   {
      _root.save.fishLeft[3] -= 2;
      if(Math.random() < 0.9)
      {
         _root.save.fishLeft[6] += 1;
         _root.save.fishFound[6] += 1;
         _parent._parent.awesomePop.displayMessage("After you make your choices, Darkruler pulls out a portable smithy and melts down your treasure boxes, reshaping them into a key. Telling you to be very careful, they\'re hot, he sets them on the ground for you. So much for accounting magic, but at least it worked.");
      }
      else
      {
         _parent._parent.awesomePop.displayMessage("After you make your choices, Darkruler pulls out a portable smithy and melts down your treasure boxes, reshaping them into a key. The key looks totally fake though, and doesn\'t fit in the boxes, so you decide to throw it away to save space.");
      }
   }
   else
   {
      _root.save.awesomeReputation -= 1;
      _parent._parent.awesomePop.displayMessage("Darkruler waits for you to hand over the required materials. Upon finding out that you don\'t have them, he grumbles and rants, fussing about how you tried to trick him. He ends up smacking you over your hands with his ruler, before he walks off.\nReputation -1");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Trade 2 Bronze Treasure Boxes";
choice2Text = "Trade 2 Silver Treasure Boxes";
choice3Text = "Trade 2 Golden Treasure Boxes";
choice4Text = "";
choice4 = null;
