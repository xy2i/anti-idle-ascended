//! status=pending
on(dragOver,rollOver){
   if(_parent.bugType == 1 || _parent.bugType == 2 || _parent.bugType == 10)
   {
      _root.actiondescription = "After pressing \'Submit\', press \'Reply to topic\', press CTRL + V in the text box then press \'Submit Reply\'.";
   }
   if(_parent.bugType == 3)
   {
      _root.actiondescription = "After pressing \'Submit\', press CTRL + V in the white box then press \'Send\'.";
   }
}


on(release){
   if(_parent.reproduce == 1)
   {
      reproduceImg = "_R+_ ";
   }
   else if(_parent.reproduce == 2)
   {
      reproduceImg = "_R-_ ";
   }
   else
   {
      reproduceImg = "";
   }
   if(_parent.bugType == 1)
   {
      _root.clipContent = "\n\n[BUG REPORT] _M_ \n\n### " + _root.bTitle + "\n\n```\n" + _root.bDesc + "\n```\n";
      if(_root.bScreenshot != "")
      {
         _root.clipContent += "\n\nScreenshot of problem:\n ![](" + _root.bScreenshot + ")\n" + _root.bScreenshot + "";
      }
      _root.clipContent += "\n\n___\n\n" + _root.kongregate_username + " | " + _root.withComma(_root.save.level + _root.save.banned * 10000) + " / " + _root.withComma(_root.finalExp) + " | [d" + _root.save.gDifficulty + "]–" + _root.withComma(_root.save.ascendPlayTime / 3600) + " | F" + _root.saveid + " | v" + _root.withComma(_root.upnumber) + " | " + _root.flashVer + " | " + _root.systemclock + "";
      System.setClipboard(_root.clipContent);
      getUrl("http://www.kongregate.com/forums/60/topics/841240", "_blank");
   }
   else if(_parent.bugType == 2)
   {
      _root.clipContent = "\n\n[BUG REPORT] _F_ " + reproduceImg + "\n\n### " + _root.bTitle + "\n\n```\n" + _root.bDesc + "\n```\n";
      if(_root.bScreenshot != "")
      {
         _root.clipContent += "\n\nScreenshot of problem:\n ![](" + _root.bScreenshot + ")\n" + _root.bScreenshot + "";
      }
      _root.clipContent += "\n\n___\n\n" + _root.kongregate_username + " | " + _root.withComma(_root.save.level + _root.save.banned * 10000) + " / " + _root.withComma(_root.finalExp) + " | [d" + _root.save.gDifficulty + "]–" + _root.withComma(_root.save.ascendPlayTime / 3600) + " | F" + _root.saveid + " | v" + _root.withComma(_root.upnumber) + " | " + _root.flashVer + " | " + _root.systemclock + "";
      System.setClipboard(_root.clipContent);
      getUrl("http://www.kongregate.com/forums/60/topics/841240", "_blank");
   }
   else if(_parent.bugType == 10)
   {
      _root.clipContent = "\n\n[BUG REPORT] _X_ " + reproduceImg + "\n\n### " + _root.bTitle + "\n\n```\n" + _root.bDesc + "\n```\n";
      if(_root.bScreenshot != "")
      {
         _root.clipContent += "\n\nScreenshot of problem:\n ![](" + _root.bScreenshot + ")\n" + _root.bScreenshot + "";
      }
      _root.clipContent += "\n\n___\n\n" + _root.kongregate_username + " | " + _root.withComma(_root.save.level + _root.save.banned * 10000) + " / " + _root.withComma(_root.finalExp) + " | [d" + _root.save.gDifficulty + "]–" + _root.withComma(_root.save.ascendPlayTime / 3600) + " | F" + _root.saveid + " | v" + _root.withComma(_root.upnumber) + " | " + _root.flashVer + " | " + _root.systemclock + "";
      System.setClipboard(_root.clipContent);
      getUrl("http://www.kongregate.com/forums/60/topics/841240", "_blank");
   }
   else if(_parent.bugType == 3)
   {
      _root.clipContent = "*[BUG REPORT]* " + _root.bTitle + "\n\n" + _root.bDesc + "";
      if(_root.bScreenshot != "")
      {
         _root.clipContent += "\n\nScreenshot of problem:\n " + _root.bScreenshot + ")";
      }
      System.setClipboard(_root.clipContent);
      getUrl("http://www.kongregate.com/accounts/Tukkun/private_messages?focus=true", "_blank");
   }
   else if(_parent.bugType == 4 || _parent.bugType == 9)
   {
      _root.showPopup("Wrong Place","Use the Suggestions thread in the forum for things like this![](");
   }
   else if(_parent.bugType == 7)
   {
      _root.showPopup("Sorry","I cannot do anything about highscores.");
   }
   else if(_parent.bugType == 0)
   {
      _root.showPopup("Not Specific","Please select one of the options above, which most describes the bug you\'re reporting.");
   }
   else
   {
      _root.showPopup("Sorry","While this may be a bug, it\'s not something I can fix. So reporting it isn\'t going to do anything helpful. Sorry.");
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


