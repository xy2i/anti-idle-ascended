//! status=pending
function checkExam()
{
   streakArr = [20,25,30,40,50,60,80,100,120,150,99999];
   perfectArr = [100,125,150,200,250,300,400,500,600,750,999999];
   if(_root.save.fishLevel >= 60 || _root.save.fishLevel < 50)
   {
      streakReq = 99999;
      perfectReq = 999999;
   }
   else
   {
      streakReq = streakArr[_root.save.fishLevel - 50];
      perfectReq = perfectArr[_root.save.fishLevel - 50];
      var _loc2_ = 1;
      while(_loc2_ <= _root.save.fishExamReduce && _loc2_ <= 1000)
      {
         if(_loc2_ <= 5)
         {
            mul = 0.95;
         }
         else if(_loc2_ <= 10)
         {
            mul = 0.96;
         }
         else if(_loc2_ <= 25)
         {
            mul = 0.97;
         }
         else if(_loc2_ <= 50)
         {
            mul = 0.98;
         }
         else
         {
            mul = 0.99;
         }
         if(_loc2_ % 2 == 0 || _loc2_ < 10)
         {
            streakReq = Math.floor(streakReq * mul);
         }
         else
         {
            streakReq = Math.ceil(streakReq * mul);
         }
         if(streakReq < 2)
         {
            streakReq = 2;
         }
         perfectReq = Math.floor(perfectReq * mul);
         if(perfectReq < 10)
         {
            perfectReq = 10;
         }
         if(streakReq < Math.ceil(perfectReq / 8))
         {
            streakReq = Math.ceil(perfectReq / 8);
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   skillText.text = "Skill " + _root.save.fishLevel + " -> " + Math.round(_root.save.fishLevel + 1);
   if(_root.save.fishLevel >= 60)
   {
      skillText.text = "Survival";
   }
   if(_root.save.fishLevel == 50)
   {
      skillText.text = "Become an ETERNAL LEGEND!";
   }
   _root.save.fishExamStreakReq = streakReq;
   _root.save.fishExamPerfectReq = perfectReq;
   streakText.text = _root.withComma(_root.save.fishExamStreakReq) + "x";
   perfectText.text = _root.withComma(_root.save.fishExamPerfectReq);
   reduceText.text = "Difficulty reductions applied: " + _root.save.fishExamReduce;
}
checkExam();
onEnterFrame = function()
{
   checkExam();
};
