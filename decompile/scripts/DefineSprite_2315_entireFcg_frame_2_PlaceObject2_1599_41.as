//! status=pending
on(release){
   if(_root.fcgCooldown <= 0 && !isNaN(_parent.powerCost) && _parent.powerCost >= 0)
   {
      _root.save.fcgCash -= _parent.powerCost;
      _root.fcg_challenged = false;
      _root.save.fcgLastDiff = _root.save.fcgCurDiff;
      if(_root.save.fcgCurDiff != 11)
      {
         _root.fcgCooldown = 15;
      }
      if(_root.save.fcgCurDiff == 0)
      {
         _root.fcg_opponentlevel = 0;
         _root.enemy_randomdeck = false;
         _parent.enemy_deck = 1;
         _parent.gotoAndStop(3);
      }
      else if(_root.save.fcgCurDiff == 1)
      {
         _root.fcg_opponentlevel = 1;
         _root.enemy_randomdeck = true;
         _parent.enemy_deck = 1;
         _parent.gotoAndStop(3);
      }
      else if(_root.save.fcgCurDiff == 2)
      {
         _root.fcg_opponentlevel = 2;
         _root.enemy_randomdeck = true;
         _parent.enemy_deck = 3 + random(6);
         _parent.gotoAndStop(3);
      }
      else if(_root.save.fcgCurDiff == 3)
      {
         _root.fcg_opponentlevel = 3;
         _root.enemy_randomdeck = false;
         _parent.enemy_deck = 3 + random(5);
         _parent.enemy_deckhyb = 3 + random(5);
         _parent.gotoAndStop(3);
      }
      else if(_root.save.fcgCurDiff == 4)
      {
         _root.fcg_opponentlevel = 4;
         _root.enemy_randomdeck = false;
         _parent.enemy_deck = 8 + random(5);
         _parent.enemy_deckhyb = 8 + random(5);
         _parent.gotoAndStop(3);
      }
      else if(_root.save.fcgCurDiff == 5 && _root.saveid != 4)
      {
         _root.fcg_opponentlevel = 5;
         _root.enemy_randomdeck = false;
         _parent.enemy_deck = 70 + random(164);
         _parent.gotoAndStop(14);
      }
      else if(_root.save.fcgCurDiff == 6)
      {
         _root.fcg_opponentlevel = 6;
         _root.enemy_randomdeck = false;
         _parent.enemy_deck = 13 + random(21);
         _parent.gotoAndStop(3);
      }
      else if(_root.save.fcgCurDiff == 7)
      {
         _root.fcg_opponentlevel = 7;
         _root.enemy_randomdeck = false;
         _parent.enemy_deck = 13 + random(21);
         _parent.gotoAndStop(3);
      }
      else if(_root.save.fcgCurDiff == 8)
      {
         if(_root.save.fcgRandomDeck != true)
         {
            _root.fcg_opponentlevel = 8;
            _root.enemy_randomdeck = false;
            _parent.enemy_deck = 2;
            _parent.gotoAndStop(3);
         }
      }
      else if(_root.save.fcgCurDiff == 9)
      {
         if(_root.save.fcgLegendDeck > 0 && _root.save.fcgLegendLife > 0)
         {
            if(_root.systemtimenow % 86400000 > 85500000)
            {
               _root.showPopup("Access Denied","The Legendary Monster is currently sleeping.");
               _root.save.fcgCash += _parent.powerCost;
            }
            else
            {
               _root.fcg_opponentlevel = 9;
               _root.enemy_randomdeck = false;
               _parent.enemy_deck = _root.save.fcgLegendDeck;
               _parent.gotoAndStop(3);
            }
         }
         else
         {
            _root.save.fcgCash += _parent.powerCost;
         }
      }
      else if(_root.save.fcgCurDiff == 10)
      {
         _root.fcgCooldown = 30;
         _root.fcg_opponentlevel = 10;
         _root.enemy_randomdeck = false;
         tempDeck = _root.save.fcgSeriousDeck;
         _parent.enemy_deck = _root.save.fcgSeriousDeck;
         _root.save.fcgSeriousDeck = 34 + random(35);
         if(_root.saveid == 25)
         {
            _root.save.fcgSeriousDeck = 13 + random(56);
            if(_root.save.fcgLevel10 == 79)
            {
               _root.save.fcgSeriousDeck = 69;
            }
            while(_root.save.fcgChallenge5[_root.save.fcgSeriousDeck] >= 2 && _root.save.fcgLevel10 < 100 || _root.save.fcgSeriousDeck == tempDeck)
            {
               _root.save.fcgSeriousDeck = 13 + random(56);
            }
         }
         _parent.gotoAndStop(3);
      }
      else if(_root.save.fcgCurDiff == 11)
      {
         _parent.gotoAndStop(7);
      }
   }
}


onClipEvent(enterFrame){
   gotoAndStop(_root.save.fcgCurDiff + 2);
}


