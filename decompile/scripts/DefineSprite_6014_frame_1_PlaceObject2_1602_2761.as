//! status=pending
on(release){
   if(_root.save.arenaZone != 80)
   {
      _parent.teleport.gotoAndStop(1);
      _parent.kommanderDialog.gotoAndStop(1);
      if(_root.save.featureTravelingTicket == false)
      {
         _root.showPopup("Access Denied","You don\'t have a map. Buy the VIP Traveling Ticket and get the map for FREE!");
      }
      else if(_parent.mapPopup._currentframe == 1)
      {
         _parent.mapPopup.gotoAndStop(2);
      }
      else
      {
         _parent.mapPopup.gotoAndStop(1);
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


on(rollOver){
   _root.actiondescription += "<b><font color=\'#FFFF00\'>" + _root.fightStat + "</font></b>\n";
   _root.actiondescription += "\nSpawn Rate: <b><font color=\'#FFFF00\'>" + _root.areaSpawn + " s</font> </b>|<b> <font color=\'#00FF00\'>" + int(_root.areaSpawn / (_root.spawnSpeed / 100)) + "." + int((_root.areaSpawn / (_root.spawnSpeed / 100) - int(_root.areaSpawn / (_root.spawnSpeed / 100))) * 1000) + " s</font></b>";
   _root.actiondescription += "\nSpawn Compensation: <b><font color=\'#FFA500\'>" + _root.areaSpawnReduce + "%</font></b>\n";
   _root.actiondescription += "\n<b><font color=\'#FFFF00\'>" + "Base Rate" + "</font> </b>|<b> <font color=\'#00FF00\'>" + "Actual Rate" + "</font></b>";
   _root.actiondescription += "\nEpic Rate (WM): <b><font color=\'#FFFF00\'>" + _root.areaEpicChance2 + "%</font> </b>|<b> <font color=\'#00FF00\'>" + Math.min(_root.areaEpicChance2 * _root.arenaEpicRate / 100,100) + "%</font></b>";
   _root.actiondescription += "\nEpic Rate: <b><font color=\'#FFFF00\'>" + _root.areaEpicChance + "%</font> </b>|<b> <font color=\'#00FF00\'>" + Math.min(_root.areaEpicChance * _root.arenaEpicRate / 100,100) + "%</font></b>";
   _root.actiondescription += "\nRare Rate: <b><font color=\'#FFFF00\'>" + _root.areaRareChance + "%</font> </b>|<b> <font color=\'#00FF00\'>" + Math.min(_root.areaRareChance * _root.arenaRareRate / 100,100) + "%</font></b>";
   ZoneDamageCurse = 100 - _root.areaDamagePct;
   _root.actiondescription += "\n\n</b>Damage Curse: <b><font color=\'#FFA500\'>" + ZoneDamageCurse + "%</font></b>";
   _root.actiondescription += "\n\nEpic and Rare Rates above do not include Mastered Ally bonuses (base of 0.5% and 5%) or special cases.";
}


