namespace AntiIdle.Common.Flash;

public static class Math
{
    public static double random()
    {
        return 1;
    }

    public static double ceil(double number)
    {
        return System.Math.Ceiling(number);
    }

    public static double floor(double number)
    {
        return System.Math.Floor(number);
    }

    public static double pow(double number, double x)
    {
        return System.Math.Pow(number, x);
    }

    public static double abs(double number)
    {
        return System.Math.Abs(number);
    }

    public static double log(double number)
    {
        return System.Math.Log(number);
    }

    public static double sqrt(double number)
    {
        return System.Math.Sqrt(number);
    }

    public static double round(double number)
    {
        return System.Math.Round(number);
    }

    public static double min(double a, double b)
    {
        return System.Math.Min(a, b);
    }

    public static double max(double a, double b)
    {
        return System.Math.Max(a, b);
    }
}