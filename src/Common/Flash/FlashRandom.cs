using System;

namespace AntiIdle.Common.Flash;

/// <summary>
///     Random utilities compatible with Flash's random() and Math.random().
/// </summary>
public class FlashRandom
{
    private static readonly Random r = new();

    /// <summary>
    ///     Equivalent to random(x) in AS2.
    ///     See
    ///     <see href="https://open-flash.github.io/mirrors/as2-language-reference/global_functions.html#random()">random().</see>
    /// </summary>
    /// <param name="exclusiveUpperBound">Generate up to this number, exclusive.</param>
    public static double random(int exclusiveUpperBound)
    {
        return r.Next(0, exclusiveUpperBound);
    }

    public static double random(double exclusiveUpperBound)
    {
        return r.Next(0, (int)exclusiveUpperBound);
    }

    /// <summary>
    ///     Equivalent to Math.random() in AS2.
    ///     See <see href="http://open-flash.github.io/mirrors/as2-language-reference/Math.html#random()">Math.random()</see>.
    /// </summary>
    public static double random()
    {
        return r.Next(0, 1);
    }
}