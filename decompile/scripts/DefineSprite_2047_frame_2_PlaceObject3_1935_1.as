//! status=pending
onClipEvent(enterFrame){
   delay += 1;
   if(delay > 1)
   {
      delay = 0;
      bg.gotoAndStop(_root.cardList[_parent.cardtowin].quanta);
      image.gotoAndStop(_root.cardList[_parent.cardtowin].id);
      rareupgraded.gotoAndStop(_root.cardList[_parent.cardtowin].upgraded + 1);
      triangle.gotoAndStop(_root.cardList[_parent.cardtowin].quanta);
      reqBox.text = _root.cardList[_parent.cardtowin].req;
      nameBox.text = _root.cardList[_parent.cardtowin].name;
      if(_root.cardList[_parent.cardtowin].name != undefined)
      {
         gotoAndStop(1);
      }
      else
      {
         gotoAndStop(2);
      }
      ownBox.text = "";
      typeBox.text = _root.cardList[_parent.cardtowin].type;
      copyRight.text = "Cost: " + _root.cardList[_parent.cardtowin].cost;
      if(_root.cardList[_parent.cardtowin].type == "Monster")
      {
         hpBox.text = "HP: " + _root.cardList[_parent.cardtowin].hp;
         typeBox.text = _root.cardList[_parent.cardtowin].atk + " / " + _root.cardList[_parent.cardtowin].def;
      }
      else
      {
         hpBox.text = "";
      }
      descBox.text = _root.cardList[_parent.cardtowin].desc;
   }
}


onClipEvent(load){
   delay = 0;
   gotoAndStop(1);
}


