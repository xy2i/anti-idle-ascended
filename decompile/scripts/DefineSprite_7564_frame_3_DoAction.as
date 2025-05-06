//! status=pending
function checkWisdom()
{
   tempWisdom = _root.bookPage * 8 - 8;
   var _loc4_ = 1;
   while(_loc4_ <= 8)
   {
      wisdomID = wisdomList[tempWisdom + _loc4_ - 1];
      this["b" + _loc4_ + "t"].text = tempWisdom + _loc4_ + ". \"" + _parent.feedButton.speechButton.speechList[wisdomID] + "\"";
      if(isNaN(wisdomID))
      {
         this["b" + _loc4_ + "t"].text = "";
      }
      _loc4_ = _loc4_ + 1;
   }
   p1t.text = _root.bookPage * 2;
   p2t.text = _root.bookPage * 2 + 1;
}
wisdomList = new Array();
i = 0;
while(i <= _parent.feedButton.speechButton.speechList.length)
{
   if(!isNaN(_root.save.wisdomDiscovered[i]))
   {
      wisdomList.push(i);
   }
   i++;
}
checkWisdom();
