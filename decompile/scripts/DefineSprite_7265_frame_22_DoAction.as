//! status=pending
function choice1()
{
   if(_root.save.questType == "Adventure Item")
   {
      if(_root.save.questSubtype == "Grammar Pill")
      {
         _root.save.questCount += 1;
      }
   }
   if(_root.failGrammar > 0)
   {
      _parent._parent.awesomePop.displayMessage("nuthin happend wen ur taked the grammer pill. teh previos is stil in affect");
   }
   else if(Math.random() < 0.5)
   {
      _root.failGrammar = 120;
      _parent._parent.awesomePop.displayMessage("teh grammer pill work EXSELENT! u fell alot gooder aftr takeing teh grammer pill and ur grammer improovd by a hole lot!!!");
   }
   else if(Math.random() < 0.9)
   {
      _root.failGrammar = 120;
      _parent._parent.awesomePop.displayMessage("aftr u took teh grammer pill u fill an bit smrter and ur grammer have improovd by a 0 persent. its AWSOME!!!");
   }
   else
   {
      _root.failGrammar = 240;
      _parent._parent.awesomePop.displayMessage("After taking the Grammar Pill, you didn\'t feel anything different and continued adventuring. Maybe the effect will kick in later...");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Take it!";
choice2Text = "";
choice3Text = "";
choice4Text = "";
choice2 = null;
choice3 = null;
choice4 = null;
