//! status=pending
on(release){
   if(_parent.craftType != 6)
   {
      _parent.craftType = 6;
      _root.craftMedal = [zeroItem];
      _root.addArenaCraftMedal(4,1,1,1,"Medal",5,0,0,0,0,0,0,1,0,0,0,"","","",0,Infinity,true,false,false,false,0,0,0,0,0,"First Medal","Awarded for discovering that you can craft Medals. YAY!");
      if(_root.save.arenaLevel >= 10)
      {
         _root.addArenaCraftMedal(4,1,1,10,"Medal",6,5,0,5,0,0,0,1,0,0,16,"EXP","","",0,Infinity,true,false,false,false,0,2000,0,0,0,"Newbie Fighter","Awarded for reaching Rank 10.");
      }
      if(_root.save.arenaLevel >= 30)
      {
         _root.addArenaCraftMedal(4,1,1,30,"Medal",7,15,0,15,0,0,0,1,0,0,36,"EXP","","",0,Infinity,true,false,false,false,0,10000,0,1,0,"Fighter","Awarded for reaching Rank 30.");
      }
      if(_root.save.arenaLevel >= 70)
      {
         _root.addArenaCraftMedal(4,1,1,70,"Medal",8,30,0,30,0,0,0,1,0,0,66,"EXP","","",0,Infinity,true,false,false,false,0,50000,0,5,0,"Veteran Fighter","Awarded for reaching Rank 70.");
      }
      if(_root.save.arenaLevel >= 120)
      {
         _root.addArenaCraftMedal(4,1,1,120,"Medal",9,50,0,50,0,0,0,1,0,0,106,"EXP","","",0,Infinity,true,false,false,false,0,200000,0,20,0,"Heroic Fighter","Awarded for reaching Rank 120.");
      }
      if(_root.save.arenaLevel >= 180)
      {
         _root.addArenaCraftMedal(4,1,1,180,"Medal",10,75,0,75,0,0,0,1,0,0,156,"EXP","","",0,Infinity,true,false,false,false,0,1000000,0,100,0,"Elite Fighter","Awarded for reaching Rank 180.");
      }
      if(_root.save.arenaLevel >= 250)
      {
         _root.addArenaCraftMedal(4,1,1,250,"Medal",11,105,0,105,0,0,0,1,0,0,256,"EXP","","",0,Infinity,true,false,false,false,0,5000000,0,250,0,"Master Fighter","Awarded for reaching Rank 250.");
      }
      if(_root.save.arenaLevel >= 350)
      {
         _root.addArenaCraftMedal(4,1,1,350,"Medal",12,140,0,140,0,0,0,1,0,0,406,"EXP","","",0,Infinity,true,false,false,false,0,20000000,0,500,0,"Ultimate Fighter","Awarded for reaching Rank 350.");
      }
      if(_root.save.arenaLevel >= 500)
      {
         _root.addArenaCraftMedal(4,1,1,500,"Medal",13,180,0,180,0,0,0,1,0,0,706,"EXP","","",0,Infinity,true,false,false,false,0,100000000,0,1000,0,"Arena Champion","Awarded for reaching Rank 500. You\'re a true Arena Champion!");
      }
      if(_root.save.arenaMaxCombo >= 9999)
      {
         _root.addArenaCraftMedal(16,1,1,50,"Medal",20,0,5,0,0,0,0,1,0,0,16,"","Double Hit Chance","",0,Infinity,true,false,false,false,0,10000,0,1,0,"Combo King","Awarded for reaching 9,999 Combo.");
      }
      if(_root.bestiaryLevel >= 1400)
      {
         _root.addArenaCraftMedal(16,1,1,200,"Medal",29,0,0,0,0,10,10,1,0,0,156,"Spawn Rate","Instant Kill","",0,Infinity,true,false,false,false,0,100000,0,100,0,"Bestiary Master","Awarded for having a level 1,400 Bestiary.");
      }
      if(_root.bestiaryLevel >= 1600)
      {
         _root.addArenaCraftMedal(16,1,1,300,"Medal",30,0,0,0,0,25,25,1,0,0,256,"Spawn Rate","Instant Kill","",0,Infinity,true,false,false,false,0,1000000,0,250,0,"Bestiary King","Awarded for having a level 1,600 Bestiary.");
      }
      if(_root.bestiaryLevel >= 1800)
      {
         _root.addArenaCraftMedal(16,1,1,400,"Medal",31,0,0,0,0,50,50,1,0,0,406,"Spawn Rate","Instant Kill","",0,Infinity,true,false,false,false,0,10000000,0,500,0,"Mad Scientist","Awarded for having a level 1,800 Bestiary.");
      }
      if(_root.bestiaryLevel >= 2000)
      {
         _root.addArenaCraftMedal(16,1,1,500,"Medal",32,0,0,0,0,100,100,1,0,0,706,"Spawn Rate","Instant Kill","",0,Infinity,true,false,false,false,0,100000000,0,1000,0,"THE BESTiary","Awarded for having a level 2,000 Bestiary.");
      }
      if(_root.save.arenaStorage4 == true)
      {
         _root.addArenaCraftMedal(4,1,1,500,"Medal",37,0,0,0,0,0,150,1,0,0,456,"Drop Rate","","",0,Infinity,true,false,false,false,0,1000000000,0,5000,0,"Bottomless Bag","Awarded for unlocking the 8th Storage page.");
      }
      if(_root.totalAllyTamed >= 200)
      {
         _root.addArenaCraftMedal(4,1,1,200,"Medal",50,0,0,0,10,0,0,1,0,0,156,"Rare Monster Rate","","EXP / Rare Kill",0,Infinity,true,false,false,false,0,100000,0,100,0,"Novice Tamer","Awarded for taming 200 Invisible Allies.");
      }
      if(_root.totalAllyTamed >= 300)
      {
         _root.addArenaCraftMedal(4,1,1,300,"Medal",51,0,0,0,25,0,0,1,0,0,256,"Rare Monster Rate","","EXP / Rare Kill",0,Infinity,true,false,false,false,0,1000000,0,250,0,"Veteran Tamer","Awarded for taming 300 Invisible Allies.");
      }
      if(_root.totalAllyTamed >= 400)
      {
         _root.addArenaCraftMedal(4,1,1,400,"Medal",52,0,0,0,50,0,0,1,0,0,406,"Rare Monster Rate","","EXP / Rare Kill",0,Infinity,true,false,false,false,0,10000000,0,500,0,"Master Tamer","Awarded for taming 400 Invisible Allies.");
      }
      if(_root.totalAllyTamed >= 500)
      {
         _root.addArenaCraftMedal(4,1,1,500,"Medal",53,0,0,0,100,0,0,1,0,0,706,"Rare Monster Rate","","EXP / Rare Kill",0,Infinity,true,false,false,false,0,100000000,0,1000,0,"Legendary Tamer","Awarded for taming 500 Invisible Allies.");
      }
      if(_root.totalAllyMastered >= 200)
      {
         _root.addArenaCraftMedal(16,1,1,200,"Medal",54,0,0,0,10,0,10,1,0,0,156,"Epic Monster Rate","","EXP / Epic Kill",0,Infinity,true,false,false,false,0,100000,0,100,0,"Novice Trainer","Awarded for mastering 200 Invisible Allies.");
      }
      if(_root.totalAllyMastered >= 300)
      {
         _root.addArenaCraftMedal(16,1,1,300,"Medal",55,0,0,0,25,0,25,1,0,0,256,"Epic Monster Rate","","EXP / Epic Kill",0,Infinity,true,false,false,false,0,1000000,0,250,0,"Veteran Trainer","Awarded for mastering 300 Invisible Allies.");
      }
      if(_root.totalAllyMastered >= 400)
      {
         _root.addArenaCraftMedal(16,1,1,400,"Medal",56,0,0,0,50,0,50,1,0,0,406,"Epic Monster Rate","","EXP / Epic Kill",0,Infinity,true,false,false,false,0,10000000,0,500,0,"Master Trainer","Awarded for mastering 400 Invisible Allies.");
      }
      if(_root.totalAllyMastered >= 500)
      {
         _root.addArenaCraftMedal(16,1,1,500,"Medal",57,0,0,0,100,0,100,1,0,0,706,"Epic Monster Rate","","EXP / Epic Kill",0,Infinity,true,false,false,false,0,100000000,0,1000,0,"Legendary Trainer","Awarded for mastering 500 Invisible Allies.");
      }
      if(_root.save.totalPlayTime >= 18000)
      {
         _root.addArenaCraftMedal(16,1,1,60,"Medal",108,0,0,0,0,0,0,1,0,0,706,"","","",0,Infinity,false,false,false,false,10,0,0,50,0,_root.save.userTitle.split("<").join("").split(">").join(""),"This medal\'s name depends on your Anti-Idle title when you craft it. Don\'t ask how that works.");
      }
      _root.addArenaCraftMedal(16,1,1,30,"Medal",65,0,0,0,0,0,50,1,0,0,706,"","","",0,Infinity,false,false,false,false,10,0,0,500,0,"Contributor","Thank you for your donation and your continued support!");
      _root.addArenaCraftMedal(16,1,1,60,"Medal",65,0,0,0,0,0,100,1,0,0,706,"","","",0,Infinity,false,false,false,false,10,0,0,2500,0,"Honorable Anti-Idler","Thank you for your donation and your continued support!");
      if(_root.save.userTitle.split("<").join("").split(">").join("") != "")
      {
         _root.addArenaCraftMedal(16,1,1,60,"Medal",39,0,0,0,0,0,100,1,0,0,706,"","","",0,Infinity,false,false,false,false,10,0,0,5000,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",65,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",39,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",40,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",41,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",42,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",43,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",44,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",45,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",46,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",47,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",48,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",49,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",106,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",107,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",108,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",109,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",110,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",111,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",112,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",113,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",114,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",115,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",116,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",117,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",118,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
         _root.addArenaCraftMedal(21,1,1,100,"Medal",119,0,0,2000,50,50,100,1,0,0,100000,"","","",0,Infinity,false,false,false,false,10,0,0,3,0,_root.save.userTitle.split("<").join("").split(">").join(""),"Thank you for your donation and your continued support!");
      }
      _parent.craftCurrent = 1;
      _parent.craftOffset = 0;
      _parent.craftMaxOffset = _root.craftMedal.length - 13;
      if(_parent.craftMaxOffset < 1)
      {
         _parent.craftMaxOffset = 1;
      }
      _parent.craftRecipe = 4;
      _parent.crystal1Apply = 0;
      _parent.crystal2Apply = 0;
      _parent.specType = 1;
      _parent.checkCraftStat();
   }
}


onClipEvent(enterFrame){
   if(_parent.craftType == 6)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


