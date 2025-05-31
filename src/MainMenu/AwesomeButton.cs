using Godot;
namespace AntiIdle.Common.Nodes;

// MATCH: DefineSprite_2380/frame_1/DoAction.as
public partial class AwesomeButton : FlashButton
{
	AnimationPlayer anim;
	double position;

	public override void _Ready()
	{
		anim = GetNode<AnimationPlayer>("Alpha");
		FocusMode = FocusModeEnum.All; // focusable by tab
		MouseEntered += OnMouseEntered;
		MouseExited += OnMouseExited;
	}

	private void OnMouseEntered()
	{
		position = anim.CurrentAnimationPosition;
		anim.AssignedAnimation = "hover";
	}

	private void OnMouseExited()
	{
		anim.AssignedAnimation = "blink";
		anim.Seek(position);
	}

	public override void _Input(InputEvent @event)
	{
		if (_xmouse >= 0 && _xmouse < 620 && _ymouse >= 0 && _ymouse < 60)
		{
			if (Input.IsMouseButtonPressed(MouseButton.Left))
			{
				anim.AssignedAnimation = "clicked";
				_root.selectSavefile(_root.saveGlobal.selectedSave);
				GetTree().ChangeSceneToFile("src/Pages/MainLoader/StorageCheck.tscn");
			}
			else
			{
				anim.AssignedAnimation = "blink";
			}
		}
	}

}
