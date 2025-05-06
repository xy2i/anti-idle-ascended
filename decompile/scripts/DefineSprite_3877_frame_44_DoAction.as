//! status=pending
_root.save.arenaMission += 1;
_root.save.arenaPrehistoricComplete += 1;
tempScore = Math.floor(_root.raidTimeLeft * 1000);
if(_root.save.raidPrehistoric < tempScore)
{
   _root.save.raidPrehistoric = tempScore;
}
if(_root.save.arenaSkill[102] < 30)
{
   _root.save.arenaSkill[102] += 1;
   _root.dispNews(47,"You have learned Unleash Lv. " + _root.save.arenaSkill[102] + "!");
   _root.house.arena.skillBar.gotoAndStop(3);
}
if(_root.raidDiff == 3)
{
   megaPow = _root.raidBonus * _root.raidBonus;
   _root.getArenaAccessory(400,"Pendant",25,megaPow,15,0,75,75,75,75,750000000,1,0,0,Math.floor(megaPow * 5 / 2),"Random","Random","Random",75000000,Infinity,true,false,false,false,35,"MEGA PENDANT","An item awarded for clearing MEGA Prehistoric Mission with a score of " + _root.withComma(tempScore) + ".",false,true);
   _root.save.arenaProofMission += _root.raidBonus * _root.raidBonus * 5 + 25;
   _root.save.arenaPrehistoricMega += 1;
   _root.dispNews(66,"Prehistoric Mission complete!");
   _root.dispNews(66,"You have gained " + (_root.raidBonus * _root.raidBonus * 5 + 25) + " [Proof of Mission]!");
}
else
{
   _root.save.arenaProofMission += _root.raidBonus * _root.raidBonus + 1;
   _root.dispNews(66,"Prehistoric Mission complete!");
   _root.dispNews(66,"You have gained " + (_root.raidBonus * _root.raidBonus + 1) + " [Proof of Mission]!");
}
_root.fightStat2 = "Prehistoric Mission complete!";
_root.save.arenaZone = 30;
