//! status=pending
on(release){
   if(_root.save.arcadeMmrNoteSkin < 2)
   {
      _root.save.arcadeMmrNoteSkin += 1;
   }
   else
   {
      _root.save.arcadeMmrNoteSkin = 0;
   }
   noteSkin1.gotoAndStop(_root.save.arcadeMmrNoteSkin * 3 + 1);
   noteSkin2.gotoAndStop(_root.save.arcadeMmrNoteSkin * 3 + 2);
   noteSkin3.gotoAndStop(_root.save.arcadeMmrNoteSkin * 3 + 3);
}


onClipEvent(load){
   noteSkin1.gotoAndStop(_root.save.arcadeMmrNoteSkin * 3 + 1);
   noteSkin2.gotoAndStop(_root.save.arcadeMmrNoteSkin * 3 + 2);
   noteSkin3.gotoAndStop(_root.save.arcadeMmrNoteSkin * 3 + 3);
}


