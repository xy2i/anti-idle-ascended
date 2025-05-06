//! status=pending
on(release){
   if(_root.saveid >= 10)
   {
      _parent.dragonSpeech.speech("I can\'t give you this thing during a speedrun. Just go to Options screen and press Shift + 1 if you want to start over.");
   }
   else if(_root.save.feedTotal >= 1000)
   {
      _root.addArenaWeapon("Sword of Ascendant",40,"Sword",200,false,4000,14,200,"","",2,1,0,66,0,Infinity,false,false,true,true,100,25,25,"A sword that can be used to summon The Ascendant.",true);
      _parent.dragonSpeech.speech("Now you have the sword! What are you going to do with it?");
   }
   else
   {
      _parent.dragonSpeech.speech("The sword is sealed there. You cannot take it, sorry.");
   }
}


