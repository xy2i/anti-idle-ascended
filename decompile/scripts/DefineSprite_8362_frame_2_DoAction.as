//! status=pending
elapsed = 0;
attendanceLoc = random(36);
attendanceLoc2 = random(36);
if(attendanceLoc2 == attendanceLoc)
{
   attendanceLoc2 += 1 + random(35);
   if(attendanceLoc2 > 35)
   {
      attendanceLoc2 -= 36;
   }
}
flipLeft = 3;
possibleReward = new Array();
possibleReward.push(2);
possibleReward.push(2);
possibleReward.push(2);
possibleReward.push(2);
possibleReward.push(2);
possibleReward.push(3);
possibleReward.push(3);
possibleReward.push(5);
possibleReward.push(25);
possibleReward.push(28);
if(_root.save.consecutiveDays >= 2)
{
   flipLeft = 4;
   possibleReward.push(3);
   possibleReward.push(3);
   possibleReward.push(4);
   possibleReward.push(5);
   possibleReward.push(5);
   possibleReward.push(5);
   possibleReward.push(5);
   possibleReward.push(6);
   possibleReward.push(25);
   possibleReward.push(28);
}
if(_root.save.consecutiveDays >= 3)
{
   flipLeft = 5;
   possibleReward.push(4);
   possibleReward.push(4);
   possibleReward.push(6);
   possibleReward.push(6);
   possibleReward.push(6);
   possibleReward.push(11);
   possibleReward.push(11);
   possibleReward.push(11);
   possibleReward.push(25);
   possibleReward.push(28);
}
if(_root.save.consecutiveDays >= 4)
{
   flipLeft = 6;
   possibleReward.push(7);
   possibleReward.push(8);
   possibleReward.push(12);
   possibleReward.push(16);
   possibleReward.push(16);
   possibleReward.push(16);
   possibleReward.push(26);
   possibleReward.push(29);
   possibleReward.push(36);
}
if(_root.save.consecutiveDays >= 5)
{
   flipLeft = 7;
   possibleReward.push(7);
   possibleReward.push(7);
   possibleReward.push(8);
   possibleReward.push(12);
   possibleReward.push(17);
   possibleReward.push(17);
   possibleReward.push(19);
   possibleReward.push(19);
   possibleReward.push(26);
   possibleReward.push(29);
   possibleReward.push(31);
   possibleReward.push(31);
   possibleReward.push(36);
   possibleReward.push(36);
}
if(_root.save.consecutiveDays >= 6)
{
   flipLeft = 8;
   possibleReward.push(8);
   possibleReward.push(9);
   possibleReward.push(19);
   possibleReward.push(20);
   possibleReward.push(20);
   possibleReward.push(31);
   possibleReward.push(32);
   possibleReward.push(32);
   possibleReward.push(37);
   possibleReward.push(37);
}
if(_root.save.consecutiveDays >= 7)
{
   flipLeft = 9;
   possibleReward.push(9);
   possibleReward.push(10);
   possibleReward.push(13);
   possibleReward.push(14);
   possibleReward.push(18);
   possibleReward.push(21);
   possibleReward.push(23);
   possibleReward.push(27);
   possibleReward.push(30);
   possibleReward.push(33);
   possibleReward.push(34);
   possibleReward.push(38);
   possibleReward.push(39);
}
if(_root.save.consecutiveDays >= 30)
{
   flipLeft = 10;
   possibleReward.push(10);
   possibleReward.push(13);
   possibleReward.push(14);
   possibleReward.push(18);
   possibleReward.push(21);
   possibleReward.push(23);
   possibleReward.push(27);
   possibleReward.push(30);
   possibleReward.push(33);
   possibleReward.push(34);
   possibleReward.push(38);
   possibleReward.push(39);
}
if(_root.save.consecutiveDays >= 90)
{
   flipLeft = 11;
   possibleReward.push(10);
   possibleReward.push(14);
   possibleReward.push(15);
   possibleReward.push(18);
   possibleReward.push(21);
   possibleReward.push(22);
   possibleReward.push(23);
   possibleReward.push(24);
   possibleReward.push(34);
   possibleReward.push(35);
   possibleReward.push(39);
   possibleReward.push(40);
}
if(_root.save.consecutiveDays >= 365)
{
   flipLeft = 12;
   possibleReward.push(10);
   possibleReward.push(15);
   possibleReward.push(22);
   possibleReward.push(24);
   possibleReward.push(35);
   possibleReward.push(40);
}
display1.text = "You have played Anti-Idle: The Game for " + _root.save.consecutiveDays + " consecutive days!";
if(_root.save.consecutiveDays <= 1)
{
   display1.text = "Come back tomorrow for more!";
}
bcToGet = 20 + _root.save.consecutiveDays * 1;
if(bcToGet > 200)
{
   bcToGet = 200;
}
display2.text = _root.withComma(bcToGet);
display3.text = _root.withComma(21 + _root.save.consecutiveDays * 1);
if(bcToGet == 200)
{
   display3.text = _root.withComma(200);
}
_root.gainWhiteCoin(bcToGet,38);
onEnterFrame = function()
{
   elapsed += 1 / _root.fps;
   if(flipLeft >= 2)
   {
      display4.text = "This is your only chance today! Select " + flipLeft + " more rewards below!";
   }
   else if(flipLeft == 1)
   {
      display4.text = "This is your only chance today! Select " + flipLeft + " more reward below!";
   }
   else
   {
      display4.text = "Come back tomorrow for more rewards!";
   }
};
