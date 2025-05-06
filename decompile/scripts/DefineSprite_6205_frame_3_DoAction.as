//! status=pending
score1Text.text = _root.withComma(_root.arcadeTmpScoreGame[gameID][0]);
score2Text.text = _root.withComma(_root.arcadeTmpScoreGame[gameID][1]);
score3Text.text = _root.withComma(_root.arcadeTmpScoreGame[gameID][2]);
rating1Text.text = _parent.ratingToString(_root.arcadeTmpRatingGame[gameID][0]);
rating2Text.text = _parent.ratingToString(_root.arcadeTmpRatingGame[gameID][1]);
rating3Text.text = _parent.ratingToString(_root.arcadeTmpRatingGame[gameID][2]);
ratingText.text = _parent.ratingToString(_root.arcadeTmpRatingGame[gameID][0] + _root.arcadeTmpRatingGame[gameID][1] + _root.arcadeTmpRatingGame[gameID][2]);
score1Diff.gotoAndStop(_root.arcadeTmpDiff[gameID][0] + 1);
score2Diff.gotoAndStop(_root.arcadeTmpDiff[gameID][1] + 1);
score3Diff.gotoAndStop(_root.arcadeTmpDiff[gameID][2] + 1);
