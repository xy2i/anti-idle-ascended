//! status=pending
function choice1()
{
   if(_root.save.greenCoin >= 2005)
   {
      _root.save.greenCoin -= 2005;
      if(Math.random() < 0.5)
      {
         var _loc3_ = 1;
         while(_loc3_ <= 10)
         {
            if(_root.save.lolGems[_loc3_] >= Math.ceil(_root.save.lolCapacity / 2))
            {
               _root.save.lolDemand[_loc3_] += 1;
            }
            else
            {
               _root.save.lolDemand[_loc3_] -= 1;
            }
            _loc3_ = _loc3_ + 1;
         }
         _parent._parent.awesomePop.displayMessage("Turns out he really does know everything there is to know! The lecture took hours, but as a result you feel super smart for a brief period, and you manage to make your LolMarket demand change by 1 to your favor.");
      }
      else
      {
         _parent._parent.awesomePop.displayMessage("The wise old man turns out to be not so wise. His lecture consisted of him mumbling about how confusing LolMarket is, and how in his days there were only 6 gems. Wow, that was a total waste of your time.");
      }
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You don\'t have enough Green Coins to attend the lecture.");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "I love lectures!";
choice2Text = "";
choice3Text = "";
choice4Text = "";
choice2 = null;
choice3 = null;
choice4 = null;
