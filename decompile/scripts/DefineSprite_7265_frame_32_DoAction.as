//! status=pending
function choice1()
{
   _root.getArenaWeapon(_root.save.arenaLevel,"Trophy",196,false,837 + _root.save.arenaLevel,8,50,75,75,0,1,0,1,0,10,16,"Random","Random","Random",100000 + Math.round(Math.abs(_root.save.awesomeReputation / 1000)) * 400,Infinity,true,false,true,false,true,0,"Adventurer\'s Trophy","A trophy awarded for adventuring.");
   _parent._parent.awesomePop.displayMessage("You have decided to take the trophy. Huh... it\'s a Battle Arena weapon? But this is Awesome Adventures! That makes no sense!");
   _parent.gotoAndStop(2);
}
choice1Text = "Get trophy";
choice2Text = "";
choice3Text = "";
choice4Text = "";
choice2 = null;
choice3 = null;
choice4 = null;
