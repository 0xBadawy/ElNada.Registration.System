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

        /*



        ; CREATE TABLE `SystemUsers`(
            `User_ID` INT AUTO_INCREMENT NOT NULL,
            `User_Name` VARCHAR(50) NULL,
            `User_Password` VARCHAR(50) NULL,
            `User_Type` VARCHAR(20) NULL,
            PRIMARY KEY (`User_ID`)
        ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

         */

        private void button1_Click(object sender, EventArgs e)
        {
            int id = 4;
            string name = "3";
            string password = "22";
            string type = "22";

            string sql = "INSERT INTO SystemUsers ( User_Name, User_Password, User_Type) VALUES ( @name, @password, @type);";

            var parameters = new Dictionary<string, object>
            {
                { "@name", name },
                { "@password", password },
                { "@type", type }
            };

            Config.myconnection.set_myconnection();
            Config.myconnection.add_sql(sql, parameters);
            MessageBox.Show("Data Added Successfully");


        }

        // test connection

    }
}
