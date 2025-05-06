//! status=pending
on(release){
   if(_root.save.arenaKommanderProgress >= _root.save.arenaKommanderMonCount)
   {
      _root.save.mysteryBox[3] += _root.save.arenaKommanderPixBox;
      _root.save.mysteryBox[5] += _root.save.arenaKommanderProgBox;
      _root.save.arenaMission += 1;
      _root.save.arenaKommanderComplete += 1;
      _root.save.arenaKommanderProgress = 0;
      _root.save.arenaProofMission += _root.save.arenaKommanderProof;
      _root.dispNews(66,"Mission Kommander\'s Mission complete!");
      _root.dispNews(66,"You have gained " + _root.save.arenaKommanderProof + " [Proof of Mission]!");
      _parent.genKommanderMission();
   }
}


onClipEvent(enterFrame){
   if(_root.save.arenaKommanderProgress >= _root.save.arenaKommanderMonCount)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


