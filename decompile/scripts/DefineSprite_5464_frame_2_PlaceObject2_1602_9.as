//! status=pending
on(release){
   textToCopy = "";
   textToCopy += "*LOAD CODE:*\n\n";
   textToCopy += "<pre>" + _parent.loadCode + "</pre>";
   textToCopy += "\n\n";
   textToCopy += "*SKILLS:*\n\n<pre>";
   i = 1;
   while(i <= 66)
   {
      tempLevel = _root.save.arenaSkill[i];
      if(tempLevel > 0)
      {
         tempMax = _root.save.arenaSkillMax[i];
         if(tempLevel < 10)
         {
            tempLevel = " " + tempLevel;
         }
         if(tempMax < 10)
         {
            tempMax = " " + tempMax;
         }
         textToCopy += "\nLv. " + tempLevel + " / " + tempMax + "  " + _root.arenaSkillNameF[i];
      }
      i++;
   }
   textToCopy += "</pre>\n\n";
   textToCopy += "*SP NEEDED:* " + _root.withComma(_root.save.arenaLevel * 20 + _root.save.arenaUltimateSP * 10 - _root.save.arenaSP);
   System.setClipboard(textToCopy);
}


