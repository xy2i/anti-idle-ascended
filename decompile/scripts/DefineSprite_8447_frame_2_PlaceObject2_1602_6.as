//! status=pending
on(release){
   if(_parent.saveVar != "cheatEnabled")
   {
      if(_parent.saveNew != "" && (isNaN(_parent.saveVal) || !isNaN(_parent.saveNew)) && _parent.saveVal[1] == undefined)
      {
         if(!isNaN(_parent.saveNew))
         {
            if(!isNaN(_parent.saveVarA) && _parent.saveVarA != "")
            {
               _root.save[_parent.saveVar][_parent.saveVarA] = Math.round(_parent.saveNew);
            }
            else
            {
               _root.save[_parent.saveVar] = Math.round(_parent.saveNew);
            }
         }
         else if(!isNaN(_parent.saveVarA) && _parent.saveVarA != "")
         {
            _root.save[_parent.saveVar][_parent.saveVarA] = _parent.saveNew;
         }
         else
         {
            _root.save[_parent.saveVar] = _parent.saveNew;
         }
      }
   }
}


