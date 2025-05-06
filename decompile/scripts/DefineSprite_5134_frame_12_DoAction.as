//! status=pending
_root.selectedEvent = 1;
while(_root.selectedEvent < _root.eventStartTime.length - 2)
{
   if(_root.systemtimenow < _root.eventStartTime[_root.selectedEvent + 1] - 86400000)
   {
      break;
   }
   _root.selectedEvent += 1;
}
onEnterFrame = function()
{
   eventPointText.text = _root.withComma(_root.save.arenaEventPoint[_root.selectedEvent]);
   if(_root.systemtimenow < _root.eventStartTime[_root.selectedEvent])
   {
      timeText.text = "NOT STARTED - beginning in " + _root.convertSecFull((_root.eventStartTime[_root.selectedEvent] - _root.systemtimenow) / 1000);
   }
   else if(_root.systemtimenow >= _root.eventEndTime[_root.selectedEvent])
   {
      timeText.text = "ENDED";
   }
   else
   {
      timeText.text = "IN PROGRESS - " + _root.convertSecFull((_root.eventEndTime[_root.selectedEvent] - _root.systemtimenow) / 1000) + " remaining";
   }
   maxReward = 0;
   claimedReward = 0;
   if(_root.selectedEvent == 1)
   {
      rewardArray = [0,50,250,500,1000,2000,3000,4000,5000,6000,7000,8000,9000,10000,12500,15000,17500,20000,25000,30000,35000,40000,50000,60000,70000,Infinity,Infinity,Infinity,Infinity,Infinity,100000,120000,160000];
   }
   else if(_root.selectedEvent == 2)
   {
      rewardArray = [0,50,250,500,1000,2000,3000,4000,5000,6000,7000,8000,9000,10000,12500,15000,17500,20000,25000,30000,35000,40000,50000,75000,100000,Infinity,Infinity,Infinity,Infinity,Infinity,125000,150000,200000];
   }
   else if(_root.selectedEvent == 3)
   {
      rewardArray = [0,50,250,500,1000,2000,3000,4000,5000,6000,7000,8000,9000,10000,12500,15000,17500,20000,25000,30000,35000,40000,50000,75000,100000,Infinity,Infinity,Infinity,Infinity,Infinity,130000,160000,230000];
   }
   ed = 0;
   if(_root.systemtimenow >= _root.eventEndTime[_root.selectedEvent])
   {
      ed = 1;
   }
   i = 1;
   while(i <= 31 + ed)
   {
      if(_root.save.arenaEventPoint[_root.selectedEvent] >= rewardArray[i])
      {
         maxReward += 1;
      }
      if(_root.save.arenaEventReward[_root.selectedEvent * 100 + i] == true)
      {
         claimedReward += 1;
      }
      i++;
   }
   if(maxReward > claimedReward)
   {
      rewardNotification.gotoAndStop(1);
      rewardNotification.rewardText.text = maxReward - claimedReward;
   }
   else
   {
      rewardNotification.gotoAndStop(2);
   }
};
