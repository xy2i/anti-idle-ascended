//! status=pending
onClipEvent(load){
   bg.gotoAndStop(_root.cardList[_root.cardspin].quanta);
   image.gotoAndStop(_root.cardList[_root.cardspin].id);
   rareupgraded.gotoAndStop(_root.cardList[_root.cardspin].upgraded + 1);
   triangle.gotoAndStop(_root.cardList[_root.cardspin].quanta);
   reqBox.text = _root.cardList[_root.cardspin].req;
   nameBox.text = _root.cardList[_root.cardspin].name;
   if(_root.cardList[_root.cardspin].name != undefined)
   {
      gotoAndStop(1);
   }
   else
   {
      gotoAndStop(2);
   }
   ownBox.text = "";
   typeBox.text = _root.cardList[_root.cardspin].type;
   copyRight.text = "Cost: " + _root.withComma(_root.cardList[_root.cardspin].cost);
   if(_root.cardList[_root.cardspin].type == "Monster")
   {
      hpBox.text = "HP: " + _root.cardList[_root.cardspin].hp;
      typeBox.text = _root.cardList[_root.cardspin].atk + " / " + _root.cardList[_root.cardspin].def;
   }
   else
   {
      hpBox.text = "";
   }
   descBox.text = _root.cardList[_root.cardspin].desc;
}


