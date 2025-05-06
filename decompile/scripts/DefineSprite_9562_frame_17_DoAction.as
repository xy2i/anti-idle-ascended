//! status=pending
function checkStat()
{
   owned = 30 - _root.emptyEnhancerSlot;
   cap = 30;
}
function purchase()
{
   _root.addArenaEnhancer("Mystery Enhancer Identifier","Mystery Enhancer Identifier",221,0,0,100,"","",0,300,0,Infinity,"Special Shop item");
}
stop();
qtCost = 1000;
etCost = 1000;
checkStat();
