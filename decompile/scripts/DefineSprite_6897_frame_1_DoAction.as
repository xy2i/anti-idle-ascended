//! status=pending
onEnterFrame = function()
{
   if(this.hitTest(_parent.stadiumHero.hitBox))
   {
      _parent._parent.nextFrame();
   }
   if(_parent._parent._currentframe == 10 && this.hitTest(_parent["stadiumEnemy" + _root.betTarget].hitBox))
   {
      _parent._parent.nextFrame();
   }
};
