namespace AntiIdle.Common.Globals;

/// <summary>
/// Kongregate stub.
/// </summary>
public class UnderscoreGlobal
{
    public KongregateConnection kongregate = new();
}

public class KongregateConnection
{
    public Services services = new();
}

public class Services
{
    /// <summary>
    /// Stub.
    /// </summary>
    public void connect()
    {
        _root.kongregate = new();
    }
}