//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Collection Points (CP) can be gained by contributing items to the Museum.\n- You gain +1 Equipment Defense per 2 CP\n- You gain +1 Equipment Attack per 10 CP\n- You gain +1% Rare Monster Rate per 20 CP\n- You gain +1% Epic Monster Rate per 50 CP\n- You gain +1% Drop Rate per Trophy item in the Museum\n\nTotal Effects:\n<font color=\'#CC99FF\'>Equipment Defense: <b>+" + _root.withComma(_root.save.collectionPoint / 2) + "</b>\nEquipment Attack: <b>+" + _root.withComma(_root.save.collectionPoint / 10) + "</b><font>\n<font color=\'#99FF33\'>Rare Monster Rate: <b>+" + _root.withComma(_root.save.collectionPoint / 20) + "%</b>\nEpic Monster Rate: <b>+" + _root.withComma(_root.save.collectionPoint / 50) + "%</b>\nDrop Rate: <b>+" + _root.withComma(_root.save.collectionPointTrophy) + "%</b></font>";
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


