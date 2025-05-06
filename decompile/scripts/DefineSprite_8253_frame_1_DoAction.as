//! status=pending
_root.checkBoostRot = 0;
onEnterFrame = function()
{
   if(_root.checkBoostRot > 0)
   {
      _root.checkBoostRot -= 1;
   }
   if(tempBoost != Math.round(_root.save.boost))
   {
      tempBoost = Math.round(_root.save.boost);
      boostText.text = Math.round(_root.save.boost) + "%";
      _root.checkBoostRot = 20;
   }
   antCount = _root.save.ants;
   if(antCount < 0)
   {
      antCount = "<font color=\'#444444\'>----</font>";
   }
   else if(antCount >= 0 && antCount < 10)
   {
      antCount = "<font color=\'#444444\'>000</font>" + _root.save.ants;
   }
   else if(antCount >= 10 && antCount < 100)
   {
      antCount = "<font color=\'#444444\'>00</font>" + _root.save.ants;
   }
   else if(antCount >= 100 && antCount < 1000)
   {
      antCount = "<font color=\'#444444\'>0</font>" + _root.save.ants;
   }
   if(antCount <= 9999)
   {
      antDisp = "x" + antCount;
   }
   else
   {
      antDisp = antCount;
   }
   if(_root.sprayCooldown1 > 0 && _root.sprayCooldown2 > 0)
   {
      antDisp = "<font color=\'#888888\'>" + antDisp + "</font>";
   }
   antText.htmlText = antDisp;
};
