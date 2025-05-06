//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "As the nerf count increases, your chance to get good prizes from throwing To-be-Nerfed Gems decreases.\n\nNerf count is reduced to 0 when the day ends.";
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


