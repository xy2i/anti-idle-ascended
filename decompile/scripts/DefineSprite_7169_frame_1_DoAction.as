//! status=pending
function checkCapacity()
{
   totalProfitText.text = _root.withComma(_root.save.lolProfit);
   nextCapacityReq = 100 * (_root.save.lolCapacity / 5) * (_root.save.lolCapacity / 5 - 10) * (_root.save.lolCapacity / 5 - 10);
   if(_root.save.lolCapacity <= 50)
   {
      nextCapacityReq = 1;
   }
   if(_root.save.lolProfit < 0)
   {
      ref = true;
      var _loc2_ = 1;
      while(_loc2_ <= 10)
      {
         if(_root.save.lolGems[_loc2_] > 0)
         {
            ref = false;
         }
         _loc2_ = _loc2_ + 1;
      }
      if(ref == true)
      {
         _root.save.lolProfit = 0;
      }
   }
   if(_root.save.lolCapacity >= 5000)
   {
      _root.save.lolCapacity = 5000;
      nextCapacityReq = Infinity;
   }
   if(_root.save.lolProfit >= nextCapacityReq)
   {
      _root.save.lolCapacity += 1;
      _root.dispNews(110,"You can now have " + _root.save.lolCapacity + " LolMarket Gems of each type!");
   }
   capText.text = _root.withComma(_root.save.lolCapacity);
   nextCapacityText.text = _root.withComma(nextCapacityReq);
}
checkCapacity();
onEnterFrame = function()
{
   checkCapacity();
};
