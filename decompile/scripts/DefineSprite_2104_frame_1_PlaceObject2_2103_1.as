//! status=pending
onClipEvent(enterFrame){
   delay += 1;
   if(delay > 1)
   {
      cardx = Math.round(_parent._y / 10) + 1 + (_root.bazaarpage - 1) * 16;
      card = _root["cardx_" + cardx];
      delay = 0;
      bg.gotoAndStop(_root.cardList[card].quanta);
      image.gotoAndStop(_root.cardList[card].id);
      rareupgraded.gotoAndStop(_root.cardList[card].upgraded + 1);
      triangle.gotoAndStop(_root.cardList[card].quanta);
      reqBox.text = _root.cardList[card].req;
      nameBox.text = _root.cardList[card].name;
      if(_root.cardList[card].name != undefined)
      {
         gotoAndStop(1);
      }
      else
      {
         gotoAndStop(2);
      }
      ownBox.text = "[" + _root.save.fcgDeck[card] + " / " + _root.save.fcgOwned[card] + "]";
      if(_root.save.fcgOwned[card] < 1)
      {
         ownBox.textColor = 6684672;
         filter.gotoAndStop(2);
      }
      else if(_root.save.fcgDeck[card] < 1)
      {
         ownBox.textColor = 13369344;
         filter.gotoAndStop(3);
      }
      else
      {
         ownBox.textColor = 16776960;
         filter.gotoAndStop(1);
      }
      typeBox.text = _root.cardList[card].type;
      copyRight.text = "Cost: " + _root.withComma(_root.cardList[card].cost);
      sellprice = Math.ceil(_root.cardList[card].cost * 0.1);
      if(sellprice > 9001 || isNaN(sellprice))
      {
         sellprice = 9001;
      }
      if(_root.fcg_bmode == "Selling" || Key.isDown(83) || hit.hitTest(_root.cursor) && _xmouse >= 125)
      {
         copyRight.text = "Sell For: " + _root.withComma(sellprice);
      }
      if(_root.cardList[card].type == "Monster")
      {
         hpBox.text = "HP: " + _root.cardList[card].hp;
         typeBox.text = _root.cardList[card].atk + " / " + _root.cardList[card].def;
      }
      else
      {
         hpBox.text = "";
      }
      descBox.text = _root.cardList[card].desc;
      if(hit.hitTest(_root.cursor))
      {
         _parent.swapDepths(2000);
      }
      else
      {
         _parent.swapDepths(depth);
      }
   }
}


onClipEvent(load){
   depth = _parent.getDepth();
   delay = 2;
   gotoAndStop(1);
}


