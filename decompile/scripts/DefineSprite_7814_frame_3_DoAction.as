//! status=pending
del = 0;
onEnterFrame = function()
{
   del += 1 / _root.fps;
   if(del > 15)
   {
      gotoAndStop(1);
   }
};
itemArray = ["","Bronze Treasure Box","Silver Treasure Box","Golden Treasure Box","Bronze Key","Silver Key","Golden Key","Regular Energy Drink","Elite Energy Drink","Regular Pet Food","Elite Pet Food"];
scoreText.text = _root.withComma(_root.fishMilestone);
if(_root.save.fishMilestoneToday == 1)
{
   masteryToGet = 2;
   itemQuan = 1;
   if(Math.random() < 0.5)
   {
      itemToGet = 7;
   }
   else
   {
      itemToGet = 9;
   }
}
else if(_root.save.fishMilestoneToday == 2)
{
   masteryToGet = 3;
   itemQuan = 1;
   if(Math.random() < 0.5)
   {
      itemToGet = 1;
   }
   else
   {
      itemToGet = 4;
   }
}
else if(_root.save.fishMilestoneToday == 3)
{
   masteryToGet = 5;
   itemQuan = 1;
   if(Math.random() < 0.5)
   {
      itemToGet = 8;
   }
   else
   {
      itemToGet = 10;
   }
}
else if(_root.save.fishMilestoneToday == 4)
{
   masteryToGet = 5;
   itemQuan = 1;
   if(Math.random() < 0.5)
   {
      itemToGet = 2;
   }
   else
   {
      itemToGet = 5;
   }
}
else if(_root.save.fishMilestoneToday == 5)
{
   masteryToGet = 5;
   itemQuan = 1;
   if(Math.random() < 0.5)
   {
      itemToGet = 3;
   }
   else
   {
      itemToGet = 6;
   }
}
else if(_root.save.fishMilestoneToday == 6)
{
   masteryToGet = 5;
   itemQuan = 2;
   if(Math.random() < 0.5)
   {
      itemToGet = 7;
   }
   else
   {
      itemToGet = 9;
   }
}
else if(_root.save.fishMilestoneToday == 7)
{
   masteryToGet = 5;
   itemQuan = 2;
   if(Math.random() < 0.5)
   {
      itemToGet = 1;
   }
   else
   {
      itemToGet = 4;
   }
}
else if(_root.save.fishMilestoneToday == 8)
{
   masteryToGet = 10;
   itemQuan = 2;
   if(Math.random() < 0.5)
   {
      itemToGet = 8;
   }
   else
   {
      itemToGet = 10;
   }
}
else if(_root.save.fishMilestoneToday == 9)
{
   masteryToGet = 10;
   itemQuan = 2;
   if(Math.random() < 0.5)
   {
      itemToGet = 2;
   }
   else
   {
      itemToGet = 5;
   }
}
else if(_root.save.fishMilestoneToday == 10)
{
   masteryToGet = 15;
   itemQuan = 2;
   if(Math.random() < 0.5)
   {
      itemToGet = 3;
   }
   else
   {
      itemToGet = 6;
   }
}
else if(_root.save.fishMilestoneToday == 11)
{
   masteryToGet = 15;
   itemQuan = 3;
   if(Math.random() < 0.5)
   {
      itemToGet = 3;
   }
   else
   {
      itemToGet = 6;
   }
}
else if(_root.save.fishMilestoneToday == 12)
{
   masteryToGet = 20;
   itemQuan = 4;
   if(Math.random() < 0.5)
   {
      itemToGet = 3;
   }
   else
   {
      itemToGet = 6;
   }
}
else if(_root.save.fishMilestoneToday == 13)
{
   masteryToGet = 25;
   itemQuan = 5;
   if(Math.random() < 0.5)
   {
      itemToGet = 3;
   }
   else
   {
      itemToGet = 6;
   }
}
else if(_root.save.fishMilestoneToday == 14)
{
   masteryToGet = 50;
   itemQuan = 6;
   if(Math.random() < 0.5)
   {
      itemToGet = 3;
   }
   else
   {
      itemToGet = 6;
   }
}
else if(_root.save.fishMilestoneToday == 15)
{
   masteryToGet = 100;
   itemQuan = 7;
   if(Math.random() < 0.5)
   {
      itemToGet = 3;
   }
   else
   {
      itemToGet = 6;
   }
}
else if(_root.save.fishMilestoneToday == 16)
{
   masteryToGet = 250;
   itemQuan = 8;
   if(Math.random() < 0.5)
   {
      itemToGet = 3;
   }
   else
   {
      itemToGet = 6;
   }
}
if(masteryToGet > 9001)
{
   masteryToGet = 9001;
}
if(isNaN(masteryToGet) || masteryToGet < 0)
{
   masteryToGet = 0;
}
_root.save.fishFound[itemToGet] += itemQuan;
_root.save.fishLeft[itemToGet] += itemQuan;
_root.save.mysteryBox[5] += masteryToGet;
masteryText.text = _root.withComma(masteryToGet);
quanText.text = _root.withComma(itemQuan);
itemText.text = itemArray[itemToGet];
if(_root.save.enableMilestone == false)
{
   del = 15;
   gotoAndStop(1);
}
