//! status=pending
onClipEvent(enterFrame){
   if(_currentframe >= 2)
   {
      checkFrame();
   }
}


onClipEvent(load){
   function checkFrame()
   {
      if(_root.save.banned >= 1 || _root.saveid >= 10 || _root.save.newbieProgress == 15)
      {
         _root.save.newbieProgress = 15;
         gotoAndStop(1);
      }
      else
      {
         _root.save.newbieProgress = 0;
         if(_root.save.bestLevel >= 2)
         {
            _root.save.newbieProgress = 1;
            if(_root.save.featureIdleMode == true)
            {
               _root.save.newbieProgress = 2;
               if(_root.save.bestLevel >= 4)
               {
                  _root.save.newbieProgress = 3;
                  if(_root.save.featureBoostGen == true)
                  {
                     _root.save.newbieProgress = 4;
                     if(_root.save.boostPurchased >= 300)
                     {
                        _root.save.newbieProgress = 5;
                        if(_root.save.bestLevel >= 12)
                        {
                           _root.save.newbieProgress = 6;
                           if(_root.save.featureGarden == true)
                           {
                              _root.save.newbieProgress = 7;
                              if(_root.save.harvestCount >= 1)
                              {
                                 _root.save.newbieProgress = 8;
                                 if(_root.save.bestLevel >= 25)
                                 {
                                    _root.save.newbieProgress = 9;
                                    if(_root.save.featureBattleArena == true)
                                    {
                                       _root.save.newbieProgress = 10;
                                       if(_root.save.arenaKill >= 3)
                                       {
                                          _root.save.newbieProgress = 11;
                                          if(_root.save.arenaLevel >= 12)
                                          {
                                             _root.save.newbieProgress = 12;
                                             if(_root.save.featureButtonMachine == true)
                                             {
                                                _root.save.newbieProgress = 13;
                                                if(_root.save.buttonPerfect >= 1)
                                                {
                                                   _root.save.newbieProgress = 14;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         targetFrame = 2 + _root.save.newbieProgress;
         gotoAndStop(targetFrame);
      }
   }
}


