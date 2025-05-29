using Godot;

namespace AntiIdle.Common.Nodes;

[GlobalClass]
public partial class FlashColorRect : ColorRect
{
    public float _X
    {
        get => Position.X;
        set
        {
            Position = Position with { X = value };
        }
    }
    public float _Y
    {
        get => Position.Y;
        set
        {
            Position = Position with { Y = value };
        }
    }
    public float _alpha
    {
        get => Modulate.A;
        set
        {
            Modulate = Modulate with { A = value / 100 };
        }
    }
    public float _xscale
    {
        get => Scale.X;
        set
        {
            Scale = Scale with { X = value / 100 };
        }
    }
    public float _yscale
    {
        get => Scale.Y;
        set
        {
            Scale = Scale with { Y = value / 100 };
        }
    }
    public float _xmouse
    {
        get => GetViewport().GetMousePosition().X - GetGlobalPosition().X;
    }
    public float _ymouse
    {
        get => GetViewport().GetMousePosition().Y - GetGlobalPosition().Y;
    }
}