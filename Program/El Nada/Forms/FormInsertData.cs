using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using DevExpress.XtraEditors;
//Update with the actual namespace for your data models
using El_Nada.Config;


namespace El_Nada.Forms
{
    public partial class FormInsertData : Form
    {
        private Config.myconnection db ;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit;

        public FormInsertData()
        {
            InitializeComponent();
            db = new Config.myconnection();
            LoadData();
        }

 

        private void LoadData()
        {

            string sql = "SELECT * FROM SystemUsers";
            Config.myconnection.set_myconnection();
            var users = Config.myconnection.get_data(sql, new Dictionary<string, object>());

            // Assuming users is a List<Dictionary<string, object>>:
            // You may need to adjust the following lines depending on your actual data structure.
            checkedComboBoxEdit1.Properties.DataSource = users;

            // message box to check the data of users
            MessageBox.Show(users[3]["User_ID"].ToString() +"\n"+
                users[3]["User_Name"].ToString() + "\n" 
                );


            checkedComboBoxEdit1.Properties.DisplayMember = "Ufsd";

            checkedComboBoxEdit1.Properties.ValueMember = "Id";

        }



        private void simpleButton1_Click(object sender, EventArgs e)
        {
            MessageBox.Show(comboBoxEdit1.Text);
        }
    }
}
