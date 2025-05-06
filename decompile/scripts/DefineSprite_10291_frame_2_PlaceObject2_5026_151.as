//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Offline Progress allows you to progress even when you aren\'t playing!\n\nIf Offline Progress is enabled, the following things will happen when you aren\'t playing:\n- You will gain some EXP and Coins.\n- You will be able to REST, allowing you to gain EXP and Coins more quickly, and gain special bonuses in other features.\n- Progress Box Fragments will be consumed to create Progress Boxes.\n- Your Energy in Awesome Adventures will be recovered.\n- Your Fatigue in Fishing will decrease.\n- Garden trees will grow and expire.\n- Time-limited Battle Arena items will expire.\n- Your Pet will get hungry and lose Fullness / Health.\n- 50% of offline time will count towards your play time.";
}


on(release){
   if(_root.save.offlineProgress != true && _root.save.bestLevel >= 12)
   {
      _root.save.offlineProgress = true;
   }
   else
   {
      _root.save.offlineProgress = false;
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.offlineProgress == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


