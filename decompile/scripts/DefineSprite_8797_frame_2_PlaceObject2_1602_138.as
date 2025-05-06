//! status=pending
on(release){
   valid = true;
   if(_parent.s1 == undefined || _parent.s2 == undefined)
   {
      valid = false;
   }
   if(isNaN(_parent.s3) || isNaN(_parent.s4) || isNaN(_parent.s5))
   {
      valid = false;
   }
   if(_parent.pName == "Variable Check" && _parent.s1 == "")
   {
      valid = false;
   }
   if(_parent.pName == "Variable Check" && _parent.s4 * 1 < _parent.s3 * 1)
   {
      valid = false;
   }
   if(_parent.pName == "Time Check" && _parent.s3 * 1 > 5)
   {
      valid = false;
   }
   if(_parent.pName != "Disabled" && _parent.pName != "Variable Check" && _parent.pName != "Variable Recording" && valid == true)
   {
      valid = false;
      maxK = 10;
      if(_parent.pName == "Inventory Check")
      {
         maxK = 7;
      }
      if(_parent.pName == "Time Check")
      {
         maxK = 3;
      }
      if(_parent.pName == "LolMarket Check")
      {
         maxK = 3;
      }
      if(_parent.pName == "Garden Check")
      {
         maxK = 6;
      }
      k = 1;
      while(k <= maxK)
      {
         if(_parent["b" + k] == true)
         {
            valid = true;
         }
         k++;
      }
   }
   if(_parent.pName == "Variable Recording" && _parent.s1 == "")
   {
      valid = false;
   }
   if(_parent.pName == "Variable Recording" && _parent.s3 < 1)
   {
      valid = false;
   }
   if(valid == true)
   {
      _root.save["tech" + _root.selectedLight + "Program"] = _parent.pName;
      _root.save["tech" + _root.selectedLight + "StringA"] = _parent.s1;
      _root.save["tech" + _root.selectedLight + "StringB"] = _parent.s2;
      _root.save["tech" + _root.selectedLight + "NumberA"] = _parent.s3 * 1;
      _root.save["tech" + _root.selectedLight + "NumberB"] = _parent.s4 * 1;
      _root.save["tech" + _root.selectedLight + "NumberC"] = _parent.s5 * 1;
      _root.save["tech" + _root.selectedLight + "Array"][1] = _parent.b1;
      _root.save["tech" + _root.selectedLight + "Array"][2] = _parent.b2;
      _root.save["tech" + _root.selectedLight + "Array"][3] = _parent.b3;
      _root.save["tech" + _root.selectedLight + "Array"][4] = _parent.b4;
      _root.save["tech" + _root.selectedLight + "Array"][5] = _parent.b5;
      _root.save["tech" + _root.selectedLight + "Array"][6] = _parent.b6;
      _root.save["tech" + _root.selectedLight + "Array"][7] = _parent.b7;
      _root.save["tech" + _root.selectedLight + "Array"][8] = _parent.b8;
      _root.save["tech" + _root.selectedLight + "Array"][9] = _parent.b9;
      _root.save["tech" + _root.selectedLight + "Array"][10] = _parent.b10;
      _root.showPopup("Saved","Successfully saved the new settings.");
      _parent.gotoAndStop(1);
   }
   else
   {
      _root.showPopup("Not Saved","An error occured. Please make sure all of the fields are properly filled.");
   }
}


