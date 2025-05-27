using Godot;
using System;

public partial class LoadingBar : ColorRect
{
	public double targetScale;

	// MATCH: DefineSprite_2322/frame_1/PlaceObject2_2320_4/CLIPACTIONRECORD onClipEvent(load).as
	public override void _Ready()
	{
		Scale = Scale with { X = 0 };
	}

	// MATCH: DefineSprite_2322/frame_1/PlaceObject2_2320_4/CLIPACTIONRECORD onClipEvent(enterFrame).as
	public override void _Process(double delta)
	{
		float targetScale = (float)(_root.getBytesLoaded() / _root.getBytesTotal());
		var scale = Scale;
		scale.X = scale.X + (targetScale - scale.X) / 5;
		Scale = scale;
	}
}
