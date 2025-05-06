//! status=pending
speechCount = 0;
i = 0;
while(i <= _parent.feedButton.speechButton.speechList.length)
{
   if(!isNaN(_root.save.wisdomDiscovered[i]))
   {
      speechCount += 1;
   }
   i++;
}
speechCountText.text = _root.withComma(speechCount);
feedCountText.text = _root.withComma(_root.save.feedTotal);
