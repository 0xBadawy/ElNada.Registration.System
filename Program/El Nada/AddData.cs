using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace El_Nada
{
    public partial class AddData : Form
    {
        public AddData()
        {
            InitializeComponent();
        }



        private void button1_Click(object sender, EventArgs e)
        {
            string name = "3";
            string password = "22";
            string type = "22";

            string sql = "INSERT INTO SystemUsers (User_Name, User_Password, User_Type) VALUES (@name, @password, @type);";

            var parameters = new Dictionary<string, object>
            {
                { "@name", name },
                { "@password", password },
                { "@type", type }
            };

            try
            {
                Config.myconnection.set_myconnection();
                Config.myconnection.add_sql(sql, parameters);

                string sqlID = "SELECT LAST_INSERT_ID();";
                var lastId = Config.myconnection.execute_scalar(sqlID, new Dictionary<string, object>());

                MessageBox.Show("Data Added Successfully");
                MessageBox.Show("ID of inserted data is: " + lastId);
            }
            catch (Exception ex)
            {
                MessageBox.Show("An error occurred: " + ex.Message);
            }
            finally
            {
                if (Config.myconnection.connection != null && Config.myconnection.connection.State == System.Data.ConnectionState.Open)
                {
                    Config.myconnection.connection.Close();
                }
            }


        }


        private void LoadData()
        {

         

        }





    }


    

    // test connection

}

