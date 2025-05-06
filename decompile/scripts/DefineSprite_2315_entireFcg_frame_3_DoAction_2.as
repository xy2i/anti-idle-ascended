//! status=pending
function updateText()
{
   statBox1.text = _root.fcg_opponent_chp;
   statBox2.text = _root.fcg_opponent_catk;
   statBox3.text = _root.fcg_opponent_cdef;
   statBox4.text = _root.player_damagedealt + _root.fcg_player_catk + _root.fcg_player_matk;
   statBox5.text = _root.opponent_damagedealt + _root.fcg_opponent_catk + _root.fcg_opponent_matk;
   statBox7.text = _root.fcg_player_chp;
   statBox8.text = _root.fcg_player_catk;
   statBox9.text = _root.fcg_player_cdef;
   statBox10.text = _root.fcg_player_catk + _root.fcg_player_matk + " + " + _root.player_damagedealt;
   statBox11.text = _root.fcg_opponent_catk + _root.fcg_opponent_matk + " + " + _root.opponent_damagedealt;
   genBox1.text = "+" + _root.fcg_opponent_pil1;
   genBox2.text = "+" + _root.fcg_opponent_pil2;
   genBox3.text = "+" + _root.fcg_opponent_pil3;
   genBox4.text = "+" + _root.fcg_opponent_pil4;
   genBox5.text = "+" + _root.fcg_opponent_pil5;
   genBox6.text = "+" + _root.fcg_player_pil1;
   genBox7.text = "+" + _root.fcg_player_pil2;
   genBox8.text = "+" + _root.fcg_player_pil3;
   genBox9.text = "+" + _root.fcg_player_pil4;
   genBox10.text = "+" + _root.fcg_player_pil5;
   eneBox1.text = _root.fcg_opponent_ene1;
   eneBox2.text = _root.fcg_opponent_ene2;
   eneBox3.text = _root.fcg_opponent_ene3;
   eneBox4.text = _root.fcg_opponent_ene4;
   eneBox5.text = _root.fcg_opponent_ene5;
   eneBox6.text = _root.fcg_player_ene1;
   eneBox7.text = _root.fcg_player_ene2;
   eneBox8.text = _root.fcg_player_ene3;
   eneBox9.text = _root.fcg_player_ene4;
   eneBox10.text = _root.fcg_player_ene5;
}
function addLog(something)
{
   fcgLog.logText.text += "\n" + something;
}
function resetLog()
{
   fcgLog.logText.text = "";
}
function checkPriority()
{
   priority = [zeroItem];
   ignore = [zeroItem];
   playerCurVal = _root.fcg_player_mhp * 0.3 + _root.fcg_player_matk * 2 + _root.fcg_player_mdef + _root.fcg_player_mreq;
   enemyCurVal = _root.fcg_opponent_mhp * 0.3 + _root.fcg_opponent_matk * 2 + _root.fcg_opponent_mdef + _root.fcg_opponent_mreq;
   if(isNaN(playerCurVal) || _root.fcg_player_mexist == 0)
   {
      playerCurVal = 0;
   }
   if(isNaN(enemyCurVal) || _root.fcg_opponent_mexist == 0)
   {
      enemyCurVal = 0;
   }
   var _loc2_ = 7;
   while(_loc2_ <= 12)
   {
      priority[_loc2_] = 0;
      cardloc = _loc2_;
      if(_root["fcg_opponent_ene" + _root["quanta_card" + cardloc]] < _root["req_card" + cardloc] || _root["exist_card" + cardloc] != 1)
      {
         ignore[_loc2_] = 1;
      }
      xname = _root["name_card" + cardloc];
      xspec = _root["special_card" + cardloc];
      if(xspec != "" && _root.fcg_opponent_mhp > 0 && _root.fcg_opponent_mspecial == "")
      {
         priority[_loc2_] += 3;
      }
      if(xspec == "Poison")
      {
         if(_root.fcg_opponent_mhp > 0 && _root.fcg_opponent_mspecial != "Poison")
         {
            priority[_loc2_] += 10;
         }
         else if(_root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 8;
         }
      }
      if(xspec == "Destroy")
      {
         if(_root.fcg_player_mhp < 1 && _root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 25;
            if(efullhand == 1)
            {
               priority[_loc2_] += 16;
            }
         }
         else
         {
            priority[_loc2_] += 15 + playerCurVal;
         }
      }
      if(xspec == "Absorb")
      {
         if(_root.fcg_player_mhp < 1 && _root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 25;
            if(efullhand == 1)
            {
               priority[_loc2_] += 13;
            }
         }
         else
         {
            priority[_loc2_] += 12 + _root.fcg_player_mhp + playerCurVal;
         }
      }
      if(xspec == "Forget")
      {
         if(_root.fcg_player_mhp < 1 && _root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 5;
         }
         else if(_root.fcg_player_mspecialpow < 0)
         {
            priority[_loc2_] -= 20;
         }
         else if(_root.fcg_player_mspecialpow == 0)
         {
            priority[_loc2_] -= 3;
         }
         else
         {
            priority[_loc2_] += 5;
         }
      }
      if(xspec == "Sacrifice")
      {
         if(_root.fcg_opponent_mhp > 0 && _root.fcg_opponent_mspecial != "Transform")
         {
            priority[_loc2_] += enemyCurVal - 10;
         }
         else if(_root.fcg_opponent_mhp < 1 && _root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 5;
         }
         else if(_root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 25;
         }
      }
      if(xspec == "Growth")
      {
         if(_root.fcg_opponent_mhp > 0 && (_root.fcg_opponent_mspecial == "" || _root.fcg_opponent_mspecialpow < 0))
         {
            priority[_loc2_] += 7 + _root["specialpow_card" + cardloc] * 2;
         }
         else if(_root.fcg_opponent_mhp > 0 && _root.fcg_opponent_mspecial != "Growth" || _root.fcg_opponent_mhp > 0 && _root.fcg_opponent_mspecial == "Growth" && _root.fcg_opponent_mspecialpow <= _root["specialpow_card" + cardloc])
         {
            priority[_loc2_] += 3 + _root["specialpow_card" + cardloc] * 2;
         }
         else if(_root.fcg_opponent_mhp < 1 && _root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 4;
         }
         else if(_root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 25;
            if(efullhand == 1)
            {
               priority[_loc2_] += 10;
            }
         }
      }
      if(xspec == "GrowthA")
      {
         if(_root.fcg_opponent_mhp > 0 && (_root.fcg_opponent_mspecial == "" || _root.fcg_opponent_mspecialpow < 0))
         {
            priority[_loc2_] += 6 + _root["specialpow_card" + cardloc] * 2;
         }
         else if(_root.fcg_opponent_mhp > 0 && _root.fcg_opponent_mspecial != "Growth" && _root.fcg_opponent_mspecial != "GrowthA" || _root.fcg_opponent_mhp > 0 && _root.fcg_opponent_mspecial == "GrowthA" && _root.fcg_opponent_mspecialpow <= _root["specialpow_card" + cardloc])
         {
            priority[_loc2_] += 2 + _root["specialpow_card" + cardloc] * 2;
         }
         else if(_root.fcg_opponent_mhp < 1 && _root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 4;
         }
         else if(_root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 25;
            if(efullhand == 1)
            {
               priority[_loc2_] += 10;
            }
         }
      }
      if(xspec == "GrowthD")
      {
         if(_root.fcg_opponent_mhp > 0 && (_root.fcg_opponent_mspecial == "" || _root.fcg_opponent_mspecialpow < 0))
         {
            priority[_loc2_] += 5 + _root["specialpow_card" + cardloc] * 2;
         }
         else if(_root.fcg_opponent_mhp > 0 && _root.fcg_opponent_mspecial != "Growth" && _root.fcg_opponent_mspecial != "GrowthD" || _root.fcg_opponent_mhp > 0 && _root.fcg_opponent_mspecial == "GrowthD" && _root.fcg_opponent_mspecialpow <= _root["specialpow_card" + cardloc])
         {
            priority[_loc2_] += 1 + _root["specialpow_card" + cardloc] * 2;
         }
         else if(_root.fcg_opponent_mhp < 1 && _root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 4;
         }
         else if(_root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 25;
            if(efullhand == 1)
            {
               priority[_loc2_] += 10;
            }
         }
      }
      if(xspec == "Transform")
      {
         if(_root.fcg_opponent_mhp > 0 && _root.fcg_opponent_mspecial != "Transform")
         {
            priority[_loc2_] += 20 - enemyCurVal;
         }
         else if(_root.fcg_opponent_mhp < 1 && _root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 3;
         }
         else if(_root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 25;
            if(efullhand == 1)
            {
               priority[_loc2_] += 10;
            }
         }
      }
      if(xspec == "Mutate")
      {
         if(_root.fcg_opponent_mhp > 0)
         {
            priority[_loc2_] += 21 - enemyCurVal;
         }
         else if(_root.fcg_opponent_mhp < 1 && _root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 3;
         }
      }
      if(xspec == "Rebirth")
      {
         if(_root.fcg_opponent_mhp > 0 && (_root.fcg_opponent_mspecial == "" || _root.fcg_opponent_mspecialpow < 0))
         {
            priority[_loc2_] += 7;
         }
         else if(_root.fcg_opponent_mhp < 1 && _root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 3;
         }
         else if(_root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 25;
            if(efullhand == 1)
            {
               priority[_loc2_] += 10;
            }
         }
      }
      if(xspec == "Lure")
      {
         if(_root.fcg_opponent_mhp > 0 && (_root.fcg_opponent_mspecial == "" || _root.fcg_opponent_mspecialpow < 0))
         {
            priority[_loc2_] += _root.fcg_opponent_mdef * 3 + _root.fcg_opponent_mhp - 20;
         }
         else if(_root.fcg_opponent_mhp < 1 && _root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 5;
         }
         else if(_root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 25;
            if(efullhand == 1)
            {
               priority[_loc2_] += 10;
            }
         }
      }
      if(xspec == "MonKill")
      {
         if(_root.fcg_opponent_mhp > 0 && (_root.fcg_opponent_mspecial == "" || _root.fcg_opponent_mspecialpow < 0) && _root.fcg_player_mhp > 0)
         {
            priority[_loc2_] += _root.fcg_opponent_matk - _root.fcg_player_mdef;
         }
         else if(_root.fcg_opponent_mhp > 0 && (_root.fcg_opponent_mspecial == "" || _root.fcg_opponent_mspecialpow < 0) <= 0)
         {
            priority[_loc2_] += _root.fcg_opponent_matk - 3;
         }
         else if(_root.fcg_opponent_mhp < 1 && _root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 5;
         }
      }
      if(xspec == "Unfreeze")
      {
         if(_root.fcg_opponent_mfreeze > 0)
         {
            priority[_loc2_] += _root.fcg_opponent_mfreeze * 5;
         }
         else if(_root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 5;
         }
      }
      if(xspec == "Antidote")
      {
         if(_root.fcg_opponent_crec < 0)
         {
            priority[_loc2_] -= _root.fcg_opponent_crec - 3;
         }
         else if(_root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 5;
         }
         if(_root.fcg_opponent_crec < _root.fcg_opponent_hp * -0.2)
         {
            priority[_loc2_] += 20;
         }
      }
      if(xspec == "NoRegen")
      {
         if(_root.fcg_player_crec > 0)
         {
            priority[_loc2_] += 3 + _root.fcg_player_crec;
         }
         else if(_root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 5;
         }
      }
      if(xspec == "Zombify")
      {
         if(_root.fcg_player_crec > 0)
         {
            priority[_loc2_] += 5 + _root.fcg_player_crec * 5;
         }
      }
      if(xspec == "Generator")
      {
         if(_root.fcg_opponent_mhp > 0 && (_root.fcg_opponent_mspecial == "" || _root.fcg_opponent_mspecialpow < 0))
         {
            priority[_loc2_] += 3 + _root["specialpow_card" + cardloc] * 2;
         }
         else if(_root.fcg_opponent_mhp < 1 && _root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 5;
         }
      }
      if(_root["omhp_card" + cardloc] < 0)
      {
         if(_root.fcg_player_mhp > 0)
         {
            priority[_loc2_] += _root["omhp_card" + cardloc] + playerCurVal;
         }
         else if(_root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 5;
         }
         if(_root["omhp_card" + cardloc] > _root.fcg_player_mhp * -1 && _root.fcg_player_mhp > 0)
         {
            priority[_loc2_] += 15;
         }
      }
      if(_root["omatk_card" + cardloc] < 0)
      {
         if(_root.fcg_player_matk > 0)
         {
            priority[_loc2_] += 10;
         }
         else if(_root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 5;
         }
      }
      if(_root["omdef_card" + cardloc] < 0)
      {
         if(_root.fcg_player_mdef > 0)
         {
            priority[_loc2_] += 10;
         }
         else if(_root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 5;
         }
      }
      if(_root["omrec_card" + cardloc] < 0)
      {
         if(_root.fcg_player_mhp > _root.fcg_player_mrec * -1)
         {
            priority[_loc2_] += 5 + playerCurVal;
         }
         else if(_root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 5;
         }
      }
      if(_root["freeze_card" + cardloc] > 0)
      {
         if(_root.fcg_player_mfreeze <= 0 && _root.fcg_player_mhp > 0)
         {
            priority[_loc2_] += _root["freeze_card" + cardloc] * 2;
         }
         else if(_root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 5;
         }
      }
      if(_root["draw_card" + cardloc] > 0)
      {
         if(efullhand == 0 && _root.opponent_cardsLeft > _root.player_cardsLeft)
         {
            priority[_loc2_] += 10;
         }
         else if(efullhand == 1)
         {
            priority[_loc2_] += 3;
         }
         else if(_root["type_card" + cardloc] != "Monster")
         {
            priority[_loc2_] -= 2;
         }
      }
      if(_root["inflict_card" + cardloc] > 0)
      {
         priority[_loc2_] += _root["inflict_card" + cardloc];
      }
      if(_root["mhp_card" + cardloc] > 0 || _root["matk_card" + cardloc] > 0 || _root["mdef_card" + cardloc] > 0 || _root["mrec_card" + cardloc] > 0)
      {
         if(_root.fcg_opponent_mhp > 0)
         {
            priority[_loc2_] += 10;
         }
         else if(_root.fcg_opponent_mhp > 0 && (_root.fcg_opponent_mspecial == "" || _root.fcg_opponent_mspecialpow < 0))
         {
            priority[_loc2_] -= 5;
         }
      }
      if(_root["mrec_card" + cardloc] > 0)
      {
         if(_root.fcg_opponent_mhp < _root.fcg_opponent_mrec)
         {
            priority[_loc2_] -= 10;
         }
      }
      var _loc3_ = 1;
      while(_loc3_ <= 5)
      {
         if(_root["pil" + _loc3_ + "_card" + cardloc] > 0)
         {
            if(_root["fcg_opponent_pil" + _loc3_] < 10)
            {
               priority[_loc2_] += 10 * _root["pil" + _loc3_ + "_card" + cardloc];
            }
            else
            {
               priority[_loc2_] += 1;
            }
         }
         if(_root["ene" + _loc3_ + "_card" + cardloc] > 0)
         {
            priority[_loc2_] += 5 * _root["ene" + _loc3_ + "_card" + cardloc];
         }
         _loc3_ = _loc3_ + 1;
      }
      if(_root["chp_card" + cardloc] > 0)
      {
         if(_root.fcg_opponent_chp < 200 - _root["chp_card" + cardloc])
         {
            priority[_loc2_] += _root["chp_card" + cardloc];
         }
      }
      if(_root["catk_card" + cardloc] > 0 || _root["cdef_card" + cardloc] > 0 || _root["crec_card" + cardloc] > 0)
      {
         priority[_loc2_] += 10;
      }
      if(_root["ochp_card" + cardloc] > 0)
      {
         if(_root.fcg_opponent_chp < 200 - _root["chp_card" + cardloc])
         {
            priority[_loc2_] += _root["chp_card" + cardloc];
         }
      }
      if(_root["ochp_card" + cardloc] < 0)
      {
         priority[_loc2_] -= _root["ochp_card" + cardloc] * 2;
      }
      if(_root["ocatk_card" + cardloc] < 0)
      {
         if(_root.fcg_player_catk > 0)
         {
            priority[_loc2_] += 10;
         }
      }
      if(_root["ocdef_card" + cardloc] < 0)
      {
         if(_root.fcg_player_cdef > 0)
         {
            priority[_loc2_] += 10;
         }
      }
      if(_root["ocrec_card" + cardloc] < 0)
      {
         priority[_loc2_] += 10;
      }
      if(_root["type_card" + cardloc] == "Monster")
      {
         if(_root.fcg_opponent_mhp > 0)
         {
            priority[_loc2_] += _root["hp_card" + cardloc] * 0.3 + _root["atk_card" + cardloc] * 2 + _root["def_card" + cardloc] * 1 + _root["req_card" + cardloc] - enemyCurVal - 4;
            if(_root.fcg_opponent_mfreeze > 0)
            {
               priority[_loc2_] += _root.fcg_opponent_mfreeze * 5;
            }
         }
         else
         {
            priority[_loc2_] += _root["hp_card" + cardloc] * 0.3 + _root["atk_card" + cardloc] * 2 + _root["def_card" + cardloc] * 1 + _root["req_card" + cardloc] + 17;
         }
      }
      if(_root["chp_card" + cardloc] <= _root.fcg_opponent_chp * -1)
      {
         priority[_loc2_] -= 50000;
      }
      if(xname == "Rage" || xname == "Berserk")
      {
         if(_root.fcg_opponent_mhp > 4)
         {
            priority[_loc2_] = 5;
         }
         else
         {
            priority[_loc2_] = -5;
         }
      }
      if(xname == "Meteor Rain")
      {
         if(_root.fcg_opponent_mhp != 1)
         {
            priority[_loc2_] = 5;
         }
         else
         {
            priority[_loc2_] = -25;
         }
      }
      if(xname == "Final Strikes")
      {
         if(_root.fcg_opponent_mhp > 2 && _root.fcg_opponent_mrec >= 0)
         {
            priority[_loc2_] = 5;
         }
         else
         {
            priority[_loc2_] = -25;
         }
      }
      if(xname == "Hide")
      {
         if(_root.fcg_opponent_mhp > 0)
         {
            if(_root.fcg_opponent_matk < 2 || _root.fcg_opponent_matk > 5 || _root.fcg_opponent_mspecial == "Lure")
            {
               priority[_loc2_] = 5;
            }
         }
         else
         {
            priority[_loc2_] = -25;
         }
      }
      if(xname == "Epicbolt")
      {
         if(enemyCurVal < 15 || _root.fcg_opponent_mhp > 10)
         {
            priority[_loc2_] = 5;
         }
         else
         {
            priority[_loc2_] = -25;
         }
      }
      if(xname == "Match Delay")
      {
         if(_root.fcg_opponent_chp < _root.fcg_player_chp || _root.opponent_cardsLeft > _root.player_cardsLeft)
         {
            priority[_loc2_] = 5;
         }
         else
         {
            priority[_loc2_] = -25;
         }
      }
      if(xname == "Poison Heal")
      {
         if(_root.fcg_opponent_chp < 50 && _root.fcg_opponent_crec < 5)
         {
            priority[_loc2_] = 5;
         }
         else
         {
            priority[_loc2_] = -35;
         }
         var _loc4_ = 7;
         while(_loc4_ <= 12)
         {
            if(_root["name_card" + _loc4_] == "Cure" && _root["exist_card" + _loc4_] == 1)
            {
               priority[_loc2_] += 70 - _root.fcg_opponent_crec;
            }
            _loc4_ = _loc4_ + 1;
         }
         _loc4_ = 7;
         while(_loc4_ <= 12)
         {
            if(_root["name_card" + _loc4_] == "Poison Heal" && _root["exist_card" + _loc4_] == 1 && priority[_loc2_] > 5)
            {
               priority[_loc2_] += 1000;
            }
            _loc4_ = _loc4_ + 1;
         }
      }
      if(xname == "Attack Removal")
      {
         priority[_loc2_] = _root.fcg_player_catk - _root.fcg_opponent_catk - 3;
      }
      if(xname == "Defense Removal")
      {
         priority[_loc2_] = _root.fcg_player_cdef - _root.fcg_opponent_cdef - 3;
      }
      if(xname == "Stat Wipeout")
      {
         priority[_loc2_] = _root.fcg_player_catk - _root.fcg_opponent_catk + _root.fcg_player_cdef - _root.fcg_opponent_cdef - 3;
      }
      if(xname == "Green World")
      {
         priority[_loc2_] = _root.fcg_player_pil1 + _root.fcg_player_pil2 + _root.fcg_player_pil3 + _root.fcg_player_pil5 - 7;
      }
      if(efullhand == 1)
      {
         priority[_loc2_] += 34 - _root["req_card" + cardloc];
      }
      _loc2_ = _loc2_ + 1;
   }
}
function drawCard(codeFu)
{
   cardloc = 1;
   var _loc3_ = 1;
   while(_loc3_ <= 6)
   {
      if(_root["exist_card" + cardloc] == 1)
      {
         cardloc += 1;
      }
      _loc3_ = _loc3_ + 1;
   }
   if(cardloc <= 6)
   {
      if(codeFu == 5)
      {
         card = 122;
      }
      else if(codeFu == 4)
      {
         card = 142;
      }
      else if(codeFu != 1 && codeFu != 2)
      {
         _root.player_cardsDrawn += 1;
         _root.player_cardsLeft -= 1;
         if(_root.player_cardsLeft >= 0)
         {
            if(_root.save.fcgRandomDeck == false)
            {
               card = playerDeckArray[_root.player_cardsDrawn];
            }
            else
            {
               card = random(maxcard) + 1;
               if(Math.random() < 0.2)
               {
                  card = random(24) + 3;
               }
            }
         }
      }
      else if(codeFu == 2)
      {
         card = random(maxcard) + 1;
         if(Math.random() < 0.2)
         {
            card = random(24) + 3;
         }
         if(Math.ceil(card / 2) != card / 2)
         {
            card += 1;
         }
      }
      else if(codeFu == 1)
      {
         if(_root.fcg_opponent_chp <= 16 && _root.fcg_player_chp > 1)
         {
            card = 116;
         }
         else if(_root.fcg_opponent_catk > _root.fcg_player_catk + 5 && _root.fcg_opponent_catk > 20 && _root.fcg_opponent_catk > _root.fcg_player_cdef + _root.fcg_player_chp * 0.2 && Math.random() < 0.8)
         {
            card = 180;
         }
         else if(_root.fcg_opponent_catk > _root.fcg_player_catk + 5 && _root.fcg_opponent_catk > _root.fcg_player_cdef && Math.random() < 0.8)
         {
            card = 244;
         }
         else if(_root.fcg_player_crec < -5 && Math.random() < 0.8)
         {
            card = 236;
         }
         else if(_root.fcg_opponent_mexist > 0 && Math.random() < 0.8)
         {
            card = 164;
         }
         else if(_root.fcg_player_chp < 40 && Math.random() < 0.8)
         {
            card = 182;
         }
         else if(_root.fcg_opponent_cdef > _root.fcg_player_cdef + 5 && Math.random() < 0.8)
         {
            card = 190;
         }
         else if(_root.fcg_player_cfreeze > 0 && Math.random() < 0.8)
         {
            card = 234;
         }
         else if((_root.fcg_player_matk > 6 || _root.fcg_player_mdef > 6 || _root.fcg_player_mhp > 9) && Math.random() < 0.8)
         {
            card = 110;
         }
         else if(_root.fcg_opponent_crec > _root.fcg_player_crec + 3 && _root.fcg_opponent_crec > 4 && _root.fcg_player_crec <= 4 && Math.random() < 0.8)
         {
            card = 238;
         }
         else if(_root.player_cardsLeft > 10 && Math.random() < 0.8)
         {
            card = 142;
         }
         else
         {
            card = 122;
         }
      }
      if(codeFu == 1 || codeFu == 2 || codeFu == 4 || codeFu == 5 || _root.player_cardsLeft >= 0)
      {
         _root["exist_card" + cardloc] = 1;
         _root["id_card" + cardloc] = _root.cardList[card].id;
         _root["upgraded_card" + cardloc] = _root.cardList[card].upgraded;
         _root["name_card" + cardloc] = _root.cardList[card].name;
         _root["quanta_card" + cardloc] = _root.cardList[card].quanta;
         _root["req_card" + cardloc] = _root.cardList[card].req;
         if(codeFu != 0)
         {
            _root["quanta_card" + cardloc] = 6;
            _root["req_card" + cardloc] = 0;
         }
         _root["type_card" + cardloc] = _root.cardList[card].type;
         _root["desc_card" + cardloc] = _root.cardList[card].desc;
         _root["atk_card" + cardloc] = _root.cardList[card].atk;
         _root["def_card" + cardloc] = _root.cardList[card].def;
         _root["hp_card" + cardloc] = _root.cardList[card].hp;
         _root["catk_card" + cardloc] = _root.cardList[card].catk;
         _root["cdef_card" + cardloc] = _root.cardList[card].cdef;
         _root["chp_card" + cardloc] = _root.cardList[card].chp;
         _root["matk_card" + cardloc] = _root.cardList[card].matk;
         _root["mdef_card" + cardloc] = _root.cardList[card].mdef;
         _root["mhp_card" + cardloc] = _root.cardList[card].mhp;
         _root["crec_card" + cardloc] = _root.cardList[card].crec;
         _root["mrec_card" + cardloc] = _root.cardList[card].mrec;
         _root["draw_card" + cardloc] = _root.cardList[card].draw;
         _root["inflict_card" + cardloc] = _root.cardList[card].inflict;
         _root["freeze_card" + cardloc] = _root.cardList[card].freeze;
         _root["special_card" + cardloc] = _root.cardList[card].special;
         _root["specialpow_card" + cardloc] = _root.cardList[card].specialpow;
         _root["pil1_card" + cardloc] = _root.cardList[card].pil1;
         _root["pil2_card" + cardloc] = _root.cardList[card].pil2;
         _root["pil3_card" + cardloc] = _root.cardList[card].pil3;
         _root["pil4_card" + cardloc] = _root.cardList[card].pil4;
         _root["pil5_card" + cardloc] = _root.cardList[card].pil5;
         _root["ene1_card" + cardloc] = _root.cardList[card].ene1;
         _root["ene2_card" + cardloc] = _root.cardList[card].ene2;
         _root["ene3_card" + cardloc] = _root.cardList[card].ene3;
         _root["ene4_card" + cardloc] = _root.cardList[card].ene4;
         _root["ene5_card" + cardloc] = _root.cardList[card].ene5;
         _root["opil1_card" + cardloc] = _root.cardList[card].opil1;
         _root["opil2_card" + cardloc] = _root.cardList[card].opil2;
         _root["opil3_card" + cardloc] = _root.cardList[card].opil3;
         _root["opil4_card" + cardloc] = _root.cardList[card].opil4;
         _root["opil5_card" + cardloc] = _root.cardList[card].opil5;
         _root["oene1_card" + cardloc] = _root.cardList[card].oene1;
         _root["oene2_card" + cardloc] = _root.cardList[card].oene2;
         _root["oene3_card" + cardloc] = _root.cardList[card].oene3;
         _root["oene4_card" + cardloc] = _root.cardList[card].oene4;
         _root["oene5_card" + cardloc] = _root.cardList[card].oene5;
         _root["ocatk_card" + cardloc] = _root.cardList[card].ocatk;
         _root["ocdef_card" + cardloc] = _root.cardList[card].ocdef;
         _root["ochp_card" + cardloc] = _root.cardList[card].ochp;
         _root["omatk_card" + cardloc] = _root.cardList[card].omatk;
         _root["omdef_card" + cardloc] = _root.cardList[card].omdef;
         _root["omhp_card" + cardloc] = _root.cardList[card].omhp;
         _root["ocrec_card" + cardloc] = _root.cardList[card].ocrec;
         _root["omrec_card" + cardloc] = _root.cardList[card].omrec;
         _root["author_card" + cardloc] = _root.cardList[card].author;
      }
   }
}
function drawCard_opponent(codeFu)
{
   cardloc = 7;
   if(_root.fcg_opponentlevel == 9 && Math.random() < 0.03 * _root.fcg_turn - 0.01 * _root.save.fcgLegendLife - 0.14 && codeFu == 0)
   {
      codeFu = 3;
   }
   if(_root.fcg_epic == 4 && Math.random() < 0.03 * _root.fcg_turn - 0.15 && codeFu == 0)
   {
      codeFu = 3;
   }
   var _loc3_ = 1;
   while(_loc3_ <= 6)
   {
      if(_root["exist_card" + cardloc] == 1)
      {
         cardloc += 1;
      }
      _loc3_ = _loc3_ + 1;
   }
   if(cardloc <= 12)
   {
      if(codeFu != 1 && codeFu != 2)
      {
         _root.opponent_cardsDrawn += 1;
         _root.opponent_cardsLeft -= 1;
         if(_root.opponent_cardsLeft >= 0)
         {
            if(_root.enemy_randomdeck == false)
            {
               card = enemyDeckArray[_root.opponent_cardsDrawn];
            }
            else
            {
               card = random(maxcard) + 1;
               if(Math.random() < 0.2)
               {
                  card = random(24) + 3;
               }
               if(_root.fcg_opponentlevel < 3 && _root.cardList[card].upgraded >= 2 && Math.random() < 0.7)
               {
                  card = random(24) + 3;
               }
               if(_root.fcg_opponentlevel < 2)
               {
                  if(Math.ceil(card / 2) == card / 2)
                  {
                     card -= 1;
                  }
               }
            }
         }
      }
      else if(codeFu == 2)
      {
         card = random(maxcard) + 1;
         if(Math.random() < 0.2)
         {
            card = random(24) + 3;
         }
         if(Math.ceil(card / 2) != card / 2)
         {
            card += 1;
         }
      }
      else if(codeFu == 1)
      {
         if(_root.fcg_player_chp <= 16 && _root.fcg_opponent_chp > 1)
         {
            card = 116;
         }
         else if(_root.fcg_player_catk > _root.fcg_opponent_catk + 5 && _root.fcg_player_catk > 20 && _root.fcg_player_catk > _root.fcg_opponent_cdef + _root.fcg_opponent_chp * 0.2 && Math.random() < 0.8)
         {
            card = 180;
         }
         else if(_root.fcg_player_catk > _root.fcg_opponent_catk + 5 && _root.fcg_player_catk > _root.fcg_opponent_cdef && Math.random() < 0.8)
         {
            card = 244;
         }
         else if(_root.fcg_opponent_crec < -5 && Math.random() < 0.8)
         {
            card = 236;
         }
         else if(_root.fcg_player_mexist > 0 && Math.random() < 0.8)
         {
            card = 164;
         }
         else if(_root.fcg_opponent_chp < 40 && Math.random() < 0.8)
         {
            card = 182;
         }
         else if(_root.fcg_player_cdef > _root.fcg_opponent_cdef + 5 && Math.random() < 0.8)
         {
            card = 190;
         }
         else if(_root.fcg_opponent_cfreeze > 0 && Math.random() < 0.8)
         {
            card = 234;
         }
         else if((_root.fcg_opponent_matk > 6 || _root.fcg_opponent_mdef > 6 || _root.fcg_opponent_mhp > 9) && Math.random() < 0.8)
         {
            card = 110;
         }
         else if(_root.fcg_player_crec > _root.fcg_opponent_crec + 3 && _root.fcg_player_crec > 4 && _root.fcg_opponent_crec <= 4 && Math.random() < 0.8)
         {
            card = 238;
         }
         else if(_root.opponent_cardsLeft > 10 && Math.random() < 0.8)
         {
            card = 142;
         }
         else
         {
            card = 122;
         }
      }
      if(codeFu == 1 || codeFu == 2 || _root.opponent_cardsLeft >= 0)
      {
         _root["exist_card" + cardloc] = 1;
         _root["id_card" + cardloc] = _root.cardList[card].id;
         _root["upgraded_card" + cardloc] = _root.cardList[card].upgraded;
         _root["name_card" + cardloc] = _root.cardList[card].name;
         _root["quanta_card" + cardloc] = _root.cardList[card].quanta;
         _root["req_card" + cardloc] = _root.cardList[card].req;
         if(codeFu != 0)
         {
            _root["quanta_card" + cardloc] = 6;
            _root["req_card" + cardloc] = 0;
         }
         _root["type_card" + cardloc] = _root.cardList[card].type;
         _root["desc_card" + cardloc] = _root.cardList[card].desc;
         _root["atk_card" + cardloc] = _root.cardList[card].atk;
         _root["def_card" + cardloc] = _root.cardList[card].def;
         _root["hp_card" + cardloc] = _root.cardList[card].hp;
         _root["catk_card" + cardloc] = _root.cardList[card].catk;
         _root["cdef_card" + cardloc] = _root.cardList[card].cdef;
         _root["chp_card" + cardloc] = _root.cardList[card].chp;
         _root["matk_card" + cardloc] = _root.cardList[card].matk;
         _root["mdef_card" + cardloc] = _root.cardList[card].mdef;
         _root["mhp_card" + cardloc] = _root.cardList[card].mhp;
         _root["crec_card" + cardloc] = _root.cardList[card].crec;
         _root["mrec_card" + cardloc] = _root.cardList[card].mrec;
         _root["draw_card" + cardloc] = _root.cardList[card].draw;
         _root["inflict_card" + cardloc] = _root.cardList[card].inflict;
         _root["freeze_card" + cardloc] = _root.cardList[card].freeze;
         _root["special_card" + cardloc] = _root.cardList[card].special;
         _root["specialpow_card" + cardloc] = _root.cardList[card].specialpow;
         _root["pil1_card" + cardloc] = _root.cardList[card].pil1;
         _root["pil2_card" + cardloc] = _root.cardList[card].pil2;
         _root["pil3_card" + cardloc] = _root.cardList[card].pil3;
         _root["pil4_card" + cardloc] = _root.cardList[card].pil4;
         _root["pil5_card" + cardloc] = _root.cardList[card].pil5;
         _root["ene1_card" + cardloc] = _root.cardList[card].ene1;
         _root["ene2_card" + cardloc] = _root.cardList[card].ene2;
         _root["ene3_card" + cardloc] = _root.cardList[card].ene3;
         _root["ene4_card" + cardloc] = _root.cardList[card].ene4;
         _root["ene5_card" + cardloc] = _root.cardList[card].ene5;
         _root["opil1_card" + cardloc] = _root.cardList[card].opil1;
         _root["opil2_card" + cardloc] = _root.cardList[card].opil2;
         _root["opil3_card" + cardloc] = _root.cardList[card].opil3;
         _root["opil4_card" + cardloc] = _root.cardList[card].opil4;
         _root["opil5_card" + cardloc] = _root.cardList[card].opil5;
         _root["oene1_card" + cardloc] = _root.cardList[card].oene1;
         _root["oene2_card" + cardloc] = _root.cardList[card].oene2;
         _root["oene3_card" + cardloc] = _root.cardList[card].oene3;
         _root["oene4_card" + cardloc] = _root.cardList[card].oene4;
         _root["oene5_card" + cardloc] = _root.cardList[card].oene5;
         _root["ocatk_card" + cardloc] = _root.cardList[card].ocatk;
         _root["ocdef_card" + cardloc] = _root.cardList[card].ocdef;
         _root["ochp_card" + cardloc] = _root.cardList[card].ochp;
         _root["omatk_card" + cardloc] = _root.cardList[card].omatk;
         _root["omdef_card" + cardloc] = _root.cardList[card].omdef;
         _root["omhp_card" + cardloc] = _root.cardList[card].omhp;
         _root["ocrec_card" + cardloc] = _root.cardList[card].ocrec;
         _root["omrec_card" + cardloc] = _root.cardList[card].omrec;
         _root["author_card" + cardloc] = _root.cardList[card].author;
      }
   }
}
function summonCard(cardloc)
{
   if(_root.fcg_time > 0.25)
   {
      if(cardloc <= 6 && _root.fcg_player_time <= 0)
      {
         if(_root["fcg_player_ene" + _root["quanta_card" + cardloc]] >= _root["req_card" + cardloc] && _root["exist_card" + cardloc] == 1)
         {
            ignore = 0;
            if(_root["type_card" + cardloc] == "Monster")
            {
               if(_root.fcg_player_mhp <= 0)
               {
                  _root.fcg_player_mid = _root["id_card" + cardloc];
                  _root.fcg_player_mquanta = _root["quanta_card" + cardloc];
                  _root.fcg_player_mreq = _root["req_card" + cardloc];
                  _root.fcg_player_mname = _root["name_card" + cardloc];
                  _root.fcg_player_mdesc = _root["desc_card" + cardloc];
                  _root.fcg_player_mupgraded = _root["upgraded_card" + cardloc];
                  _root.fcg_player_mauthor = _root["author_card" + cardloc];
                  _root.fcg_player_mspecial = _root["special_card" + cardloc];
                  _root.fcg_player_mspecialpow = _root["specialpow_card" + cardloc];
                  _root.fcg_player_mexist = 1;
                  _root.fcg_player_mhp = _root["hp_card" + cardloc];
                  _root.fcg_player_matk = _root["atk_card" + cardloc];
                  _root.fcg_player_mdef = _root["def_card" + cardloc];
               }
               else
               {
                  ignore = 1;
               }
            }
            if(ignore != 1)
            {
               if(_root.fcg_time < 15)
               {
                  _root.fcg_time += 1;
               }
               _root.fcg_player_time = 0.5;
               _root.fcg_opponent_time = 0.3;
               if(_root.fcg_opponentlevel == 0)
               {
                  _root.fcg_opponent_time = 0.6;
               }
               else if(_root.fcg_opponentlevel <= 2)
               {
                  _root.fcg_opponent_time = 0.5;
               }
               else if(_root.fcg_opponentlevel <= 5)
               {
                  _root.fcg_opponent_time = 0.4;
               }
               _root.fcg_player_id = _root["id_card" + cardloc];
               _root.fcg_player_quanta = _root["quanta_card" + cardloc];
               _root.fcg_player_req = _root["req_card" + cardloc];
               _root.fcg_player_name = _root["name_card" + cardloc];
               _root.fcg_player_desc = _root["desc_card" + cardloc];
               _root.fcg_player_author = _root["author_card" + cardloc];
               _root.fcg_player_upgraded = _root["upgraded_card" + cardloc];
               _root.fcg_player_special = _root["special_card" + cardloc];
               _root.fcg_player_specialpow = _root["specialpow_card" + cardloc];
               _root.fcg_player_type = _root["type_card" + cardloc];
               _root.fcg_player_catk += _root["catk_card" + cardloc];
               _root.fcg_player_cdef += _root["cdef_card" + cardloc];
               _root.fcg_player_chp += _root["chp_card" + cardloc];
               _root.fcg_player_matk += _root["matk_card" + cardloc];
               _root.fcg_player_mdef += _root["mdef_card" + cardloc];
               _root.fcg_player_mhp += _root["mhp_card" + cardloc];
               _root.fcg_player_crec += _root["crec_card" + cardloc];
               _root.fcg_player_mrec += _root["mrec_card" + cardloc];
               _root.fcg_opponent_catk += _root["ocatk_card" + cardloc];
               _root.fcg_opponent_cdef += _root["ocdef_card" + cardloc];
               _root.fcg_opponent_chp += _root["ochp_card" + cardloc];
               _root.fcgDamageDealt -= _root["ochp_card" + cardloc];
               _root.fcg_opponent_matk += _root["omatk_card" + cardloc];
               _root.fcg_opponent_mdef += _root["omdef_card" + cardloc];
               _root.fcg_opponent_mhp += _root["omhp_card" + cardloc];
               _root.fcg_opponent_crec += _root["ocrec_card" + cardloc];
               _root.fcg_opponent_mrec += _root["omrec_card" + cardloc];
               _root.player_damagedealtc += _root["inflict_card" + cardloc];
               _root.fcg_opponent_mfreeze += _root["freeze_card" + cardloc];
               var _loc3_ = 1;
               while(_loc3_ <= _root["draw_card" + cardloc])
               {
                  if(_root["name_card" + cardloc] == "Code Fu")
                  {
                     drawCard(1);
                  }
                  else if(_root["name_card" + cardloc] == "Dream Book" && _loc3_ == 1)
                  {
                     drawCard(3);
                  }
                  else if(_root["name_card" + cardloc] == "Mystery Card")
                  {
                     drawCard(2);
                  }
                  else
                  {
                     drawCard(0);
                  }
                  _loc3_ = _loc3_ + 1;
               }
               _root["fcg_player_ene" + _root["quanta_card" + cardloc]] -= _root["req_card" + cardloc];
               _root.fcg_player_pil1 += _root["pil1_card" + cardloc];
               _root.fcg_player_pil2 += _root["pil2_card" + cardloc];
               _root.fcg_player_pil3 += _root["pil3_card" + cardloc];
               _root.fcg_player_pil4 += _root["pil4_card" + cardloc];
               _root.fcg_player_pil5 += _root["pil5_card" + cardloc];
               _root.fcg_player_ene1 += _root["ene1_card" + cardloc];
               _root.fcg_player_ene2 += _root["ene2_card" + cardloc];
               _root.fcg_player_ene3 += _root["ene3_card" + cardloc];
               _root.fcg_player_ene4 += _root["ene4_card" + cardloc];
               _root.fcg_player_ene5 += _root["ene5_card" + cardloc];
               _root.fcg_opponent_pil1 += _root["opil1_card" + cardloc];
               _root.fcg_opponent_pil2 += _root["opil2_card" + cardloc];
               _root.fcg_opponent_pil3 += _root["opil3_card" + cardloc];
               _root.fcg_opponent_pil4 += _root["opil4_card" + cardloc];
               _root.fcg_opponent_pil5 += _root["opil5_card" + cardloc];
               _root.fcg_opponent_ene1 += _root["oene1_card" + cardloc];
               _root.fcg_opponent_ene2 += _root["oene2_card" + cardloc];
               _root.fcg_opponent_ene3 += _root["oene3_card" + cardloc];
               _root.fcg_opponent_ene4 += _root["oene4_card" + cardloc];
               _root.fcg_opponent_ene5 += _root["oene5_card" + cardloc];
               fcg_player_recentsummon.delay = 3;
               fcg_player_recentsummon._alpha = 150;
               _root["exist_card" + cardloc] = 0;
               addLog("You played [" + _root["name_card" + cardloc] + "]!");
            }
         }
      }
      else if(cardloc == 1337 && _root.fcg_opponent_time <= 0)
      {
         if(_root.exist_card7 == true && _root.exist_card8 == true && _root.exist_card9 == true && _root.exist_card10 == true && _root.exist_card11 == true && _root.exist_card12 == true)
         {
            efullhand = 1;
         }
         else
         {
            efullhand = 0;
         }
         checkPriority();
         cardToPlay = 0;
         maxPriority = 1;
         var _loc4_ = 7;
         while(_loc4_ <= 12)
         {
            if(priority[_loc4_] >= maxPriority && ignore[_loc4_] != 1)
            {
               maxPriority = priority[_loc4_];
               cardToPlay = _loc4_;
            }
            _loc4_ = _loc4_ + 1;
         }
         cardloc = cardToPlay;
         if(_root["type_card" + cardloc] == "Monster" && cardloc != 0)
         {
            if(_root.fcg_opponent_mhp <= 0)
            {
               _root.fcg_opponent_mid = _root["id_card" + cardloc];
               _root.fcg_opponent_mquanta = _root["quanta_card" + cardloc];
               _root.fcg_opponent_mreq = _root["req_card" + cardloc];
               _root.fcg_opponent_mname = _root["name_card" + cardloc];
               _root.fcg_opponent_mdesc = _root["desc_card" + cardloc];
               _root.fcg_opponent_mupgraded = _root["upgraded_card" + cardloc];
               _root.fcg_opponent_mauthor = _root["author_card" + cardloc];
               _root.fcg_opponent_mspecial = _root["special_card" + cardloc];
               _root.fcg_opponent_mspecialpow = _root["specialpow_card" + cardloc];
               _root.fcg_opponent_mexist = 1;
               _root.fcg_opponent_mhp = _root["hp_card" + cardloc];
               _root.fcg_opponent_matk = _root["atk_card" + cardloc];
               _root.fcg_opponent_mdef = _root["def_card" + cardloc];
            }
            else
            {
               addLog("Your opponent destroyed its own [" + _root.fcg_opponent_mname + "]!");
               _root.fcg_opponent_mhp = 0;
               if(_root.fcg_time < 15)
               {
                  _root.fcg_time += 1;
               }
               _root.fcg_opponent_time = 0.5;
               cardloc = -1;
            }
         }
         if(cardloc != 0 && cardloc != -1)
         {
            if(_root.fcg_time < 15)
            {
               _root.fcg_time += 1;
            }
            _root.fcg_opponent_time = 0.7;
            if(_root.fcg_opponentlevel == 0)
            {
               _root.fcg_opponent_time = 2;
            }
            else if(_root.fcg_opponentlevel <= 2)
            {
               _root.fcg_opponent_time = 1.5;
            }
            else if(_root.fcg_opponentlevel <= 5)
            {
               _root.fcg_opponent_time = 1;
            }
            _root.fcg_opponent_id = _root["id_card" + cardloc];
            _root.fcg_opponent_quanta = _root["quanta_card" + cardloc];
            _root.fcg_opponent_req = _root["req_card" + cardloc];
            _root.fcg_opponent_name = _root["name_card" + cardloc];
            _root.fcg_opponent_desc = _root["desc_card" + cardloc];
            _root.fcg_opponent_author = _root["author_card" + cardloc];
            _root.fcg_opponent_upgraded = _root["upgraded_card" + cardloc];
            _root.fcg_opponent_special = _root["special_card" + cardloc];
            _root.fcg_opponent_specialpow = _root["specialpow_card" + cardloc];
            _root.fcg_opponent_type = _root["type_card" + cardloc];
            _root.fcg_opponent_catk += _root["catk_card" + cardloc];
            _root.fcg_opponent_cdef += _root["cdef_card" + cardloc];
            _root.fcg_opponent_chp += _root["chp_card" + cardloc];
            _root.fcg_opponent_matk += _root["matk_card" + cardloc];
            _root.fcg_opponent_mdef += _root["mdef_card" + cardloc];
            _root.fcg_opponent_mhp += _root["mhp_card" + cardloc];
            _root.fcg_opponent_crec += _root["crec_card" + cardloc];
            _root.fcg_opponent_mrec += _root["mrec_card" + cardloc];
            _root.fcg_player_catk += _root["ocatk_card" + cardloc];
            _root.fcg_player_cdef += _root["ocdef_card" + cardloc];
            _root.fcg_player_chp += _root["ochp_card" + cardloc];
            _root.fcg_player_matk += _root["omatk_card" + cardloc];
            _root.fcg_player_mdef += _root["omdef_card" + cardloc];
            _root.fcg_player_mhp += _root["omhp_card" + cardloc];
            _root.fcg_player_crec += _root["ocrec_card" + cardloc];
            _root.fcg_player_mrec += _root["omrec_card" + cardloc];
            _root.opponent_damagedealtc += _root["inflict_card" + cardloc];
            _root.fcg_player_mfreeze += _root["freeze_card" + cardloc];
            _loc3_ = 1;
            while(_loc3_ <= _root["draw_card" + cardloc])
            {
               if(_root["name_card" + cardloc] == "Code Fu")
               {
                  drawCard_opponent(1);
               }
               else if(_root["name_card" + cardloc] == "Dream Book" && _loc3_ == 1)
               {
                  drawCard_opponent(3);
               }
               else if(_root["name_card" + cardloc] == "Mystery Card")
               {
                  drawCard_opponent(2);
               }
               else
               {
                  drawCard_opponent(0);
               }
               _loc3_ = _loc3_ + 1;
            }
            _root["fcg_opponent_ene" + _root["quanta_card" + cardloc]] -= _root["req_card" + cardloc];
            _root.fcg_opponent_pil1 += _root["pil1_card" + cardloc];
            _root.fcg_opponent_pil2 += _root["pil2_card" + cardloc];
            _root.fcg_opponent_pil3 += _root["pil3_card" + cardloc];
            _root.fcg_opponent_pil4 += _root["pil4_card" + cardloc];
            _root.fcg_opponent_pil5 += _root["pil5_card" + cardloc];
            _root.fcg_opponent_ene1 += _root["ene1_card" + cardloc];
            _root.fcg_opponent_ene2 += _root["ene2_card" + cardloc];
            _root.fcg_opponent_ene3 += _root["ene3_card" + cardloc];
            _root.fcg_opponent_ene4 += _root["ene4_card" + cardloc];
            _root.fcg_opponent_ene5 += _root["ene5_card" + cardloc];
            _root.fcg_player_pil1 += _root["opil1_card" + cardloc];
            _root.fcg_player_pil2 += _root["opil2_card" + cardloc];
            _root.fcg_player_pil3 += _root["opil3_card" + cardloc];
            _root.fcg_player_pil4 += _root["opil4_card" + cardloc];
            _root.fcg_player_pil5 += _root["opil5_card" + cardloc];
            _root.fcg_player_ene1 += _root["oene1_card" + cardloc];
            _root.fcg_player_ene2 += _root["oene2_card" + cardloc];
            _root.fcg_player_ene3 += _root["oene3_card" + cardloc];
            _root.fcg_player_ene4 += _root["oene4_card" + cardloc];
            _root.fcg_player_ene5 += _root["oene5_card" + cardloc];
            fcg_opponent_recentsummon.delay = 3;
            fcg_opponent_recentsummon._alpha = 150;
            _root["exist_card" + cardloc] = 0;
            addLog("Your opponent played [" + _root["name_card" + cardloc] + "]!");
         }
         else if(cardloc == 0)
         {
            if(efullhand == 1 && _root.opponent_cardsLeft >= 8)
            {
               cardloc = 7 + random(6);
               discardCard(cardloc);
            }
         }
      }
   }
   updateText();
}
function discardCard(cardloc)
{
   if(cardloc <= 6)
   {
      if(_root["exist_card" + cardloc] == 1)
      {
         addLog("You discarded [" + _root["name_card" + cardloc] + "]!");
         _root["exist_card" + cardloc] = 0;
         _root.discards += 1;
         _root.fcg_player_crec -= 1;
         if(_root.fcg_time < 15)
         {
            _root.fcg_time += 1;
         }
         _root.fcg_player_time = 0.5;
      }
   }
   if(cardloc > 6)
   {
      if(_root["exist_card" + cardloc] == 1)
      {
         addLog("Your opponent discarded [" + _root["name_card" + cardloc] + "]!");
         _root["exist_card" + cardloc] = 0;
         _root.fcg_opponent_crec -= 1;
         if(_root.fcg_time < 15)
         {
            _root.fcg_time += 1;
         }
         _root.fcg_opponent_time = 0.5;
      }
   }
   updateText();
}
function nextTurn()
{
   damagedealtdisp.box1.text = "";
   damagedealtdisp.box2.text = "";
   damagedealtdisp.box3.text = "";
   damagedealtdisp.box4.text = "";
   genFlash1._alpha = 100;
   genFlash2._alpha = 100;
   _root.fcg_turn += 1;
   if(_root.fcg_turn < 10)
   {
      _root.fcg_time = 5.25;
   }
   else if(_root.fcg_turn < 30)
   {
      _root.fcg_time = 4.25;
   }
   else if(_root.fcg_turn < 70)
   {
      _root.fcg_time = 3.25;
   }
   else
   {
      _root.fcg_time = 3.25;
      _root.fcg_player_crec -= 1;
      _root.fcg_opponent_crec -= 1;
   }
   _root.fcg_player_time = 0.1;
   _root.fcg_opponent_time = 0.5;
   resetLog();
   addLog("Turn " + _root.fcg_turn + " started!");
   _root.fcg_player_curchp = _root.fcg_player_chp;
   _root.fcg_player_curmhp = _root.fcg_player_mhp;
   _root.fcg_opponent_curchp = _root.fcg_opponent_chp;
   _root.fcg_opponent_curmhp = _root.fcg_opponent_mhp;
   if(_root.fcg_player_crec != 0)
   {
      _root.fcg_player_chp += _root.fcg_player_crec;
      addLog("You recovered " + _root.fcg_player_crec + " HP! Your HP is now " + _root.fcg_player_chp);
   }
   if(_root.fcg_player_mrec != 0)
   {
      _root.fcg_player_mhp += _root.fcg_player_mrec;
      addLog("Your monster recovered " + _root.fcg_player_mrec + " HP! Your monster\'s HP is now " + _root.fcg_player_mhp);
   }
   if(_root.fcg_opponent_crec != 0)
   {
      _root.fcg_opponent_chp += _root.fcg_opponent_crec;
      addLog("Your opponent recovered " + _root.fcg_opponent_crec + " HP! Your opponent\'s HP is now " + _root.fcg_opponent_chp);
   }
   if(_root.fcg_opponent_mrec != 0)
   {
      _root.fcg_opponent_mhp += _root.fcg_opponent_mrec;
      addLog("Your opponent\'s monster recovered " + _root.fcg_opponent_mrec + " HP! Your opponent\'s monster\'s HP is now " + _root.fcg_opponent_mhp);
   }
   _root.player_damagedealtc += _root.fcg_player_catk;
   if(_root.fcg_player_mfreeze <= 0)
   {
      _root.player_damagedealtm += _root.fcg_player_matk;
      if(_root.fcg_player_mspecial == "Poison")
      {
         _root.fcg_opponent_crec -= _root.fcg_player_mspecialpow;
         addLog("Your monster dealt " + _root.fcg_player_mspecialpow + " Poison damage to your opponent!");
      }
   }
   _root.opponent_damagedealtc += _root.fcg_opponent_catk;
   if(_root.fcg_opponent_mfreeze <= 0)
   {
      _root.opponent_damagedealtm += _root.fcg_opponent_matk;
      if(_root.fcg_opponent_mspecial == "Poison")
      {
         _root.fcg_player_crec -= _root.fcg_opponent_mspecialpow;
         addLog("Your opponent\'s monster dealt " + _root.fcg_opponent_mspecialpow + " Poison damage to you!");
      }
   }
   _root.fcg_player_mfreeze -= 1;
   _root.fcg_opponent_mfreeze -= 1;
   if(_root.fcg_opponent_mspecial == "Lure")
   {
      _root.player_damagedealtc -= _root.fcg_opponent_mdef;
      if(_root.player_damagedealtc > _root.fcg_opponent_mhp)
      {
         _root.player_damagedealtc -= _root.fcg_opponent_mhp;
         addLog("Your opponent\'s monster took " + _root.fcg_opponent_mhp + " damage (from you) for your opponent and died.");
         _root.fcg_opponent_mhp = 0;
      }
      else if(_root.player_damagedealtc > 0)
      {
         _root.fcg_opponent_mhp -= _root.player_damagedealtc;
         addLog("Your opponent\'s monster took " + _root.player_damagedealtc + " damage (from you) for your opponent.");
         _root.player_damagedealtc = 0;
      }
   }
   if(_root.fcg_opponent_mspecial == "Lure" || _root.fcg_player_mspecial == "MonKill")
   {
      _root.player_damagedealtm -= _root.fcg_opponent_mdef;
      if(_root.player_damagedealtm > _root.fcg_opponent_mhp)
      {
         _root.player_damagedealtm -= _root.fcg_opponent_mhp;
         addLog("Your opponent\'s monster took " + _root.fcg_opponent_mhp + " damage (from your monster) for your opponent and died.");
         _root.fcg_opponent_mhp = 0;
      }
      else if(_root.player_damagedealtm > 0)
      {
         _root.fcg_opponent_mhp -= _root.player_damagedealtm;
         addLog("Your opponent\'s monster took " + _root.player_damagedealtc + " damage (from your monster) for your opponent.");
         _root.player_damagedealtm = 0;
      }
   }
   _root.player_damagedealtc -= _root.fcg_opponent_cdef;
   if(_root.player_damagedealtc > 0)
   {
      _root.fcg_opponent_chp -= _root.player_damagedealtc;
      addLog("Your opponent took " + _root.player_damagedealtc + " damage (from you)!");
   }
   _root.player_damagedealtm -= _root.fcg_opponent_cdef;
   if(_root.player_damagedealtm > 0)
   {
      _root.fcg_opponent_chp -= _root.player_damagedealtm;
      addLog("Your opponent took " + _root.player_damagedealtm + " damage (from your monster)!");
   }
   if(_root.fcg_player_mspecial == "Lure")
   {
      _root.opponent_damagedealtc -= _root.fcg_player_mdef;
      if(_root.opponent_damagedealtc > _root.fcg_player_mhp)
      {
         _root.opponent_damagedealtc -= _root.fcg_player_mhp;
         addLog("Your monster took " + _root.fcg_player_mhp + " damage (from your opponent) for you and died.");
         _root.fcg_player_mhp = 0;
      }
      else if(_root.opponent_damagedealtc > 0)
      {
         _root.fcg_player_mhp -= _root.opponent_damagedealtc;
         addLog("Your monster took " + _root.opponent_damagedealtm + " damage (from your opponent) for you.");
         _root.opponent_damagedealtc = 0;
      }
   }
   if(_root.fcg_player_mspecial == "Lure" || _root.fcg_opponent_mspecial == "MonKill")
   {
      _root.opponent_damagedealtm -= _root.fcg_player_mdef;
      if(_root.opponent_damagedealtm > _root.fcg_player_mhp)
      {
         _root.opponent_damagedealtm -= _root.fcg_player_mhp;
         addLog("Your monster took " + _root.fcg_player_mhp + " damage (from your opponent\'s monster) for you and died.");
         _root.fcg_player_mhp = 0;
      }
      else if(_root.opponent_damagedealtm > 0)
      {
         _root.fcg_player_mhp -= _root.opponent_damagedealtm;
         addLog("Your monster took " + _root.opponent_damagedealtm + " damage (from your opponent\'s monster) for you.");
         _root.opponent_damagedealtm = 0;
      }
   }
   _root.opponent_damagedealtc -= _root.fcg_player_cdef;
   if(_root.opponent_damagedealtc > 0)
   {
      _root.fcg_player_chp -= _root.opponent_damagedealtc;
      addLog("You took " + _root.opponent_damagedealtc + " damage (from your opponent)!");
   }
   _root.opponent_damagedealtm -= _root.fcg_player_cdef;
   if(_root.opponent_damagedealtm > 0)
   {
      _root.fcg_player_chp -= _root.opponent_damagedealtm;
      addLog("You took " + _root.opponent_damagedealtm + " damage (from your opponent\'s monster)!");
   }
   _root.fcgDamageDealt -= _root.fcg_opponent_chp - _root.fcg_opponent_curchp;
   if(_root.fcgDamageDealt < 0)
   {
      _root.fcgDamageDealt = 0;
   }
   damagedealtdisp.box1.text = _root.fcg_player_chp - _root.fcg_player_curchp;
   damagedealtdisp.box2.text = _root.fcg_player_mhp - _root.fcg_player_curmhp;
   damagedealtdisp.box3.text = _root.fcg_opponent_chp - _root.fcg_opponent_curchp;
   damagedealtdisp.box4.text = _root.fcg_opponent_mhp - _root.fcg_opponent_curmhp;
   var _loc2_ = 1;
   while(_loc2_ <= 4)
   {
      if(damagedealtdisp["box" + _loc2_].text == 0)
      {
         damagedealtdisp["box" + _loc2_].text = "";
      }
      if(damagedealtdisp["box" + _loc2_].text > 0)
      {
         damagedealtdisp["box" + _loc2_].text = "+" + damagedealtdisp["box" + _loc2_].text;
      }
      _loc2_ = _loc2_ + 1;
   }
   if(_root.fcg_player_mspecial == "Generator" && _root.fcg_player_mquanta != 6)
   {
      _root["fcg_player_ene" + _root.fcg_player_mquanta] += _root.fcg_player_mspecialpow;
   }
   if(_root.fcg_opponent_mspecial == "Generator" && _root.fcg_opponent_mquanta != 6)
   {
      _root["fcg_opponent_ene" + _root.fcg_opponent_mquanta] += _root.fcg_opponent_mspecialpow;
   }
   if(_root.fcg_player_mspecial == "Growth")
   {
      _root.fcg_player_matk += _root.fcg_player_mspecialpow;
      _root.fcg_player_mdef += _root.fcg_player_mspecialpow;
   }
   if(_root.fcg_opponent_mspecial == "Growth")
   {
      _root.fcg_opponent_matk += _root.fcg_opponent_mspecialpow;
      _root.fcg_opponent_mdef += _root.fcg_opponent_mspecialpow;
   }
   if(_root.fcg_player_mspecial == "GrowthA")
   {
      _root.fcg_player_matk += _root.fcg_player_mspecialpow;
   }
   if(_root.fcg_opponent_mspecial == "GrowthA")
   {
      _root.fcg_opponent_matk += _root.fcg_opponent_mspecialpow;
   }
   if(_root.fcg_player_mspecial == "GrowthD")
   {
      _root.fcg_player_mdef += _root.fcg_player_mspecialpow;
   }
   if(_root.fcg_opponent_mspecial == "GrowthD")
   {
      _root.fcg_opponent_mdef += _root.fcg_opponent_mspecialpow;
   }
   if(_root.fcg_player_mspecial == "Transform" && _root.fcg_player_mhp > 0)
   {
      card = _root.fcg_player_mspecialpow;
      if(card == 0)
      {
         card = random(maxcard) + 1;
      }
      _loc2_ = 1;
      while(_loc2_ <= 6)
      {
         if(_root.cardList[card].type != "Monster")
         {
            card = random(maxcard) + 1;
         }
         _loc2_ = _loc2_ + 1;
      }
      if(_root.cardList[card].type != "Monster")
      {
         card = 1 + random(2);
      }
      _root.fcg_player_mid = _root.cardList[card].id;
      _root.fcg_player_mquanta = _root.cardList[card].quanta;
      _root.fcg_player_mreq = _root.cardList[card].req;
      _root.fcg_player_mname = _root.cardList[card].name;
      _root.fcg_player_mdesc = _root.cardList[card].desc;
      _root.fcg_player_mupgraded = _root.cardList[card].upgraded;
      _root.fcg_player_mauthor = _root.cardList[card].author;
      _root.fcg_player_mspecial = _root.cardList[card].special;
      _root.fcg_player_mspecialpow = _root.cardList[card].specialpow;
      _root.fcg_player_special = _root.cardList[card].special;
      _root.fcg_player_specialpow = _root.cardList[card].specialpow;
      _root.fcg_player_mexist = 1;
      _root.fcg_player_mhp = _root.cardList[card].hp;
      _root.fcg_player_matk = _root.cardList[card].atk;
      _root.fcg_player_mdef = _root.cardList[card].def;
      _root.fcg_player_catk += _root.cardList[card].catk;
      _root.fcg_player_cdef += _root.cardList[card].cdef;
      _root.fcg_player_chp += _root.cardList[card].chp;
      _root.fcg_player_crec += _root.cardList[card].crec;
      _root.fcg_player_mrec = _root.cardList[card].mrec;
      _root.fcg_opponent_mhp += _root.cardList[card].omhp;
      _root.fcg_opponent_matk += _root.cardList[card].omatk;
      _root.fcg_opponent_mdef += _root.cardList[card].omdef;
      _root.fcg_opponent_catk += _root.cardList[card].ocatk;
      _root.fcg_opponent_cdef += _root.cardList[card].ocdef;
      _root.fcg_opponent_chp += _root.cardList[card].ochp;
      _root.fcg_opponent_crec += _root.cardList[card].ocrec;
      _root.fcg_opponent_mrec += _root.cardList[card].omrec;
      _root.player_damagedealtc += _root.cardList[card].inflict;
      _root.fcg_opponent_mfreeze += _root.cardList[card].freeze;
      var _loc3_ = 1;
      while(_loc3_ <= _root.cardList[card].draw)
      {
         drawCard(0);
         _loc3_ = _loc3_ + 1;
      }
      _root.fcg_player_pil1 += _root.cardList[card].pil1;
      _root.fcg_player_pil2 += _root.cardList[card].pil2;
      _root.fcg_player_pil3 += _root.cardList[card].pil3;
      _root.fcg_player_pil4 += _root.cardList[card].pil4;
      _root.fcg_player_pil5 += _root.cardList[card].pil5;
      _root.fcg_player_ene1 += _root.cardList[card].ene1;
      _root.fcg_player_ene2 += _root.cardList[card].ene2;
      _root.fcg_player_ene3 += _root.cardList[card].ene3;
      _root.fcg_player_ene4 += _root.cardList[card].ene4;
      _root.fcg_player_ene5 += _root.cardList[card].ene5;
      _root.fcg_opponent_pil1 += _root.cardList[card].opil1;
      _root.fcg_opponent_pil2 += _root.cardList[card].opil2;
      _root.fcg_opponent_pil3 += _root.cardList[card].opil3;
      _root.fcg_opponent_pil4 += _root.cardList[card].opil4;
      _root.fcg_opponent_pil5 += _root.cardList[card].opil5;
      _root.fcg_opponent_ene1 += _root.cardList[card].oene1;
      _root.fcg_opponent_ene2 += _root.cardList[card].oene2;
      _root.fcg_opponent_ene3 += _root.cardList[card].oene3;
      _root.fcg_opponent_ene4 += _root.cardList[card].oene4;
      _root.fcg_opponent_ene5 += _root.cardList[card].oene5;
   }
   if(_root.fcg_opponent_mspecial == "Transform" && _root.fcg_opponent_mhp > 0)
   {
      card = _root.fcg_opponent_mspecialpow;
      if(card == 0)
      {
         card = random(maxcard) + 1;
      }
      if(card == 0)
      {
         card = random(maxcard) + 1;
      }
      _loc2_ = 1;
      while(_loc2_ <= 6)
      {
         if(_root.cardList[card].type != "Monster")
         {
            card = random(maxcard) + 1;
         }
         _loc2_ = _loc2_ + 1;
      }
      if(_root.cardList[card].type != "Monster")
      {
         card = 1 + random(2);
      }
      _root.fcg_opponent_mid = _root.cardList[card].id;
      _root.fcg_opponent_mquanta = _root.cardList[card].quanta;
      _root.fcg_opponent_mreq = _root.cardList[card].req;
      _root.fcg_opponent_mname = _root.cardList[card].name;
      _root.fcg_opponent_mdesc = _root.cardList[card].desc;
      _root.fcg_opponent_mupgraded = _root.cardList[card].upgraded;
      _root.fcg_opponent_mauthor = _root.cardList[card].author;
      _root.fcg_opponent_mspecial = _root.cardList[card].special;
      _root.fcg_opponent_mspecialpow = _root.cardList[card].specialpow;
      _root.fcg_opponent_special = _root.cardList[card].special;
      _root.fcg_opponent_specialpow = _root.cardList[card].specialpow;
      _root.fcg_opponent_mexist = 1;
      _root.fcg_opponent_mhp = _root.cardList[card].hp;
      _root.fcg_opponent_matk = _root.cardList[card].atk;
      _root.fcg_opponent_mdef = _root.cardList[card].def;
      _root.fcg_opponent_catk += _root.cardList[card].catk;
      _root.fcg_opponent_cdef += _root.cardList[card].cdef;
      _root.fcg_opponent_chp += _root.cardList[card].chp;
      _root.fcg_opponent_crec += _root.cardList[card].crec;
      _root.fcg_opponent_mrec = _root.cardList[card].mrec;
      _root.fcg_player_mhp += _root.cardList[card].omhp;
      _root.fcg_player_matk += _root.cardList[card].omatk;
      _root.fcg_player_mdef += _root.cardList[card].omdef;
      _root.fcg_player_catk += _root.cardList[card].ocatk;
      _root.fcg_player_cdef += _root.cardList[card].ocdef;
      _root.fcg_player_chp += _root.cardList[card].ochp;
      _root.fcg_player_crec += _root.cardList[card].ocrec;
      _root.fcg_player_mrec += _root.cardList[card].omrec;
      _root.opponent_damagedealtc += _root.cardList[card].inflict;
      _root.fcg_player_mfreeze += _root.cardList[card].freeze;
      _loc3_ = 1;
      while(_loc3_ <= _root.cardList[card].draw)
      {
         drawCard(0);
         _loc3_ = _loc3_ + 1;
      }
      _root.fcg_opponent_pil1 += _root.cardList[card].pil1;
      _root.fcg_opponent_pil2 += _root.cardList[card].pil2;
      _root.fcg_opponent_pil3 += _root.cardList[card].pil3;
      _root.fcg_opponent_pil4 += _root.cardList[card].pil4;
      _root.fcg_opponent_pil5 += _root.cardList[card].pil5;
      _root.fcg_opponent_ene1 += _root.cardList[card].ene1;
      _root.fcg_opponent_ene2 += _root.cardList[card].ene2;
      _root.fcg_opponent_ene3 += _root.cardList[card].ene3;
      _root.fcg_opponent_ene4 += _root.cardList[card].ene4;
      _root.fcg_opponent_ene5 += _root.cardList[card].ene5;
      _root.fcg_player_pil1 += _root.cardList[card].opil1;
      _root.fcg_player_pil2 += _root.cardList[card].opil2;
      _root.fcg_player_pil3 += _root.cardList[card].opil3;
      _root.fcg_player_pil4 += _root.cardList[card].opil4;
      _root.fcg_player_pil5 += _root.cardList[card].opil5;
      _root.fcg_player_ene1 += _root.cardList[card].oene1;
      _root.fcg_player_ene2 += _root.cardList[card].oene2;
      _root.fcg_player_ene3 += _root.cardList[card].oene3;
      _root.fcg_player_ene4 += _root.cardList[card].oene4;
      _root.fcg_player_ene5 += _root.cardList[card].oene5;
   }
   damagedealtdisp._alpha = 100;
   _root.fcg_opponent_killdelay += 2;
   _root.player_damagedealtc = 0;
   _root.opponent_damagedealtc = 0;
   _root.player_damagedealtm = 0;
   _root.opponent_damagedealtm = 0;
   xcardloc = 1;
   _loc2_ = 1;
   while(_loc2_ <= 6)
   {
      if(_root["exist_card" + xcardloc] == 1)
      {
         xcardloc += 1;
      }
      _loc2_ = _loc2_ + 1;
   }
   if(xcardloc > 6 && _root.player_cardsLeft > 0)
   {
      _root.fcg_player_crec -= 1;
      addLog("Your hand is full. You took 1 poison damage.");
   }
   if(_root.player_cardsLeft <= 0)
   {
      _root.fcg_player_crec -= 1;
      addLog("Your decked out. You took 1 poison damage.");
   }
   _root.fullHandX = xcardloc;
   xcardloc = 7;
   _loc2_ = 1;
   while(_loc2_ <= 6)
   {
      if(_root["exist_card" + xcardloc] == 1)
      {
         xcardloc += 1;
      }
      _loc2_ = _loc2_ + 1;
   }
   if(xcardloc > 12 && _root.opponent_cardsLeft > 0)
   {
      _root.fcg_opponent_crec -= 1;
      addLog("Your opponent\'s hand is full. Your opponent took 1 poison damage.");
   }
   if(_root.opponent_cardsLeft <= 0)
   {
      _root.fcg_opponent_crec -= 1;
      addLog("Your opponent decked out. Your opponent took 1 poison damage.");
   }
   _loc2_ = 1;
   while(_loc2_ <= 5)
   {
      _root["fcg_player_ene" + _loc2_] += _root["fcg_player_pil" + _loc2_];
      _root["fcg_opponent_ene" + _loc2_] += _root["fcg_opponent_pil" + _loc2_];
      _loc2_ = _loc2_ + 1;
   }
   drawCard(0);
   drawCard_opponent(0);
   updateText();
}
holding = [0,0,0,0,0,0,0,0,0,0];
if(_root.fcg_opponentlevel == 5 && _root.fcg_challenged == true)
{
   _root.power1Active = false;
   _root.power2Active = false;
   _root.power3Active = false;
   _root.power4Active = false;
   _root.power5Active = false;
   _root.power6Active = false;
   _root.power7Active = false;
   _root.power8Active = false;
}
_root.fullHandX = 0;
if(_root.fcg_epic < 1)
{
   _root.save.fcgPlay += 1;
}
kongName = _root.kongregate_username;
if(kongName == undefined || kongName == "Guest")
{
   kongName = _root.save.displayName;
}
userName1.text = kongName;
userName2.text = "Guest";
_root.fcg_dep = 1;
_root.fcg_player_mexist = 0;
_root.fcg_opponent_mexist = 0;
_root.fcg_opponent_killdelay = 0;
_root.discards = 0;
_root.forfeit = false;
_root.atie = false;
_root.fcgDamageDealt = 0;
i = 1;
while(i <= 12)
{
   _root["exist_card" + i] = 0;
   i++;
}
_root.fcg_player_catk = 0;
if(_root.power3Active == true)
{
   _root.fcg_player_catk += 5;
}
_root.fcg_player_cdef = 0;
_root.fcg_player_chp = 80;
if(_root.saveid == 25 && _root.fcg_opponentlevel == 10)
{
   _root.fcg_player_chp = challengeHP;
}
if(_root.power2Active == true)
{
   _root.fcg_player_chp += 20;
}
_root.fcg_player_crec = 0;
_root.fcg_player_matk = 0;
_root.fcg_player_mdef = 0;
_root.fcg_player_mhp = 0;
_root.fcg_player_mrec = 0;
_root.fcg_player_mfreeze = 0;
_root.fcg_player_mspecial = "";
_root.fcg_opponent_catk = 0;
_root.fcg_opponent_cdef = 0;
_root.fcg_opponent_crec = 0;
_root.fcg_opponent_chp = 80;
if(_root.fcg_opponentlevel == 0)
{
   _root.fcg_opponent_chp = 50;
}
if(_root.fcg_opponentlevel >= 7 || _root.fcg_epic >= 3)
{
   _root.fcg_opponent_chp = 200;
}
if(_root.fcg_opponentlevel == 9)
{
   _root.fcg_opponent_chp = 50 + 35 * (11 - _root.save.fcgLegendLife);
}
if(_root.fcg_epic >= 4)
{
   _root.fcg_opponent_chp = 400;
}
chppenalty = 0;
if(_root.fcg_opponentlevel != 5 && _root.fcg_epic < 1 && _root.fcg_opponentlevel != 9)
{
   chppenalty = _root.save["fcgStreak" + _root.fcg_opponentlevel];
   if(chppenalty > 100)
   {
      chppenalty = 100;
   }
   if(_root.fcg_opponentlevel == 10)
   {
      chppenalty = _root.save["fcgStreak" + _root.fcg_opponentlevel] * 25;
      if(chppenalty > 800)
      {
         chppenalty = 800;
      }
   }
}
if(_root.fcg_opponentlevel == 8)
{
   chppenalty = _root.save.fcgStreak8 * 10;
   if(chppenalty > 300)
   {
      chppenalty = 300;
   }
}
_root.fcg_opponent_chp += chppenalty;
if(_root.saveid == 25 && _root.fcg_opponentlevel == 10)
{
   if(_root.save.fcgChallenge5[enemy_deck] == 0 && enemy_deck != 69)
   {
      _root.fcg_opponent_chp = 120;
   }
   else if(_root.save.fcgChallenge5[enemy_deck] == 1 || enemy_deck == 69)
   {
      _root.fcg_opponent_chp = 180;
   }
   else
   {
      _root.fcg_opponent_chp = 600;
   }
}
_root.fcg_opponent_matk = 0;
_root.fcg_opponent_mdef = 0;
_root.fcg_opponent_mhp = 0;
_root.fcg_opponent_mrec = 0;
_root.fcg_opponent_mfreeze = 0;
_root.fcg_opponent_mspecial = "";
_root.player_damagedealtc = 0;
_root.opponent_damagedealtc = 0;
_root.player_damagedealtm = 0;
_root.opponent_damagedealtm = 0;
_root.fcg_player_ene6 = 99;
_root.fcg_opponent_ene6 = 99;
i = 1;
while(i <= 5)
{
   _root["fcg_player_pil" + i] = 1;
   _root["fcg_player_ene" + i] = 1;
   _root["fcg_opponent_pil" + i] = 1;
   _root["fcg_opponent_ene" + i] = 1;
   if(_root.power1Active == true)
   {
      _root["fcg_player_ene" + i] += 1;
   }
   if(_root.power5Active == true)
   {
      _root["fcg_player_pil" + i] += 1;
   }
   if(_root.fcg_opponentlevel >= 6 || _root.fcg_epic >= 2)
   {
      _root["fcg_opponent_pil" + i] = 2;
      _root["fcg_opponent_ene" + i] = 2;
   }
   if(_root.fcg_opponentlevel >= 7 || _root.fcg_epic >= 3)
   {
      _root["fcg_opponent_pil" + i] = 3;
      _root["fcg_opponent_ene" + i] = 3;
   }
   i++;
}
_root.fcg_turn = 1;
_root.fcg_time = 10;
_root.fcg_player_time = 0;
_root.fcg_opponent_time = 0;
_root.player_totalcards = 0;
_root.opponent_totalcards = 0;
if(_root.enemy_randomdeck == true || isNaN(enemy_deck))
{
   enemy_deck = 1;
}
if(_root.enemy_randomdeck == false)
{
   userName2.text = _root.deckList[enemy_deck].deckname;
}
else
{
   userName2.text = "???";
}
if(_root.fcg_opponentlevel == 1)
{
   userName2.text = "Level 1";
}
if(_root.fcg_opponentlevel == 2)
{
   userName2.text = "Level 2";
}
if(_root.fcg_opponentlevel == 3)
{
   userName2.text = "Level 3";
}
if(_root.fcg_opponentlevel == 4)
{
   userName2.text = "Level 4";
}
if(_root.fcg_epic >= 1 || _root.fcg_opponentlevel == 5)
{
   userName2.text = "PvP";
}
if(_root.fcg_challenged == true)
{
   userName2.text = "Challenger";
}
playerDeckArray = [zeroItem];
enemyDeckArray = [zeroItem];
i = 1;
while(i <= maxcard)
{
   ac = _root.save.fcgDeck[i];
   if(ac == undefined || ac < 0)
   {
      ac = 0;
   }
   if(ac >= 1)
   {
      _root.player_totalcards += ac;
      k = 1;
      while(k <= ac)
      {
         playerDeckArray.push(i);
         if(_root.fcg_opponentlevel == 8)
         {
            enemyDeckArray.push(i);
            _root.opponent_totalcards += 1;
            enemyDeckArray.push(i);
            _root.opponent_totalcards += 1;
         }
         k++;
      }
   }
   if(_root.fcg_opponentlevel != 8)
   {
      ac = _root.deckList[enemy_deck]["c" + i];
      if(_root.fcg_epic >= 1)
      {
         ac = _root["fcg_epic" + i];
      }
      if(_root.fcg_opponentlevel >= 6 || _root.fcg_epic >= 2)
      {
         ac *= 2;
      }
      if(ac == undefined || ac < 0)
      {
         ac = 0;
      }
      if(ac >= 1)
      {
         _root.opponent_totalcards += ac;
         k = 1;
         while(k <= ac)
         {
            if(_root.fcg_opponentlevel == 5 && Math.random() < 0.2)
            {
               enemyDeckArray.push(random(maxcard) + 1);
            }
            else
            {
               enemyDeckArray.push(i);
            }
            k++;
         }
      }
      if(_root.fcg_opponentlevel == 3 || _root.fcg_opponentlevel == 4)
      {
         ac = _root.deckList[enemy_deckhyb]["c" + i];
         if(ac == undefined || ac < 0)
         {
            ac = 0;
         }
         if(ac >= 1)
         {
            _root.opponent_totalcards += ac;
            k = 1;
            while(k <= ac)
            {
               if(Math.random() < 0.25)
               {
                  _root.opponent_totalcards -= 1;
               }
               else if(_root.fcg_opponentlevel == 3 && Math.random() < 0.1)
               {
                  enemyDeckArray.push(Math.ceil((random(maxcard) + 1) / 2) * 2 - 1);
               }
               else if(_root.fcg_opponentlevel == 4 && Math.random() < 0.1)
               {
                  enemyDeckArray.push(Math.ceil((random(maxcard) + 1) / 2) * 2);
               }
               else if(_root.fcg_opponentlevel == 3 && Math.random() < 0.5)
               {
                  enemyDeckArray.push(i + 1);
               }
               else
               {
                  enemyDeckArray.push(i);
               }
               k++;
            }
         }
      }
   }
   i++;
}
if(_root.fcg_opponentlevel == 8)
{
   rMax = _root.save.fcgStreak8 + 5;
   if(rMax > 55)
   {
      rMax = 55;
   }
   k = 1;
   while(k <= rMax)
   {
      card = random(maxcard) + 1;
      if(Math.ceil(card / 2) != card / 2)
      {
         card += 1;
      }
      playerDeckArray.push(card);
      enemyDeckArray.push(card);
      enemyDeckArray.push(card);
      _root.player_totalcards += 1;
      _root.opponent_totalcards += 2;
      k++;
   }
}
i = 1;
while(i <= _root.player_totalcards)
{
   j = random(_root.player_totalcards) + 1;
   playerDeckArray[0] = playerDeckArray[i];
   playerDeckArray[i] = playerDeckArray[j];
   playerDeckArray[j] = playerDeckArray[0];
   i++;
}
i = 1;
while(i <= _root.opponent_totalcards)
{
   j = random(_root.opponent_totalcards) + 1;
   enemyDeckArray[0] = enemyDeckArray[i];
   enemyDeckArray[i] = enemyDeckArray[j];
   enemyDeckArray[j] = enemyDeckArray[0];
   i++;
}
if(_root.save.fcgRandomDeck == true)
{
   _root.player_totalcards = random(20) + 40;
}
if(_root.enemy_randomdeck == true)
{
   _root.opponent_totalcards = random(20) + 40;
}
_root.player_cardsDrawn = 0;
_root.player_cardsLeft = _root.player_totalcards;
_root.opponent_cardsDrawn = 0;
_root.opponent_cardsLeft = _root.opponent_totalcards;
delay = 0;
if(isNaN(_root.fps))
{
   _root.fps = 40;
}
z = 1;
while(z <= 3)
{
   drawCard(0);
   drawCard_opponent(0);
   z++;
}
if(_root.power4Active == true)
{
   drawCard(4);
}
if(_root.power6Active == true)
{
   drawCard(5);
}
onEnterFrame = function()
{
   i = 0;
   while(i <= 9)
   {
      if((Key.isDown(48 + i) || Key.isDown(96 + i) || Key.isDown(223) && i == 0) && _root.optionsScreen._currentframe == 1)
      {
         holding[i] += 1;
         j = 0;
         while(j <= 9)
         {
            if(j != i)
            {
               holding[j] = 0;
            }
            j++;
         }
      }
      else
      {
         holding[i] = 0;
      }
      i++;
   }
   if(_root.saveid == 22)
   {
      _root.fcg_player_cdef = 0;
      _root.fcg_player_mdef = 0;
   }
   if(_root.fcg_player_time > -0.5 || _root.fcg_opponent_time > -0.5)
   {
      _root.fcg_time -= 1 / _root.fps;
   }
   else
   {
      _root.fcg_time -= _root.save.fcgSpeed / 10 / _root.fps;
   }
   _root.fcg_player_time -= 1 / _root.fps;
   _root.fcg_opponent_time -= 1 / _root.fps;
   if(_root.fcg_time <= 0)
   {
      nextTurn();
   }
   playerDeckText.text = "Deck: " + _root.player_cardsLeft + " cards left";
   enemyDeckText.text = "Deck: " + _root.opponent_cardsLeft + " cards left";
   if(_root.player_cardsLeft < 10)
   {
      playerDeckText.textColor = 16711680;
   }
   if(_root.opponent_cardsLeft < 10)
   {
      enemyDeckText.textColor = 16711680;
   }
   if(_root.player_cardsLeft <= 0)
   {
      playerDeckText.text = "Decked out";
   }
   if(_root.opponent_cardsLeft <= 0)
   {
      enemyDeckText.text = "Decked out";
   }
   turnText.text = "Turn #" + _root.fcg_turn;
   timeText.text = Math.ceil(_root.fcg_time - 0.25);
   if(_root.save.fcgSpeed == 30)
   {
      speedText.text = "3.0x";
   }
   else if(_root.save.fcgSpeed == 20)
   {
      speedText.text = "2.0x";
   }
   else if(_root.save.fcgSpeed == 15)
   {
      speedText.text = "1.5x";
   }
   else if(_root.save.fcgSpeed == 12)
   {
      speedText.text = "1.2x";
   }
   else if(_root.save.fcgSpeed == 10)
   {
      speedText.text = "1.0x";
   }
   delay += 1;
   if(delay > 2)
   {
      delay = 0;
      if(_root.fcg_player_time > -0.5 || _root.fcg_opponent_time > -0.5)
      {
         if(Math.random() < 3 / _root.fps)
         {
            summonCard(1337);
         }
      }
      else if(Math.random() < 0.3 * _root.save.fcgSpeed / _root.fps)
      {
         summonCard(1337);
      }
      if(_root.fcg_player_chp > 200)
      {
         _root.fcg_player_chp = 200;
         updateText();
      }
      if(_root.fcg_opponent_chp > 200 && _root.fcg_opponentlevel <= 6)
      {
         _root.fcg_opponent_chp = 200;
         updateText();
      }
      if(_root.fcg_opponent_chp > 300 && _root.fcg_opponentlevel <= 7)
      {
         _root.fcg_opponent_chp = 300;
         updateText();
      }
      if(_root.fcg_opponent_chp > 500 && _root.fcg_opponentlevel <= 9)
      {
         _root.fcg_opponent_chp = 500;
         updateText();
      }
      if(_root.fcg_opponent_chp > 999)
      {
         _root.fcg_opponent_chp = 999;
         updateText();
      }
      i = 1;
      while(i <= 5)
      {
         if(_root["fcg_player_pil" + i] > 99)
         {
            _root["fcg_player_pil" + i] = 99;
            updateText();
         }
         if(_root["fcg_player_ene" + i] > 99)
         {
            _root["fcg_player_ene" + i] = 99;
            updateText();
         }
         if(_root["fcg_opponent_pil" + i] > 99)
         {
            _root["fcg_opponent_pil" + i] = 99;
            updateText();
         }
         if(_root["fcg_opponent_ene" + i] > 99)
         {
            _root["fcg_opponent_ene" + i] = 99;
            updateText();
         }
         i++;
      }
      if(_root.fcg_player_special != "" || _root.fcg_opponent_special != "")
      {
         if(_root.fcg_opponent_special == "Generator")
         {
            _root.fcg_opponent_mspecial = "Generator";
            _root.fcg_opponent_mspecialpow = _root.fcg_opponent_specialpow;
            _root.fcg_opponent_special = "";
            _root.fcg_opponent_specialpow = 0;
         }
         if(_root.fcg_player_special == "Generator")
         {
            _root.fcg_player_mspecial = "Generator";
            _root.fcg_player_mspecialpow = _root.fcg_player_specialpow;
            _root.fcg_player_special = "";
            _root.fcg_player_specialpow = 0;
         }
         if(_root.fcg_opponent_special == "Poison")
         {
            _root.fcg_opponent_mspecial = "Poison";
            _root.fcg_opponent_mspecialpow = _root.fcg_opponent_specialpow;
            _root.fcg_opponent_special = "";
            _root.fcg_opponent_specialpow = 0;
         }
         if(_root.fcg_player_special == "Poison")
         {
            _root.fcg_player_mspecial = "Poison";
            _root.fcg_player_mspecialpow = _root.fcg_player_specialpow;
            _root.fcg_player_special = "";
            _root.fcg_player_specialpow = 0;
         }
         if(_root.fcg_opponent_special == "Growth")
         {
            _root.fcg_opponent_mspecial = "Growth";
            _root.fcg_opponent_mspecialpow = _root.fcg_opponent_specialpow;
            _root.fcg_opponent_special = "";
            _root.fcg_opponent_specialpow = 0;
         }
         if(_root.fcg_player_special == "Growth")
         {
            _root.fcg_player_mspecial = "Growth";
            _root.fcg_player_mspecialpow = _root.fcg_player_specialpow;
            _root.fcg_player_special = "";
            _root.fcg_player_specialpow = 0;
         }
         if(_root.fcg_opponent_special == "GrowthA")
         {
            _root.fcg_opponent_mspecial = "GrowthA";
            _root.fcg_opponent_mspecialpow = _root.fcg_opponent_specialpow;
            _root.fcg_opponent_special = "";
            _root.fcg_opponent_specialpow = 0;
         }
         if(_root.fcg_player_special == "GrowthA")
         {
            _root.fcg_player_mspecial = "GrowthA";
            _root.fcg_player_mspecialpow = _root.fcg_player_specialpow;
            _root.fcg_player_special = "";
            _root.fcg_player_specialpow = 0;
         }
         if(_root.fcg_opponent_special == "GrowthD")
         {
            _root.fcg_opponent_mspecial = "GrowthD";
            _root.fcg_opponent_mspecialpow = _root.fcg_opponent_specialpow;
            _root.fcg_opponent_special = "";
            _root.fcg_opponent_specialpow = 0;
         }
         if(_root.fcg_player_special == "GrowthD")
         {
            _root.fcg_player_mspecial = "GrowthD";
            _root.fcg_player_mspecialpow = _root.fcg_player_specialpow;
            _root.fcg_player_special = "";
            _root.fcg_player_specialpow = 0;
         }
         if(_root.fcg_opponent_special == "Transform")
         {
            _root.fcg_opponent_mspecial = "Transform";
            _root.fcg_opponent_mspecialpow = _root.fcg_opponent_specialpow;
            _root.fcg_opponent_special = "";
            _root.fcg_opponent_specialpow = 0;
         }
         if(_root.fcg_player_special == "Transform")
         {
            _root.fcg_player_mspecial = "Transform";
            _root.fcg_player_mspecialpow = _root.fcg_player_specialpow;
            _root.fcg_player_special = "";
            _root.fcg_player_specialpow = 0;
         }
         if(_root.fcg_opponent_special == "Mutate")
         {
            if(_root.fcg_opponent_mhp > 0)
            {
               _root.fcg_opponent_mhp = 0;
               _root.fcg_opponent_mspecial = "Rebirth";
               _root.fcg_opponent_mspecialpow = _root.fcg_opponent_specialpow;
               _root.fcg_opponent_special = "";
               _root.fcg_opponent_specialpow = 0;
            }
         }
         if(_root.fcg_player_special == "Mutate")
         {
            if(_root.fcg_player_mhp > 0)
            {
               _root.fcg_player_mhp = 0;
               _root.fcg_player_mspecial = "Rebirth";
               _root.fcg_player_mspecialpow = _root.fcg_player_specialpow;
               _root.fcg_player_special = "";
               _root.fcg_player_specialpow = 0;
            }
         }
         if(_root.fcg_opponent_special == "Rebirth")
         {
            if(_root.fcg_opponent_mhp > 0)
            {
               _root.fcg_opponent_mspecial = "Rebirth";
               _root.fcg_opponent_mspecialpow = _root.fcg_opponent_specialpow;
               _root.fcg_opponent_special = "";
               _root.fcg_opponent_specialpow = 0;
            }
         }
         if(_root.fcg_player_special == "Rebirth")
         {
            if(_root.fcg_player_mhp > 0)
            {
               _root.fcg_player_mspecial = "Rebirth";
               _root.fcg_player_mspecialpow = _root.fcg_player_specialpow;
               _root.fcg_player_special = "";
               _root.fcg_player_specialpow = 0;
            }
         }
         if(_root.fcg_opponent_special == "Lure")
         {
            _root.fcg_opponent_mspecial = "Lure";
            _root.fcg_opponent_mspecialpow = _root.fcg_opponent_specialpow;
            _root.fcg_opponent_special = "";
            _root.fcg_opponent_specialpow = 0;
         }
         if(_root.fcg_player_special == "Lure")
         {
            _root.fcg_player_mspecial = "Lure";
            _root.fcg_player_mspecialpow = _root.fcg_player_specialpow;
            _root.fcg_player_special = "";
            _root.fcg_player_specialpow = 0;
         }
         if(_root.fcg_opponent_special == "MonKill")
         {
            _root.fcg_opponent_mspecial = "MonKill";
            _root.fcg_opponent_mspecialpow = _root.fcg_opponent_specialpow;
            _root.fcg_opponent_special = "";
            _root.fcg_opponent_specialpow = 0;
         }
         if(_root.fcg_player_special == "MonKill")
         {
            _root.fcg_player_mspecial = "MonKill";
            _root.fcg_player_mspecialpow = _root.fcg_player_specialpow;
            _root.fcg_player_special = "";
            _root.fcg_player_specialpow = 0;
         }
         if(_root.fcg_opponent_special == "MonKill")
         {
            _root.fcg_opponent_mspecial = "MonKill";
            _root.fcg_opponent_mspecialpow = _root.fcg_opponent_specialpow;
            _root.fcg_opponent_special = "";
            _root.fcg_opponent_specialpow = 0;
         }
         if(_root.fcg_player_special == "NoSkill")
         {
            _root.fcg_opponent_mspecial = "";
            _root.fcg_player_special = "";
            _root.fcg_player_specialpow = 0;
            _root.fcg_player_specialpow = 0;
         }
         if(_root.fcg_opponent_special == "NoSkill")
         {
            _root.fcg_player_mspecial = "";
            _root.fcg_opponent_special = "";
            _root.fcg_player_specialpow = 0;
            _root.fcg_opponent_specialpow = 0;
         }
         if(_root.fcg_opponent_special == "Sacrifice")
         {
            _root.fcg_opponent_chp += _root.fcg_opponent_mhp;
            _root.fcg_opponent_catk += _root.fcg_opponent_matk;
            _root.fcg_opponent_cdef += _root.fcg_opponent_mdef;
            _root.fcg_opponent_mhp = 0;
            _root.fcg_opponent_special = "";
            _root.fcg_opponent_specialpow = 0;
         }
         if(_root.fcg_player_special == "Sacrifice")
         {
            _root.fcg_player_chp += _root.fcg_player_mhp;
            _root.fcg_player_catk += _root.fcg_player_matk;
            _root.fcg_player_cdef += _root.fcg_player_mdef;
            _root.fcg_player_mhp = 0;
            _root.fcg_player_special = "";
            _root.fcg_player_specialpow = 0;
         }
         if(_root.fcg_opponent_special == "Destroy")
         {
            _root.fcg_player_mhp = 0;
            _root.fcg_opponent_special = "";
            _root.fcg_opponent_specialpow = 0;
         }
         if(_root.fcg_player_special == "Destroy")
         {
            _root.fcg_opponent_mhp = 0;
            _root.fcg_player_special = "";
            _root.fcg_player_specialpow = 0;
         }
         if(_root.fcg_opponent_special == "Absorb")
         {
            _root.fcg_opponent_chp += _root.fcg_player_mhp;
            _root.fcg_player_mhp = 0;
            _root.fcg_opponent_special = "";
            _root.fcg_opponent_specialpow = 0;
         }
         if(_root.fcg_player_special == "Absorb")
         {
            _root.fcg_player_chp += _root.fcg_opponent_mhp;
            _root.fcg_opponent_mhp = 0;
            _root.fcg_player_special = "";
            _root.fcg_player_specialpow = 0;
         }
         if(_root.fcg_opponent_special == "Unfreeze")
         {
            _root.fcg_opponent_mfreeze = 0;
            _root.fcg_opponent_special = "";
            _root.fcg_opponent_specialpow = 0;
         }
         if(_root.fcg_player_special == "Unfreeze")
         {
            _root.fcg_player_mfreeze = 0;
            _root.fcg_player_special = "";
            _root.fcg_player_specialpow = 0;
         }
         if(_root.fcg_opponent_special == "Antidote")
         {
            _root.fcg_opponent_crec = 0;
            _root.fcg_opponent_special = "";
            _root.fcg_opponent_specialpow = 0;
         }
         if(_root.fcg_player_special == "Antidote")
         {
            _root.fcg_player_crec = 0;
            _root.fcg_player_special = "";
            _root.fcg_player_specialpow = 0;
         }
         if(_root.fcg_opponent_special == "Zombify")
         {
            if(_root.fcg_player_crec > 0)
            {
               _root.fcg_player_crec -= Math.floor(_root.fcg_player_crec / 2 + 0.001);
            }
            _root.fcg_player_crec -= 2;
            _root.fcg_opponent_special = "";
            _root.fcg_opponent_specialpow = 0;
         }
         if(_root.fcg_player_special == "Zombify")
         {
            if(_root.fcg_opponent_crec > 0)
            {
               _root.fcg_opponent_crec -= Math.floor(_root.fcg_opponent_crec / 2 + 0.001);
            }
            _root.fcg_opponent_crec -= 2;
            _root.fcg_player_special = "";
            _root.fcg_player_specialpow = 0;
         }
         if(_root.fcg_opponent_special == "NoRegen")
         {
            _root.fcg_player_crec = 0;
            _root.fcg_opponent_special = "";
            _root.fcg_opponent_specialpow = 0;
         }
         if(_root.fcg_player_special == "NoRegen")
         {
            _root.fcg_opponent_crec = 0;
            _root.fcg_player_special = "";
            _root.fcg_player_specialpow = 0;
         }
      }
      if(_root.fcg_player_mhp <= 0)
      {
         if(_root.fcg_player_mspecial == "Rebirth")
         {
            card = _root.fcg_player_mspecialpow;
            if(card == 0)
            {
               card = random(maxcard) + 1;
            }
            i = 1;
            while(i <= 6)
            {
               if(_root.cardList[card].type != "Monster")
               {
                  card = random(maxcard) + 1;
               }
               i++;
            }
            if(_root.cardList[card].type != "Monster")
            {
               card = 1 + random(2);
            }
            _root.fcg_player_mid = _root.cardList[card].id;
            _root.fcg_player_mquanta = _root.cardList[card].quanta;
            _root.fcg_player_mreq = _root.cardList[card].req;
            _root.fcg_player_mname = _root.cardList[card].name;
            _root.fcg_player_mdesc = _root.cardList[card].desc;
            _root.fcg_player_mupgraded = _root.cardList[card].upgraded;
            _root.fcg_player_mauthor = _root.cardList[card].author;
            _root.fcg_player_mspecial = _root.cardList[card].special;
            _root.fcg_player_mspecialpow = _root.cardList[card].specialpow;
            _root.fcg_player_special = _root.cardList[card].special;
            _root.fcg_player_specialpow = _root.cardList[card].specialpow;
            _root.fcg_player_mexist = 1;
            _root.fcg_player_mhp = _root.cardList[card].hp;
            _root.fcg_player_matk = _root.cardList[card].atk;
            _root.fcg_player_mdef = _root.cardList[card].def;
            _root.fcg_player_catk += _root.cardList[card].catk;
            _root.fcg_player_cdef += _root.cardList[card].cdef;
            _root.fcg_player_chp += _root.cardList[card].chp;
            _root.fcg_player_crec += _root.cardList[card].crec;
            _root.fcg_player_mrec = _root.cardList[card].mrec;
            _root.fcg_opponent_mhp += _root.cardList[card].omhp;
            _root.fcg_opponent_matk += _root.cardList[card].omatk;
            _root.fcg_opponent_mdef += _root.cardList[card].omdef;
            _root.fcg_opponent_catk += _root.cardList[card].ocatk;
            _root.fcg_opponent_cdef += _root.cardList[card].ocdef;
            _root.fcg_opponent_chp += _root.cardList[card].ochp;
            _root.fcg_opponent_crec += _root.cardList[card].ocrec;
            _root.fcg_opponent_mrec += _root.cardList[card].omrec;
            _root.player_damagedealtc += _root.cardList[card].inflict;
            _root.fcg_opponent_mfreeze += _root.cardList[card].freeze;
            f = 1;
            while(f <= _root.cardList[card].draw)
            {
               drawCard(0);
               f++;
            }
            _root.fcg_player_pil1 += _root.cardList[card].pil1;
            _root.fcg_player_pil2 += _root.cardList[card].pil2;
            _root.fcg_player_pil3 += _root.cardList[card].pil3;
            _root.fcg_player_pil4 += _root.cardList[card].pil4;
            _root.fcg_player_pil5 += _root.cardList[card].pil5;
            _root.fcg_player_ene1 += _root.cardList[card].ene1;
            _root.fcg_player_ene2 += _root.cardList[card].ene2;
            _root.fcg_player_ene3 += _root.cardList[card].ene3;
            _root.fcg_player_ene4 += _root.cardList[card].ene4;
            _root.fcg_player_ene5 += _root.cardList[card].ene5;
            _root.fcg_opponent_pil1 += _root.cardList[card].opil1;
            _root.fcg_opponent_pil2 += _root.cardList[card].opil2;
            _root.fcg_opponent_pil3 += _root.cardList[card].opil3;
            _root.fcg_opponent_pil4 += _root.cardList[card].opil4;
            _root.fcg_opponent_pil5 += _root.cardList[card].opil5;
            _root.fcg_opponent_ene1 += _root.cardList[card].oene1;
            _root.fcg_opponent_ene2 += _root.cardList[card].oene2;
            _root.fcg_opponent_ene3 += _root.cardList[card].oene3;
            _root.fcg_opponent_ene4 += _root.cardList[card].oene4;
            _root.fcg_opponent_ene5 += _root.cardList[card].oene5;
         }
         else
         {
            _root.fcg_player_mexist = 0;
            _root.fcg_player_mname = "Not Existing";
            _root.fcg_player_mhp = 0;
            _root.fcg_player_matk = 0;
            _root.fcg_player_mdef = 0;
            _root.fcg_player_mrec = 0;
            _root.fcg_player_mfreeze = 0;
            _root.fcg_player_mspecial = "";
            _root.fcg_player_mspecialpow = 0;
         }
      }
      if(_root.fcg_opponent_mhp <= 0)
      {
         if(_root.fcg_opponent_mspecial == "Rebirth")
         {
            card = _root.fcg_opponent_mspecialpow;
            if(card == 0)
            {
               card = random(maxcard) + 1;
            }
            i = 1;
            while(i <= 6)
            {
               if(_root.cardList[card].type != "Monster")
               {
                  card = random(maxcard) + 1;
               }
               i++;
            }
            if(_root.cardList[card].type != "Monster")
            {
               card = 1 + random(2);
            }
            _root.fcg_opponent_mid = _root.cardList[card].id;
            _root.fcg_opponent_mquanta = _root.cardList[card].quanta;
            _root.fcg_opponent_mreq = _root.cardList[card].req;
            _root.fcg_opponent_mname = _root.cardList[card].name;
            _root.fcg_opponent_mdesc = _root.cardList[card].desc;
            _root.fcg_opponent_mupgraded = _root.cardList[card].upgraded;
            _root.fcg_opponent_mauthor = _root.cardList[card].author;
            _root.fcg_opponent_mspecial = _root.cardList[card].special;
            _root.fcg_opponent_mspecialpow = _root.cardList[card].specialpow;
            _root.fcg_opponent_special = _root.cardList[card].special;
            _root.fcg_opponent_specialpow = _root.cardList[card].specialpow;
            _root.fcg_opponent_mexist = 1;
            _root.fcg_opponent_mhp = _root.cardList[card].hp;
            _root.fcg_opponent_matk = _root.cardList[card].atk;
            _root.fcg_opponent_mdef = _root.cardList[card].def;
            _root.fcg_opponent_catk += _root.cardList[card].catk;
            _root.fcg_opponent_cdef += _root.cardList[card].cdef;
            _root.fcg_opponent_chp += _root.cardList[card].chp;
            _root.fcg_opponent_crec += _root.cardList[card].crec;
            _root.fcg_opponent_mrec = _root.cardList[card].mrec;
            _root.fcg_player_mhp += _root.cardList[card].omhp;
            _root.fcg_player_matk += _root.cardList[card].omatk;
            _root.fcg_player_mdef += _root.cardList[card].omdef;
            _root.fcg_player_catk += _root.cardList[card].ocatk;
            _root.fcg_player_cdef += _root.cardList[card].ocdef;
            _root.fcg_player_chp += _root.cardList[card].ochp;
            _root.fcg_player_crec += _root.cardList[card].ocrec;
            _root.fcg_player_mrec += _root.cardList[card].omrec;
            _root.opponent_damagedealtc += _root.cardList[card].inflict;
            _root.fcg_player_mfreeze += _root.cardList[card].freeze;
            f = 1;
            while(f <= _root.cardList[card].draw)
            {
               drawCard(0);
               f++;
            }
            _root.fcg_opponent_pil1 += _root.cardList[card].pil1;
            _root.fcg_opponent_pil2 += _root.cardList[card].pil2;
            _root.fcg_opponent_pil3 += _root.cardList[card].pil3;
            _root.fcg_opponent_pil4 += _root.cardList[card].pil4;
            _root.fcg_opponent_pil5 += _root.cardList[card].pil5;
            _root.fcg_opponent_ene1 += _root.cardList[card].ene1;
            _root.fcg_opponent_ene2 += _root.cardList[card].ene2;
            _root.fcg_opponent_ene3 += _root.cardList[card].ene3;
            _root.fcg_opponent_ene4 += _root.cardList[card].ene4;
            _root.fcg_opponent_ene5 += _root.cardList[card].ene5;
            _root.fcg_player_pil1 += _root.cardList[card].opil1;
            _root.fcg_player_pil2 += _root.cardList[card].opil2;
            _root.fcg_player_pil3 += _root.cardList[card].opil3;
            _root.fcg_player_pil4 += _root.cardList[card].opil4;
            _root.fcg_player_pil5 += _root.cardList[card].opil5;
            _root.fcg_player_ene1 += _root.cardList[card].oene1;
            _root.fcg_player_ene2 += _root.cardList[card].oene2;
            _root.fcg_player_ene3 += _root.cardList[card].oene3;
            _root.fcg_player_ene4 += _root.cardList[card].oene4;
            _root.fcg_player_ene5 += _root.cardList[card].oene5;
         }
         else
         {
            _root.fcg_opponent_mexist = 0;
            _root.fcg_opponent_mname = "Not Existing";
            _root.fcg_opponent_mhp = 0;
            _root.fcg_opponent_matk = 0;
            _root.fcg_opponent_mdef = 0;
            _root.fcg_opponent_mrec = 0;
            _root.fcg_opponent_mfreeze = 0;
            _root.fcg_opponent_mspecial = "";
            _root.fcg_opponent_mspecialpow = 0;
         }
      }
      i = 1;
      while(i <= 5)
      {
         if(_root["fcg_player_pil" + i] < 1)
         {
            _root["fcg_player_pil" + i] = 1;
         }
         if(_root["fcg_opponent_pil" + i] < 1)
         {
            _root["fcg_opponent_pil" + i] = 1;
         }
         if(_root["fcg_player_ene" + i] < 0)
         {
            _root["fcg_player_ene" + i] = 0;
         }
         if(_root["fcg_opponent_ene" + i] < 0)
         {
            _root["fcg_opponent_ene" + i] = 0;
         }
         i++;
      }
      if(_root.fcg_opponent_mdef <= 0)
      {
         _root.fcg_opponent_mdef = 0;
      }
      if(_root.fcg_opponent_matk <= 0)
      {
         _root.fcg_opponent_matk = 0;
      }
      if(_root.fcg_opponent_mfreeze <= 0)
      {
         _root.fcg_opponent_mfreeze = 0;
      }
      if(_root.fcg_opponent_cdef <= 0)
      {
         _root.fcg_opponent_cdef = 0;
      }
      if(_root.fcg_opponent_catk <= 0)
      {
         _root.fcg_opponent_catk = 0;
      }
      if(_root.fcg_opponentlevel == 5 && Math.random() < 0.001 / _root.fcg_opponent_chp)
      {
         _root.fcg_opponent_chp = 0;
         gotoAndStop(4);
      }
      if(_root.fcg_opponent_chp <= 0 && _root.fcg_player_chp > 0)
      {
         _root.fcg_opponent_chp = 0;
         gotoAndStop(4);
      }
      else if(_root.fcg_opponent_chp > 0 && _root.fcg_player_chp <= 0)
      {
         _root.fcg_player_chp = 0;
         gotoAndStop(5);
      }
      else if(_root.fcg_opponent_chp <= 0 && _root.fcg_player_chp <= 0)
      {
         _root.fcg_opponent_chp = 0;
         _root.fcg_player_chp = 0;
         _root.atie = true;
         gotoAndStop(5);
      }
      if(_root.fcg_player_mdef <= 0)
      {
         _root.fcg_player_mdef = 0;
      }
      if(_root.fcg_player_matk <= 0)
      {
         _root.fcg_player_matk = 0;
      }
      if(_root.fcg_player_mfreeze <= 0)
      {
         _root.fcg_player_mfreeze = 0;
      }
      if(_root.fcg_player_cdef <= 0)
      {
         _root.fcg_player_cdef = 0;
      }
      if(_root.fcg_player_catk <= 0)
      {
         _root.fcg_player_catk = 0;
      }
      if(Key.isDown(71))
      {
         _root.forfeit = true;
         _root.fcg_player_chp = 0;
      }
   }
   if(_root.fcg_player_mname == "Not Existing")
   {
      _root.fcg_player_mhp = 0;
   }
   if(_root.fcg_opponent_mname == "Not Existing")
   {
      _root.fcg_opponent_mhp = 0;
   }
   if(_root.fcg_opponent_killdelay > 2)
   {
      _root.fcg_opponent_killdelay = 2;
   }
   if(genFlash1._alpha > 60)
   {
      genFlash1._alpha -= 1;
      genFlash2._alpha -= 1;
   }
};
updateText();
