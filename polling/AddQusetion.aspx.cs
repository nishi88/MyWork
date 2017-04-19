using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class AddQusetion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string connetionString = null;
        MySqlConnection conn;
        connetionString = "server=localhost;database=testdb;uid=root;pwd=root;";
        conn = new MySqlConnection(connetionString);
        try
        {
            String ques = TextBox2.Text;
            String option1 = TextBox1.Text;
            String option2 = TextBox3.Text;
            String option3 = TextBox4.Text;
            String option4 = TextBox5.Text;

            string query = "insert into question(qn,choice1, choice2, choice3, choice4 ) values('" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "');";
            //mysql> create table Question (qid int primary key auto_increment, qn varchar(5000), choice1 varchar(100), choice2 varchar(100), choice3 varchar(100), choice4 varchar(100));            
            MySqlCommand MC = new MySqlCommand(query, conn);
            MySqlDataReader Myreader;
            conn.Open();
            Myreader = MC.ExecuteReader();
            while (Myreader.Read())
            {
            }

            long last_id = MC.LastInsertedId;
            conn.Close();
            conn.Open();
            string query2 = "ALTER TABLE votes add column Q" + last_id + " varchar(10) default '0' ";
            MySqlCommand MC2 = new MySqlCommand(query2, conn);
            MC2.ExecuteNonQuery();
            TextBox1.Text = "Column Added";

            conn.Close();
            conn.Open();
            string query3 = "ALTER TABLE user add column Q" + last_id + " varchar(10) default '0'";
            MySqlCommand MC3 = new MySqlCommand(query3, conn);
            MC3.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";

            conn.Close();
           
            ClientScript.RegisterStartupScript(this.GetType(), "myalert1", "alert('Question Posted Successfully');", true);
          
        }
        catch (Exception ex)
        {
    //        TextBox5.Text = ex.Message;
        }
    }
}