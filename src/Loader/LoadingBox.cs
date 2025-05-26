using Godot;

// MATCH: DefineSprite_2322/frame_1/DoAction.as
public partial class LoadingBox : Control
{
    private double preloadCount;
    private RichTextLabel randomMessage;

    // MATCH: DefineSprite_2322/frame_1/DoAction.as:genRandom()
    public void genRandom()
    {
        var textToGet = random(11) + 1;
        if (textToGet == 1)
        {
            randomMessage.Text = "Did you know? Anti-Idle: The Game is loading!";
        }

        if (textToGet == 2)
        {
            randomMessage.Text = "This is one of 11 messages you can get, LOL!";
        }

        if (textToGet == 3)
        {
            randomMessage.Text = "Don\'t forget to come back and check for updates!";
        }

        if (textToGet == 4)
        {
            randomMessage.Text = "If it takes too long to load or doesn\'t load at all, try refreshing.";
        }

        if (textToGet == 5)
        {
            randomMessage.Text = "Happy Birthday! What, it isn\'t your birthday? Oh well...";
        }

        if (textToGet == 6)
        {
            randomMessage.Text = "Loading epicness...";
        }

        if (textToGet == 7)
        {
            randomMessage.Text = "Finding a way to reduce lag...";
        }

        if (textToGet == 8)
        {
            randomMessage.Text = "Increasing player\'s Impatience Quotient...";
        }

        if (textToGet == 9)
        {
            randomMessage.Text = "The game is fully loaded when the green bar is full, by the way.";
        }

        if (textToGet == 10)
        {
            randomMessage.Text = "Oh, by the way, this isn\'t the game. This is just the preloader!";
        }

        if (textToGet == 11)
        {
            if (_root.kongregate_username != undefined && _root.kongregate_username != "Guest")
            {
                randomMessage.Text = "Someone named " + _root.kongregate_username +
                                     " is waiting to play Anti-Idle: The Game!";
            }
            else
            {
                randomMessage.Text = "Don\'t forget, playing with a Kongregate account grants you higher rewards!";
            }
        }
    }

    public override void _Ready()
    {
        randomMessage = GetNode<RichTextLabel>("randomMessage");
        randomMessage.Text = "";
        preloadCount = 0;
    }

    public override void _Process(double delta)
    {
        preloadCount += 1;
        if (preloadCount > 200)
        {
            preloadCount = 0;
            genRandom();
        }

        if (_root.getBytesLoaded() == _root.getBytesTotal())
        {
            GetTree().ChangeSceneToFile("src/Loader/Loading1OutOf8.tscn");
        }
    }
}
