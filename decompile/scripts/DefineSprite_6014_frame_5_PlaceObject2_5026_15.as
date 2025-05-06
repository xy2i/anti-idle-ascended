//! status=pending
on(dragOver,rollOver){
   _root.actiondescription += "After one second of combat, monster\'s stats will be shown.";
   _root.actiondescription += "\n\nThe color-code is based on your Accuracy against the monster\'s Evasion, and your Evasion against the monster\'s Accuracy.";
   _root.actiondescription += "\n\n<b>Effective Hit | Dodge</b>\n";
   _root.actiondescription += "<font color=\'#A020F0\'>Purple  | below 12%  | below 10%</font>\n";
   _root.actiondescription += "<font color=\'#FF0000\'>Red      | below 60%  | below 50%</font>\n";
   _root.actiondescription += "<font color=\'#FFA500\'>Orange  | below 80%  | below 70%</font>\n";
   _root.actiondescription += "<font color=\'#FFFF00\'>Yellow   | below 100% | below 90%</font>\n";
   _root.actiondescription += "<font color=\'#00FF00\'>Green    | above 100% | above 90%</font>\n";
   _root.actiondescription += "<font color=\'#006400\'>Dark    | above 170% | above 96.6%</font>\n";
   _root.actiondescription += "\n<b>TLDR color-code</b>\n";
   _root.actiondescription += "<font color=\'#A020F0\'>Purple</font>: try Hit/Dodge Chance\n";
   _root.actiondescription += "<font color=\'#00FF00\'>Green</font>: good amount of ACC/EVA\n";
   _root.actiondescription += "<font color=\'#006400\'>Dark Green</font>: too much ACC/EVA\n";
}


on(release){
   if(_root.save.arenaDisplayMonsterStats != true)
   {
      _root.save.arenaDisplayMonsterStats = true;
   }
   else
   {
      _root.save.arenaDisplayMonsterStats = false;
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.arenaDisplayMonsterStats == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


