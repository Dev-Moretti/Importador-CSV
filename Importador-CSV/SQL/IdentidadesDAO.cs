using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System;
using System.Windows.Controls.Primitives;

namespace Importador_CSV.SQL
{
    internal class IdentidadesDAO
    {


        public bool InsertIdentidades(int quantidade, int tipoIdentidade, int? identidadeInicial)
        {

            if (identidadeInicial == null)
            {


            }
            else
            {

            }

            // SQL para obter auto Increment da tabela
            //SELECT AUTO_INCREMENT FROM information_schema.tables
            //WHERE table_name = 'identidades' AND table_schema = 'lacasa_flores';





            return false;
        }
        //Console.Write("Numero Inicial = ");
//int inicial = 0;
//inicial = int.Parse(Console.ReadLine());

//Console.Write("Numero de Identidades = ");
//int repeticoes = 0;
//repeticoes = int.Parse(Console.ReadLine());

//Console.WriteLine("\nCLIENTE == 1");
//Console.WriteLine("FORNECEDOR == 2");
//Console.WriteLine("REPRESENTANTE == 3");
//Console.WriteLine("TRANSPORTADORAS == 4");
//Console.Write("Número do tipo da identidade: ");
//int identidade = int.Parse(Console.ReadLine());


//Console.Write("\nNome do banco -> sem espaços = ");
//string banco = Console.ReadLine();

//Console.Write("\n Senha: ");
//string senha = Console.ReadLine();

//string path = $"server=localhost;database={banco};user={banco};password={senha}";

//Console.WriteLine("\nRealizando Insert - AGUARDE CONFIRMAÇÃO! ");

//MySqlCommand cmd = new MySqlCommand("INSERT INTO identidades (identidadeCodigo, identidadeTipo) VALUES (@idCodigo, @idTipo)");

//cmd.Connection = new MySqlConnection(path);
//try
//{
//  cmd.Connection.Open();
//  for (int i = inicial; repeticoes > 0; i++)
//  {
//      cmd.Parameters.Clear();
//      cmd.Parameters.AddWithValue("@idCodigo", i);
//      cmd.Parameters.AddWithValue("@idTipo", identidade);
//      cmd.ExecuteNonQuery();
//      repeticoes--;
//  }
//cmd.Connection.Close();
//Console.WriteLine("Processo finalizado!!");
//}
//catch
//{
//   Console.WriteLine("Algo não funcionou, confira o banco de dados e reinicie o código!");
//}
//Console.ReadKey();






    }
}
