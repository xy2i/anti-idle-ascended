using System.Linq;
using Godot;

namespace aitg.Debug;

public partial class LiveDebugger : Control
{
    private TextEdit assign;
    private TextEdit key;
    private Button set;
    private RichTextLabel value;

    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
        key = GetNode<TextEdit>("Key");
        value = GetNode<RichTextLabel>("Value");
        assign = GetNode<TextEdit>("Assign");
        set = GetNode<Button>("Set");
        set.Pressed += ButtonPressed;
    }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta)
    {
        value.Text = "Value: Live debugger ready";
        var parts = key.Text.Split('.');
        var globalName = parts.ElementAtOrDefault(0);
        var globalFieldName = parts.ElementAtOrDefault(1);

        var globalField = typeof(Globals)
            .GetField(globalName);
        if (globalField == null)
        {
            value.Text = $"Global [code]{globalName}[/code] not found";
            return;
        }

        var globalValue = globalField
            .GetValue(null);
        if (globalValue == null)
        {
            value.Text = $"Global [code]{globalName}[/code] could not get value";
            return;
        }

        if (globalFieldName == null)
        {
            value.Text = $"[code]{globalName}[/code] exists";
            return;
        }

        var secondField = globalValue
            .GetType()
            .GetField(globalFieldName);
        if (secondField == null)
        {
            value.Text = $"Value [code]{globalName}.{globalFieldName}[/code] not found";
            return;
        }

        var debugValue = secondField
            .GetValue(globalValue);
        value.Text = $"[i]Value:[/i] {debugValue}";
    }

    private void ButtonPressed()
    {
        GD.Print($"va: {assign.Text}");
        if (double.TryParse(assign.Text, out var number))
        {
            GD.Print($"Number: {number}");
            var parts = key.Text.Split('.');
            var globalName = parts.ElementAtOrDefault(0);
            var globalFieldName = parts.ElementAtOrDefault(1);

            var globalField = typeof(Globals)
                .GetField(globalName);
            if (globalField == null)
            {
                value.Text = $"Global [code]{globalName}[/code] not found";
                return;
            }

            var globalValue = globalField
                .GetValue(null);
            if (globalValue == null)
            {
                value.Text = $"Global [code]{globalName}[/code] could not get value";
                return;
            }

            if (globalFieldName == null)
            {
                value.Text = $"[code]{globalName}[/code] exists";
                return;
            }

            var secondField = globalValue
                .GetType()
                .GetField(globalFieldName);
            if (secondField == null)
            {
                value.Text = $"Value [code]{globalName}.{globalFieldName}[/code] not found";
                return;
            }

            secondField.SetValue(globalValue, number);
        }
    }
}