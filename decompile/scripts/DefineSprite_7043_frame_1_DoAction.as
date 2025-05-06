//! status=pending
onEnterFrame = function()
{
   if(this.hitTest(_parent.stadiumHero.hitBox))
   {
      _root.save.aceFinish = 1337;
      _root.gainBlueCoin(2);
      _root.showPopup("ACE FINISH!!","Ace Finish! Congratulations!");
      _parent._parent.nextFrame();
   }
};
