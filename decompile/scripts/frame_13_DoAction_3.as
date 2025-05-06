//! status=pending
if(_root.saveid >= 20)
{
   _root.showPopup("Challenge Mode","You\'re now attempting Challenge #" + (_root.saveid - 20) + "!\nAvoid playing another savefile at the same time to prevent possible losses.\nAll Challenges are RANKED, so do NOT cheat. Cheaters will be banned from the game!!");
}
if(_root.saveid == 4)
{
   _root.save.safeHacking = true;
}
_root.kongregate.stats.submit("Version Playing",upnumber);
if(_root.save.mh == true)
{
   _root.kongregate.stats.submit("nope",38);
}
if(_root.kongregate_username == "TheLinkToThePast" || _root.kongregate_username == "Oregane" || _root.kongregate_username == "Tukkun")
{
   if(_root.save.tlttpSkin != true && _root.emptyOutfitSlot >= 1)
   {
      _root.save.tlttpSkin = true;
      _root.getArenaOutfit(1,"Skin",13,706,0,"Exclusive Skin!!!!1!","Thank you for participating in TLTTP\'s Challenge!");
   }
}
if(_root.save.bestLevel >= 1000 && _root.saveid <= 3)
{
   _root.saveGlobal.challengeUnlocked = true;
}
if(_root.saveid != 4)
{
   if(_root.save.featureBattleArena == true)
   {
      _root.kongregate.stats.submit("Awesome",1);
   }
}
if(_root.viewCredits == true)
{
   _root.save.support = 1337;
}
