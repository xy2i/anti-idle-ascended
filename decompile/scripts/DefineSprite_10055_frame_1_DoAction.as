//! status=pending
questScroll = 0;
questMoveSpeed = 0;
questX = 0;
cf = 2;
maxScroll = 8;
onEnterFrame = function()
{
   if(Key.isDown(37) || Key.isDown(65))
   {
      questMoveSpeed += 2;
   }
   if(Key.isDown(39) || Key.isDown(68))
   {
      questMoveSpeed -= 2;
   }
   questMoveSpeed *= 0.9;
   if(questScroll <= 0 && questMoveSpeed > 0)
   {
      questScroll = 0;
      questMoveSpeed = 0;
      questX = 0;
      cf = 2;
   }
   if(questScroll >= maxScroll && questX <= 0 && questMoveSpeed < 0)
   {
      questScroll = maxScroll;
      questMoveSpeed = 0;
      questX = 0;
      cf = 2;
   }
   questX += Math.round(questMoveSpeed);
   if(questX > 50 && questScroll > 0)
   {
      questScroll -= 1;
      questX -= 50;
      cf = 2;
   }
   if(questX < 0 && questScroll < maxScroll)
   {
      questScroll += 1;
      questX += 50;
      cf = 2;
   }
   cf -= 1;
};
