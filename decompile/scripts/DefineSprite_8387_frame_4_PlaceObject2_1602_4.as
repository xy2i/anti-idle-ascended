//! status=pending
on(release){
   _root.save.submitScore = true;
   _root.save.submitScoreConfirm = true;
   _root.showPopup("Score Submission Enabled","Thank you for your understanding. Highscore submission has been enabled for this savefile. You may now continue playing Anti-Idle as normal. Please keep the leaderboards a clean place, and do not use other programs to take advantage.");
   _parent.gotoAndStop(3);
}


