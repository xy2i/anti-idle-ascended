//! status=pending
on(release){
   _root.selectedLight = i;
   _parent.techMod.gotoAndStop(2);
}


onClipEvent(enterFrame){
   if(_root.save["tech" + i + "Program"] == "Disabled")
   {
      t1.text = "[Disabled]";
      t2.text = "Click here to configure this Technical Light.";
      t3.text = "";
   }
   else if(_root.save["tech" + i + "Program"] == "Variable Check")
   {
      if(_root.save["tech" + i + "Array"][1] == true)
      {
         tempLocA = "_root";
      }
      else
      {
         tempLocA = "_root.save";
      }
      tempLocB = "." + _root.save["tech" + i + "StringA"];
      if(_root.save["tech" + i + "Array"][2] == true)
      {
         tempLocC = "[" + _root.save["tech" + i + "NumberC"] + "]";
      }
      else
      {
         tempLocC = "";
      }
      t1.text = "Program: Variable Check";
      t2.text = "Variable: " + tempLocA + tempLocB + tempLocC;
      t3.text = "";
   }
   else if(_root.save["tech" + i + "Program"] == "Inventory Check")
   {
      t1.text = "Program: Inventory Check";
      t2.text = "Empty Slots: " + _root.save["tech" + i + "NumberA"];
      t3.text = "";
   }
   else if(_root.save["tech" + i + "Program"] == "Time Check")
   {
      t1.text = "Program: Time Check";
      t2.text = "Minutes Early: " + _root.save["tech" + i + "NumberA"];
      t3.text = "";
   }
   else if(_root.save["tech" + i + "Program"] == "Daily Check")
   {
      t1.text = "Program: Daily Check";
      t2.text = "";
      t3.text = "";
   }
   else if(_root.save["tech" + i + "Program"] == "Limit Check")
   {
      t1.text = "Program: Limit Check";
      t2.text = "";
      t3.text = "";
   }
   else if(_root.save["tech" + i + "Program"] == "LolMarket Check")
   {
      t1.text = "Program: LolMarket Check";
      t2.text = "Buy Price: " + _root.save["tech" + i + "NumberA"];
      t3.text = "Sell Price: " + _root.save["tech" + i + "NumberB"];
   }
   else if(_root.save["tech" + i + "Program"] == "Garden Check")
   {
      t1.text = "Program: Garden Check";
      t2.text = "";
      t3.text = "";
   }
   else if(_root.save["tech" + i + "Program"] == "Variable Recording")
   {
      if(_root.save["tech" + i + "Array"][1] == true)
      {
         tempLocA = "_root";
      }
      else
      {
         tempLocA = "_root.save";
      }
      tempLocB = "." + _root.save["tech" + i + "StringA"];
      if(_root.save["tech" + i + "Array"][2] == true)
      {
         tempLocC = "[" + _root.save["tech" + i + "NumberC"] + "]";
      }
      else
      {
         tempLocC = "";
      }
      t1.text = "Program: Variable Recording";
      t2.text = "Variable: " + tempLocA + tempLocB + tempLocC;
      t3.text = "Interval: " + _root.save["tech" + i + "NumberA"] + " sec.";
   }
}


onClipEvent(load){
   i = 8;
}


