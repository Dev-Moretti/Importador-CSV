using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace Importador_CSV.SQL
{
    internal class Conexao
    {
        public Conexao() { }

        public bool ValidarConexao(string banco, string senha)
        {
            MySqlConnection con = new MySqlConnection($"server=localhost;database={banco};user={banco};password={senha}");

            try
            {
                con.Open();
                con.Close();
            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }

    }
}
