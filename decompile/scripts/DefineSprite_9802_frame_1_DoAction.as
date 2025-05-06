//! status=pending
function checkTask()
{
   if(_root.save.botCurrentOp == taskID)
   {
      gotoAndStop(3);
   }
   else
   {
      gotoAndStop(2);
   }
   text1.text = _root.cyborgActShortName[taskID];
   text2.text = _root.cyborgActPerfText[taskID] + ": " + _root.withComma(_root.calcPerf(taskID)) + _root.cyborgActPerfSign[taskID];
   if(taskID == 0)
   {
      text2.text = "Energy Gain: " + _root.convertSec(_root.calcPerf(taskID)) + " (every 5 min)";
   }
   if(_root.cyborgActPerfSign[taskID] == "%")
   {
      if(_root.calcPerf(taskID) == Math.round(_root.calcPerf(taskID)))
      {
         text2.text = _root.cyborgActPerfText[taskID] + ": " + _root.calcPerf(taskID) + ".0" + _root.cyborgActPerfSign[taskID];
      }
      else
      {
         text2.text = _root.cyborgActPerfText[taskID] + ": " + _root.calcPerf(taskID) + _root.cyborgActPerfSign[taskID];
      }
   }
   perfBar._xscale = 100 - (_root.calcPerf(taskID) - _root.cyborgActMinPerf[taskID]) / (_root.cyborgActMaxPerf[taskID] - _root.cyborgActMinPerf[taskID]) * 100;
}
taskID = Math.round((_X - 20) / 205) * 7 + Math.round((_Y - 165) / 45);
if(taskID == 11)
{
   taskID = 8;
}
else if(taskID == 8)
{
   taskID = 11;
}
checkTask();
alt = false;
onEnterFrame = function()
{
   alt = !alt;
   if(_root.save.botCurrentOp == taskID || _currentframe == 3 || alt == true)
   {
      checkTask();
   }
};
onRollOver = function()
{
   checkTask();
   if(_root.save.botOp[taskID] != 1)
   {
      _root.actiondescription += "<font color=\'#FFFF00\'><b>" + _root.cyborgActShortName[taskID] + "</b></font>\n\n" + text2.text + "\n\nTime Taken: <b>" + _root.convertSec(_root.cyborgActTime[taskID]) + "</b>\nCyborg Points: <b>-" + _root.withComma(_root.cyborgActCost[taskID]) + "</b>\n\nSimulation Cyborg has performed this task <b>" + _root.withComma(_root.save.botOp[taskID]) + "</b> times.";
   }
   else
   {
      _root.actiondescription += "<font color=\'#FFFF00\'><b>" + _root.cyborgActShortName[taskID] + "</b></font>\n\n" + text2.text + "\n\nTime Taken: <b>" + _root.convertSec(_root.cyborgActTime[taskID]) + "</b>\nCyborg Points: <b>-" + _root.withComma(_root.cyborgActCost[taskID]) + "</b>\n\nSimulation Cyborg has performed this task <b>" + _root.withComma(_root.save.botOp[taskID]) + "</b> time.";
   }
};
onDragOver = onRollOver;
onRollOut = function()
{
   _root.actiondescription = "";
};
onDragOut = onRollOut;
onRelease = function()
{
   if(_root.save.botCurrentOp != taskID)
   {
      _parent.cyborgPrompt.selectedTask = taskID;
      if(taskID == 0)
      {
         _parent.cyborgPrompt.gotoAndStop(3);
      }
      else
      {
         _parent.cyborgPrompt.gotoAndStop(2);
      }
   }
};
