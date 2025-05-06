//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Your Rating is based on your top 3 scores on each game on Ranked Mode. The higher your Rating is, the more rewards you gain from playing in the Arcade.\n\n<b>Rating Breakdown</b>";
   gameID = 1;
   _root.actiondescription += "\nPong: <b>" + _parent.ratingToString(_root.arcadeTmpRatingGame[gameID][0] + _root.arcadeTmpRatingGame[gameID][1] + _root.arcadeTmpRatingGame[gameID][2]) + "</b>";
   gameID = 2;
   _root.actiondescription += "\nUltimate Avoidance: <b>" + _parent.ratingToString(_root.arcadeTmpRatingGame[gameID][0] + _root.arcadeTmpRatingGame[gameID][1] + _root.arcadeTmpRatingGame[gameID][2]) + "</b>";
   gameID = 3;
   _root.actiondescription += "\nMath Master: <b>" + _parent.ratingToString(_root.arcadeTmpRatingGame[gameID][0] + _root.arcadeTmpRatingGame[gameID][1] + _root.arcadeTmpRatingGame[gameID][2]) + "</b>";
   gameID = 4;
   _root.actiondescription += "\nWhack-a-greg: <b>" + _parent.ratingToString(_root.arcadeTmpRatingGame[gameID][0] + _root.arcadeTmpRatingGame[gameID][1] + _root.arcadeTmpRatingGame[gameID][2]) + "</b>";
   gameID = 7;
   _root.actiondescription += "\nTriangle Count: <b>" + _parent.ratingToString(_root.arcadeTmpRatingGame[gameID][0] + _root.arcadeTmpRatingGame[gameID][1] + _root.arcadeTmpRatingGame[gameID][2]) + "</b>";
   gameID = 5;
   _root.actiondescription += "\nMindSweeper: <b>" + _parent.ratingToString(_root.arcadeTmpRatingGame[gameID][0] + _root.arcadeTmpRatingGame[gameID][1] + _root.arcadeTmpRatingGame[gameID][2]) + "</b>";
   gameID = 6;
   _root.actiondescription += "\nBalance 3: <b>" + _parent.ratingToString(_root.arcadeTmpRatingGame[gameID][0] + _root.arcadeTmpRatingGame[gameID][1] + _root.arcadeTmpRatingGame[gameID][2]) + "</b>";
   gameID = 8;
   _root.actiondescription += "\nMMR X: <b>" + _parent.ratingToString(_root.arcadeTmpRatingGame[gameID][0] + _root.arcadeTmpRatingGame[gameID][1] + _root.arcadeTmpRatingGame[gameID][2]) + "</b>";
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


