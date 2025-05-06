//! status=pending
featureText.restrict = "0-9";
featureSelected = _root.save.featureSelected;
onEnterFrame = function()
{
   if(isNaN(featureSelected))
   {
      featureSelected = 13;
   }
   else if(featureSelected < 1)
   {
      featureSelected = 1;
   }
   else if(featureSelected > 16)
   {
      featureSelected = 16;
   }
   switch(featureSelected.toString())
   {
      case "1":
         _root.save.correctedFeature = 5;
         break;
      case "2":
         _root.save.correctedFeature = 6;
         break;
      case "3":
         _root.save.correctedFeature = 7;
         break;
      case "4":
         _root.save.correctedFeature = 8;
         break;
      case "5":
         _root.save.correctedFeature = 9;
         break;
      case "6":
         _root.save.correctedFeature = 10;
         break;
      case "7":
         _root.save.correctedFeature = 11;
         break;
      case "8":
         _root.save.correctedFeature = 12;
         break;
      case "9":
         _root.save.correctedFeature = 13;
         break;
      case "10":
         _root.save.correctedFeature = 14;
         break;
      case "11":
         _root.save.correctedFeature = 17;
         break;
      case "12":
         _root.save.correctedFeature = 18;
         break;
      case "13":
         _root.save.correctedFeature = 19;
         break;
      case "14":
         _root.save.correctedFeature = 22;
         break;
      case "15":
         _root.save.correctedFeature = 23;
         break;
      case "16":
         _root.save.correctedFeature = 24;
   }
   _root.save.featureSelected = featureSelected;
};
