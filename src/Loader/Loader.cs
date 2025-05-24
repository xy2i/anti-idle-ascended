using Godot;

namespace AntiIdle.Loader;

// MATCH: frame_1/DoAction.as
public partial class Loader : Node
{
    public override void _Ready()
    {
        _root.kpaChip = false;
        _root.autoStart = true;
        _root.sessionTimeLeft = 2419200;
        _root.luckyNumber = 10000000 + random(90000000);
        stop();
        _root.upnumber = 1861;
        _root.upnumberHidden = 0;
        _root.flashVer = getVersion();
        var kongregate = _global.kongregate;
        kongregate.services.connect();
        _root.kongregate.stats.submit("Version Playing",_root.upnumber);
        _root.offlineVersion = false;
        if(_root.kongregate_username == undefined)
        {
            _root.kongregate_username = "Guest";
            _root.offlineVersion = true;
        }
        var globalSetting = SharedObject.getLocal("ATG_Global","/");
        _root.saveGlobal = _root.globalSetting.data;
        Stage.showMenu = false;
        fscommand("trapallkeys",true);
        if(_root.kongregate_username == undefined && _root.saveGlobal.aurianMode != true)
        {
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
    }
    public override void _Process(double delta)
    {
    }
}
