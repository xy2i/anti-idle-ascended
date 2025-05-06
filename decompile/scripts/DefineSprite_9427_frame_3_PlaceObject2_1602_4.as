//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "If you change your mind, you can click this button to cancel tomorrow\'s Hyper Day and get your EXPILL back. The cancelled Hyper Day does not count towards your monthly scheduling limit.";
}


on(release){
   if(_root.save.hyperDay[_root.save.hyperDayDel] == _parent.tomorrowCode)
   {
      _root.save.hyperDayRem += 1;
      _root.save.botPill += 1;
      _root.save.hyperDay[_root.save.hyperDayDel] = 0;
      if(_root.save.hyperDayDel == 2)
      {
         _root.save.hyperDayDel = 1;
      }
      else
      {
         _root.save.hyperDayDel = 2;
      }
      _root.save.hyperDayCount += 1;
      _root.showPopup("Success","Tomorrow is no longer a Hyper Day. You have received your EXPILL back.");
      _root.actiondescription = "";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


