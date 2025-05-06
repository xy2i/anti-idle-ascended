using System;

namespace aitg;

public static class Format
{
    public static string withComma(double thatNumber)
    {
        var finalNumber = "";
        if (double.IsPositiveInfinity(thatNumber) || double.IsNaN(thatNumber))
        {
            finalNumber = "-----";
        }
        else
        {
            if (thatNumber > 999999999999999)
            {
                thatNumber = 999999999999999;
            }

            var cNegative = false;
            var groupval = thatNumber;
            if (thatNumber < 0)
            {
                groupval = Math.Abs(thatNumber);
                cNegative = true;
            }

            var group1 = Math.Floor(groupval / 1000000000000);
            var group2 = Math.Floor(groupval / 1000000000) - group1 * 1000;
            var group3 = Math.Floor(groupval / 1000000) - group1 * 1000000 - group2 * 1000;
            var group4 = Math.Floor(groupval / 1000) - group1 * 1000000000 - group2 * 1000000 - group3 * 1000;
            var group5 = Math.Floor(groupval) - group1 * 1000000000000 - group2 * 1000000000 - group3 * 1000000 -
                         group4 * 1000;
            var groupCount = 1;
            if (group4 > 0)
            {
                groupCount = 2;
            }

            if (group3 > 0)
            {
                groupCount = 3;
            }

            if (group2 > 0)
            {
                groupCount = 4;
            }

            if (group1 > 0)
            {
                groupCount = 5;
            }

            var group5String = "" + group5;
            var group4String = "" + group4;
            var group3String = "" + group3;
            var group2String = "" + group2;
            var group1String = "" + group1;
            if (groupCount >= 2 && group5 < 10)
            {
                group5String = "0" + group5;
            }

            if (groupCount >= 2 && group5 < 100)
            {
                group5String = "0" + group5;
            }

            if (groupCount >= 3 && group4 < 10)
            {
                group4String = "0" + group4;
            }

            if (groupCount >= 3 && group4 < 100)
            {
                group4String = "0" + group4;
            }

            if (groupCount >= 4 && group3 < 10)
            {
                group3String = "0" + group3;
            }

            if (groupCount >= 4 && group3 < 100)
            {
                group3String = "0" + group3;
            }

            if (groupCount >= 5 && group2 < 10)
            {
                group2String = "0" + group2;
            }

            if (groupCount >= 5 && group2 < 100)
            {
                group2String = "0" + group2;
            }

            if (groupCount == 5)
            {
                finalNumber = group1String + "," + group2String + "," + group3String + "," + group4String + "," +
                              group5String;
            }

            if (groupCount == 4)
            {
                finalNumber = group2String + "," + group3String + "," + group4String + "," + group5String;
            }

            if (groupCount == 3)
            {
                finalNumber = group3String + "," + group4String + "," + group5String;
            }

            if (groupCount == 2)
            {
                finalNumber = group4String + "," + group5String;
            }

            if (groupCount == 1)
            {
                finalNumber = group5String;
            }

            if (cNegative)
            {
                finalNumber = "-" + finalNumber;
            }
        }

        return finalNumber;
    }

    public static string convertSecCD(double thatNumber)
    {
        if (thatNumber < 0)
        {
            thatNumber = 0;
        }

        var min = Math.Floor(thatNumber / 60);
        var sec = Math.Floor(thatNumber) - min * 60;
        var secString = sec.ToString();
        if (sec < 10)
        {
            secString = "0" + secString;
        }

        return min + ":" + secString;
    }
}