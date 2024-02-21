using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace Importador_CSV
{
    internal class ReplaceRegex
    {
        public ReplaceRegex()
        {
            
        }

        public string LimpaCaracteres(object value)
        {
            if (value != null)
            {
                string str = value.ToString().ToUpper();
                str = Regex.Replace(str, "[ÀÁÃÂÄ]", "A");
                str = Regex.Replace(str, "[ÈÉÊË]", "E");
                str = Regex.Replace(str, "[ÌÍÎÏ]", "I");
                str = Regex.Replace(str, "[ÒÓÕÔÖ]", "O");
                str = Regex.Replace(str, "[ÙÚÛÜ]", "U");
                str = Regex.Replace(str, "[Ç]", "C");
                str = Regex.Replace(str, "[@#!$%&*+=]", "");
                str = Regex.Replace(str, @"[""'']", "");
                return str;
            }

            return "";
        }

    }
}
