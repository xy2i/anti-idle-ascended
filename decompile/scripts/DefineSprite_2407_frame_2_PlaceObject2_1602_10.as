//! status=pending
on(release){
   ranNum = random(90) + 10;
   helpName = "tmp" + _root.todayCode + "_" + ranNum;
   _root.help_so = SharedObject.getLocal(helpName,"/");
   _root.help_so.data.emp = "";
   _root.help_so.flush();
   _parent.helpText.text = "A file called " + helpName + ".sol has been added to the savefile-containing folder.";
}


