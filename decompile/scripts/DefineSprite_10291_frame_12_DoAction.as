//! status=pending
auView = _root.save.au + 1;
if(auView > _root.autoUpdateTime.length - 1)
{
   auView = _root.autoUpdateTime.length - 1;
}
onEnterFrame = null;
