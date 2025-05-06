//! status=pending
_root.dispNews(106,"You\'ve reached FCG Level " + _root.save.fcgLevel + ". Congratulations!");
_root.save.fcgCash += cashReward;
levelText.text = _root.save.fcgLevel;
cashRewardText.text = "+" + _root.withComma(cashReward);
_parent.buffAOwnedText.text = _root.withComma(_root.save.fcgBuff[1] + _root.save.fcgBuff[2] + _root.save.fcgBuff[3] + _root.save.fcgBuff[4] + _root.save.fcgBuff[5] + _root.save.fcgBuff[6]) + "x";
_parent.buffBOwnedText.text = _root.withComma(_root.save.fcgBuff[7]) + "x";
_parent.buffCOwnedText.text = _root.withComma(_root.save.fcgBuff[8]) + "x";
