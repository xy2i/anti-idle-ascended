//! status=pending
on(release){
   if(_root.save.pokayCD[pokaystopID] <= 0)
   {
      gotoAndPlay(2);
      _root.save.pokayCD[pokaystopID] = 300;
      _root.save.pokaystopCount += 1;
      _root.incDt2();
      _parent._parent.stuffHolder.attachMovie("newLoot10","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + Math.random() * 20 - Math.random() * 20,y:150,lootValue:5});
      _root.incDt2();
      _parent._parent.stuffHolder.attachMovie("newLoot18","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + Math.random() * 20 - Math.random() * 20,y:150,lootValue:50});
      if(Math.random() < 0.5)
      {
         _root.incDt2();
         _parent._parent.stuffHolder.attachMovie("newLoot10","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + Math.random() * 20 - Math.random() * 20,y:150,lootValue:10});
      }
      if(Math.random() < 0.25)
      {
         _root.incDt2();
         _parent._parent.stuffHolder.attachMovie("newLoot10","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + Math.random() * 20 - Math.random() * 20,y:150,lootValue:10});
      }
      if(Math.random() < 0.25)
      {
         _root.incDt2();
         _parent._parent.stuffHolder.attachMovie("newLoot16","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + Math.random() * 20 - Math.random() * 20,y:150,lootValue:5});
      }
      if(Math.random() < 0.1)
      {
         _root.incDt2();
         _parent._parent.stuffHolder.attachMovie("newLoot16","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + Math.random() * 20 - Math.random() * 20,y:150,lootValue:5});
      }
      if(Math.random() < 0.5)
      {
         _root.incDt2();
         _parent._parent.stuffHolder.attachMovie("newLoot17","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + Math.random() * 20 - Math.random() * 20,y:150,lootValue:10});
      }
      if(Math.random() < 0.25)
      {
         _root.incDt2();
         _parent._parent.stuffHolder.attachMovie("newLoot17","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + Math.random() * 20 - Math.random() * 20,y:150,lootValue:10});
      }
      if(Math.random() < 0.5)
      {
         _root.incDt2();
         _parent._parent.stuffHolder.attachMovie("newLoot18","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + Math.random() * 20 - Math.random() * 20,y:150,lootValue:100});
      }
      if(Math.random() < 0.25)
      {
         _root.incDt2();
         _parent._parent.stuffHolder.attachMovie("newLoot18","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + Math.random() * 20 - Math.random() * 20,y:150,lootValue:100});
      }
      if(Math.random() < 0.5)
      {
         _root.incDt2();
         _parent._parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + Math.random() * 20 - Math.random() * 20,y:150,lootValue:1});
      }
      if(Math.random() < 0.25)
      {
         _root.incDt2();
         _parent._parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + Math.random() * 20 - Math.random() * 20,y:150,lootValue:1});
      }
      if(Math.random() < 0.1)
      {
         _root.incDt2();
         _parent._parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + Math.random() * 20 - Math.random() * 20,y:150,lootValue:1});
      }
      if(Math.random() < 0.1)
      {
         _root.incDt2();
         _parent._parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + Math.random() * 20 - Math.random() * 20,y:150,lootValue:1});
      }
      if(Math.random() < 0.05)
      {
         _root.incDt2();
         _parent._parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + Math.random() * 20 - Math.random() * 20,y:150,lootValue:1});
      }
      if(Math.random() < 0.1)
      {
         _root.incDt2();
         _parent._parent.stuffHolder.attachMovie("newLoot9","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + Math.random() * 20 - Math.random() * 20,y:150,lootValue:1});
      }
      if(Math.random() < 0.01)
      {
         _root.incDt2();
         _parent._parent.stuffHolder.attachMovie("newLoot9","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + Math.random() * 20 - Math.random() * 20,y:150,lootValue:2});
      }
   }
}


onClipEvent(enterFrame){
   if(_root.save.pokayCD[pokaystopID] > 0 && _root.save.pokayCD[pokaystopID] < 60)
   {
      gotoAndStop(Math.ceil(120 - _root.save.pokayCD[pokaystopID]));
   }
   if(_root.save.pokayCD[pokaystopID] <= 0)
   {
      gotoAndStop(1);
   }
}


onClipEvent(load){
   pokaystopID = 6;
   if(_root.save.pokayCD[pokaystopID] > 0)
   {
      gotoAndStop(60);
   }
   else
   {
      gotoAndStop(1);
   }
}


