//---------------------------------------------
// ��Ȩ��Ϣ����Ȩ����(C) 2014��COOLWI.COM
// �����ʷ��
//      ����          ����              ˵��
// --------------------------------------------
//      ������       2014/11/14         ����
//---------------------------------------------

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using System.Data;
using System.Data.Common;
using System.Web.Script.Serialization;
using System.IO;
using System.Security.Cryptography;

namespace  CWI.MCP.Common.Extensions
{
    /// <summary>
    /// Deciaml��չ
    /// </summary>
    public static class DecimalExtensions
    {
        public static decimal PercentageOf(this decimal number, int percent)
        {
            return (decimal)(number * percent / 100);
        }

        public static decimal PercentOf(this decimal position, int total)
        {
            decimal result = 0;
            if (position > 0 && total > 0) result = (decimal)position / (decimal)total * 100;
            return result;
        }

        public static decimal PercentageOf(this decimal number, decimal percent)
        {
            return (decimal)(number * percent / 100);
        }

        public static decimal PercentOf(this decimal position, decimal total)
        {
            decimal result = 0;
            if (position > 0 && total > 0) result = (decimal)position / (decimal)total * 100;
            return result;
        }

        public static decimal PercentageOf(this decimal number, long percent)
        {
            return (decimal)(number * percent / 100);
        }

        public static decimal PercentOf(this decimal position, long total)
        {
            decimal result = 0;
            if (position > 0 && total > 0) result = (decimal)position / (decimal)total * 100;
            return result;
        }

        public static decimal RoundDecimalPoints(this decimal val, int decimalPoints)
        {
            return Math.Round(val, decimalPoints);
        }

        public static decimal RoundToTwoDecimalPoints(this decimal val)
        {
            return Math.Round(val, 2);
        }

        public static string ToCurrency(this decimal value)
        {
            return value.ToString("N");
        }
    }
}
