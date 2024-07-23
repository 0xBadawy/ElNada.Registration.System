using System;
using System.Collections.Generic;
using MySql.Data.MySqlClient;

namespace El_Nada.Config
{
    internal class myconnection
    {
        public static MySqlConnection connection;
        static readonly string server = "elorca.website";
        static readonly string database = "u434118186_Test_Wind";
        static readonly string uid = "u434118186_Badawy";
        static readonly string password = "+d4aT583I";
        static readonly string connectionString = $"SERVER={server};DATABASE={database};UID={uid};PASSWORD={password};";
        static readonly string connectionStringLocal = "SERVER=localhost;DATABASE=db_elnada;UID=root;PASSWORD=;";

        public static void set_myconnection()
        {
            try
            {
                connection = new MySqlConnection(connectionStringLocal);
                connection.Open();
            }
            catch (Exception ex)
            {
                Console.WriteLine("An error occurred: " + ex.Message);
                // Optionally, log the exception or handle it as needed
            }
        }

        public static void add_sql(string sql, Dictionary<string, object> parameters)
        {
            try
            {
                using (MySqlCommand cmd = new MySqlCommand(sql, connection))
                {
                    foreach (var param in parameters)
                    {
                        cmd.Parameters.AddWithValue(param.Key, param.Value);
                    }

                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("An error occurred: " + ex.Message);
                // Optionally, log the exception or handle it as needed
            }
            finally
            {
                if (connection.State == System.Data.ConnectionState.Open)
                {
                    connection.Close();
                }
            }
        }
    }
}
