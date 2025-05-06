//! status=pending
function checkPrice()
{
   buff1Cost = 500;
   buff2Cost = 1500;
   buff3Cost = 3000;
   buff4Cost = 5000;
   buff5Cost = 8000;
   buff6Cost = 12000;
   buff7Cost = 2000;
   buff8Cost = 200;
   if(_root.save.careerLevel[8] >= 200)
   {
      buff1Cost = 350;
      buff2Cost = 1050;
      buff3Cost = 2100;
      buff4Cost = 3500;
      buff5Cost = 5600;
      buff6Cost = 8400;
      buff7Cost = 1400;
      buff8Cost = 140;
   }
   if(_root.save.fcgBuff[1] >= 99)
   {
      buff1Cost = Infinity;
   }
   if(_root.save.fcgBuff[2] >= 99)
   {
      buff2Cost = Infinity;
   }
   if(_root.save.fcgBuff[3] >= 99)
   {
      buff3Cost = Infinity;
   }
   if(_root.save.fcgBuff[4] >= 99)
   {
      buff4Cost = Infinity;
   }
   if(_root.save.fcgBuff[5] >= 99)
   {
      buff5Cost = Infinity;
   }
   if(_root.save.fcgBuff[6] >= 99)
   {
      buff6Cost = Infinity;
   }
   if(_root.save.fcgBuff[7] >= 999)
   {
      buff7Cost = Infinity;
   }
   if(_root.save.fcgBuff[8] >= 999)
   {
      buff8Cost = Infinity;
   }
   buff1CostText.text = _root.withComma(buff1Cost);
   buff2CostText.text = _root.withComma(buff2Cost);
   buff3CostText.text = _root.withComma(buff3Cost);
   buff4CostText.text = _root.withComma(buff4Cost);
   buff5CostText.text = _root.withComma(buff5Cost);
   buff6CostText.text = _root.withComma(buff6Cost);
   buff7CostText.text = _root.withComma(buff7Cost);
   buff8CostText.text = _root.withComma(buff8Cost);
   var _loc3_ = 1;
   while(_loc3_ <= 8)
   {
      this["buff" + _loc3_ + "OwnedText"].text = _root.withComma(_root.save.fcgBuff[_loc3_]) + "x";
      if(_root.save.fcgCash < this["buff" + _loc3_ + "Cost"])
      {
         this["buff" + _loc3_ + "CostText"].textColor = 16750848;
      }
      else
      {
         this["buff" + _loc3_ + "CostText"].textColor = 16776960;
         if(_root.save.fcgBuff[_loc3_] > 0)
         {
            this["buff" + _loc3_ + "CostText"].textColor = 10092288;
         }
      }
      _loc3_ = _loc3_ + 1;
   }
   if(_root.save.fcgLevel < 10)
   {
      buff1Cost = Infinity;
      buff1CostText.text = "Lv. 10+";
      buff1CostText.textColor = 10066329;
   }
   if(_root.save.fcgLevel < 20)
   {
      buff2Cost = Infinity;
      buff2CostText.text = "Lv. 20+";
      buff2CostText.textColor = 10066329;
   }
   if(_root.save.fcgLevel < 30)
   {
      buff3Cost = Infinity;
      buff3CostText.text = "Lv. 30+";
      buff3CostText.textColor = 10066329;
   }
   if(_root.save.fcgLevel < 40)
   {
      buff4Cost = Infinity;
      buff4CostText.text = "Lv. 40+";
      buff4CostText.textColor = 10066329;
   }
   if(_root.save.fcgLevel < 50)
   {
      buff5Cost = Infinity;
      buff5CostText.text = "Lv. 50+";
      buff5CostText.textColor = 10066329;
   }
   if(_root.save.fcgLevel < 60)
   {
      buff6Cost = Infinity;
      buff6CostText.text = "Lv. 60+";
      buff6CostText.textColor = 10066329;
   }
}
checkPrice();
