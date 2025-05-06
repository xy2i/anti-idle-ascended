//! status=pending
on(release){
   _root.clipContent = "<big>" + _parent.challengeName + "</big>\n\n" + _parent.challengeDesc + "\n\n_____\n";
   _root.clipContent += "\n\n*Objective:* " + _parent.challengeObjective;
   _root.clipContent += "\n\n*Rules:*\n\n<pre>";
   k = 0;
   i = 1;
   while(i <= 11)
   {
      if(_parent["challengeRule" + i] != "")
      {
         k += 1;
         _root.clipContent += "\n" + k + ". " + _parent["challengeRule" + i];
      }
      i++;
   }
   _root.clipContent += "</pre>\n\n*Rewards:*";
   _root.clipContent += "\n* Medal Name: *" + _parent.challengeMedalName + "*";
   _root.clipContent += "\n* Skin Color: *" + _parent.challengeSkinColor + "*";
   _root.clipContent += "\n* Eye Color: *" + _parent.challengeEyeColor + "*";
   System.setClipboard(_root.clipContent);
   getUrl("http://www.kongregate.com/forums/60/topics/341209", "_blank");
}


