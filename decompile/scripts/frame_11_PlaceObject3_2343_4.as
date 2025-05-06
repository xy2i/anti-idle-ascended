//! status=pending
onClipEvent(load){
   glow1 = new flash.filters.GlowFilter(random(16777216),70,10,10,2,1,false,false);
   glow2 = new flash.filters.GlowFilter(random(16777216),40,5,5,1,1,false,false);
   dropShadow = new flash.filters.DropShadowFilter(10,270,39423,100,5,5,1,1,false,false,false);
   filters = [glow1,glow2,dropShadow];
}


