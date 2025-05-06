//! status=pending
_root.arcadeScore = 0;
_root.arcadeFakeScore = 0;
_root.arcadeLife = 100;
_root.arcadeWhack = 0;
_root.arcadeAppear = 0;
_root.arcadeAppearDelay = 3;
_root.arcadeMultiplier = 1;
_root.arcadePerfectStreak = 0;
oldXMouse = _xmouse;
oldYMouse = _ymouse;
teleportCount = 0;
isTouchscreen = false;
onEnterFrame = function()
{
   if(oldXMouse != _xmouse || oldYMouse != _ymouse)
   {
      teleportDist = Math.abs(oldXMouse - _xmouse) + Math.abs(oldYMouse - _ymouse);
      if(teleportDist > 100)
      {
         teleportCount += teleportDist;
      }
      else
      {
         teleportCount -= 2;
      }
      oldXMouse = _xmouse;
      oldYMouse = _ymouse;
      if(teleportCount >= 1000)
      {
         isTouchscreen = true;
      }
      if(teleportCount < 0)
      {
         teleportCount = 0;
         isTouchscreen = false;
      }
   }
   _root.arcadeAppearDelay -= 1 / _root.fps;
   if(_root.arcadeLife > 100)
   {
      _root.arcadeLife = 100;
   }
   if(_root.arcadeLife <= 0)
   {
      _parent.gotoAndStop(34);
   }
   _root.arcadeFakeScore += Math.ceil((_root.arcadeScore - _root.arcadeFakeScore) / 1.1);
   _parent.scoreText.text = _root.withComma(_root.arcadeFakeScore);
   _parent.countText.text = _root.withComma(_root.arcadeWhack);
   _parent.multiplierText.text = _root.arcadeMultiplier + "x";
   mDispText.text = _root.arcadeMultiplier + "x";
   tDispText.text = Math.floor(_root.arcadeLife) + "%";
};
