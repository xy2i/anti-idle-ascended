//! status=pending
monsterNameText.text = _root.deckList[_root.save.fcgSeriousDeck].deckname;
if(_root.saveid == 25)
{
   if(_root.save.fcgChallenge5[_root.save.fcgSeriousDeck] == 0)
   {
      monsterNameText.text += " Lv.1";
   }
   else if(_root.save.fcgChallenge5[_root.save.fcgSeriousDeck] == 1)
   {
      monsterNameText.text += " Lv.2";
   }
   else
   {
      monsterNameText.text += " Lv.3";
   }
}
