//! status=pending
onClipEvent(enterFrame){
   grade = Math.floor(Math.sqrt(_root.save.gardenSlotEXP[_parent.slot] / 1000)) + 1;
   if(grade > 11)
   {
      if(_root.save.gardenSlotEXP[_parent.slot] >= ((_parent.slot - 1) % 25 * 100000 + 600000) * (_parent.slot < 51 ? 1 : 2) * (_parent.slot < 26 ? 1 : 1.5))
      {
         grade = 12;
      }
      else
      {
         grade = 11;
      }
   }
   _parent.grade = grade;
   fr = grade;
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
   _root.treeGrade[_parent.slot] = grade;
   _root.save.gardenSlotGrade[_parent.slot] = grade;
}


