using Godot;
using System;

// MATCH: frame_11/DoAction.as
public partial class MainMenu : Control
{
    [Export]
    public Label file0PlayTime;
    [Export]
    public Label file0Level;
    [Export]
    public Label file0Ascs;
    [Export]
    public Label file1PlayTime;
    [Export]
    public Label file1Level;
    [Export]
    public Label file1Ascs;
    [Export]
    public Label file2PlayTime;
    [Export]
    public Label file2Level;
    [Export]
    public Label file2Ascs;
    [Export]
    public Label file3PlayTime;
    [Export]
    public Label file3Level;
    [Export]
    public Label file3Ascs;
    [Export]
    public Label challengesDone;

    // MATCH: frame_11/DoAction.as:loadKongpanion()
    public void loadKongpanion()
    {
        // Removed.
    }

    public override void _EnterTree()
    {
        _root.actualKpaCount = 0;
        _root.actualShinyKpaCount = 0;
        var testVersion = false;
        if (testVersion == true)
        {
            _root.save.noobMode = true;
            _root.save.noobMode2 = true;
            _root.saveGlobal.adminMode = "TEST VERSION";
        }
        file0PlayTime.Text = _root.saveGlobal.playTime[0];
        file0Level.Text = _root.saveGlobal.curLevel[0];
        file0Ascs.Text = _root.saveGlobal.ascCount[0];
        file1PlayTime.Text = _root.saveGlobal.playTime[1];
        file1Level.Text = _root.saveGlobal.curLevel[1];
        file1Ascs.Text = _root.saveGlobal.ascCount[1];
        file2PlayTime.Text = _root.saveGlobal.playTime[2];
        file2Level.Text = _root.saveGlobal.curLevel[2];
        file2Ascs.Text = _root.saveGlobal.ascCount[2];
        file3PlayTime.Text = _root.saveGlobal.playTime[3];
        file3Level.Text = _root.saveGlobal.curLevel[3];
        file3Ascs.Text = _root.saveGlobal.ascCount[3];
        var chalCount = 0;
        var i = 1;
        while (i <= 6)
        {
            if (!isNaN(_root.saveGlobal.challengeTime[i]))
            {
                chalCount += 1;
            }
            i++;
        }
        challengesDone.Text = chalCount + " / 6 completed";
        if (_root.autoStart == true && _root.saveGlobal.skipMenu == true)
        {
            _root.selectSavefile(_root.saveGlobal.selectedSave);
            _root.autoStart = false;
        }
    }
}
