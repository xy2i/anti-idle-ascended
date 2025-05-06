//! status=pending
on(dragOver,rollOver){
   _root.checkCareer();
   activeCost = Math.floor(10 * _parent.costMultiplier * (Math.sqrt(_root.save.bestLevel) + Math.sqrt(_root.save.careerLevel[_parent.careerID]))) * 1000 + Math.floor(_root.careerActivated * Math.sqrt(_root.save.bestLevel) * 10000) * 5000;
   _root.actiondescription = "Click here to activate this career!\n\nActivation Cost:\n<b>" + _root.withComma(activeCost) + "</b> Coins";
}


on(release){
   if(!Key.isDown(16))
   {
      _root.checkCareer();
      activeCost = Math.floor(10 * _parent.costMultiplier * (Math.sqrt(_root.save.bestLevel) + Math.sqrt(_root.save.careerLevel[_parent.careerID]))) * 1000 + Math.floor(_root.careerActivated * Math.sqrt(_root.save.bestLevel) * 10000) * 5000;
      if(_root.save.coin >= activeCost)
      {
         _root.save.coin -= activeCost;
         _root.save.careerActive[_parent.careerID] = 259200;
         if(_root.save.careerLevel[_parent.careerID] == 0)
         {
            _root.gainCareerEXP(_parent.careerID,100,false);
         }
         _root.checkCareer();
         _root.actiondescription = "";
      }
      else
      {
         _root.actiondescription = "You don\'t have enough Coins.";
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


