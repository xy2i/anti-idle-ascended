//! status=pending
on(release){
   _root.save.submitScore = false;
   _root.save.submitScoreConfirm = true;
   _root.showPopup("Score Submission Disabled","Thank you for your understanding. Highscore submission has been disabled for this savefile. You may now continue playing Anti-Idle as normal, and may use other programs without affecting other players.");
   _parent.gotoAndStop(3);
}


