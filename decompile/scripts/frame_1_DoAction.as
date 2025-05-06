//! status=done
_root.kpaChip = false;
_root.autoStart = true;
_root.sessionTimeLeft = 2419200;
_root.luckyNumber = 10000000 + random(90000000);
stop();
_root.upnumber = 1861.1;
_root.((upnumber))Hidden = 0;
_root.flashVer = getVersion();
var kongregate = _global.kongregate;
kongregate.services.connect();
_root.kongregate.stats.submit("Version Playing", upnumber);
_root.offlineVersion = false;
if (_root.kongregate_username == undefined) {
   _root.kongregate_username = "Guest";
   _root.offlineVersion = true;
}
var globalSetting = SharedObject.getLocal("ATG_Global", "/");
var saveGlobal = _root.globalSetting.data;
Stage.showMenu = false;
getURL("FSCommand:trapallkeys", true);
if (_root.kongregate_username == undefined && _root.saveGlobal.aurianMode != true) {
   Stage.scaleMode = "noScale";
}
_root.preloadedFile0 = false;
_root.preloadedFile1 = false;
_root.preloadedFile2 = false;
_root.preloadedFile3 = false;
_root.thisSession = 0;
_root.refresh_year = 0;
_root.refresh_month = 0;
_root.refresh_date = 0;
