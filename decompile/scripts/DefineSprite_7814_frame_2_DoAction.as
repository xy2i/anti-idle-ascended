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
itemQuan = 1;
masteryToGet = 2;
if(_root.save.fishMilestoneTotal >= 11)
{
   itemQuan = 2;
   masteryToGet = 4;
}
if(_root.save.fishMilestoneTotal >= 31)
{
   itemQuan = 3;
   masteryToGet = 6;
}
if(_root.save.fishMilestoneTotal >= 91)
{
   itemQuan = 4;
   masteryToGet = 8;
}
if(_root.save.fishMilestoneTotal >= 271)
{
   itemQuan = 5;
   masteryToGet = 10;
}
tempItem = _root.save.fishMilestoneTotal % 10;
if(tempItem == 1)
{
   itemToGet = 7;
}
else if(tempItem == 2)
{
   itemToGet = 4;
}
else if(tempItem == 3)
{
   itemToGet = 9;
}
else if(tempItem == 4)
{
   itemToGet = 1;
}
else if(tempItem == 5)
{
   itemToGet = 5;
}
else if(tempItem == 6)
{
   itemToGet = 2;
}
else if(tempItem == 7)
{
   itemToGet = 8;
}
else if(tempItem == 8)
{
   itemToGet = 6;
}
else if(tempItem == 9)
{
   itemToGet = 10;
}
else if(tempItem == 0)
{
   itemToGet = 3;
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
