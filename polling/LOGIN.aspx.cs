using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class LOGIN : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


    }

    void StoreSessionInfo()
    {
        String FromUser = TextBox1.Text;
        Session["fromuser"] = FromUser;
    }


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string connetionString = null;
        MySqlConnection conn;
        connetionString = "server=localhost;database=testdb;uid=root;pwd=root;";
        conn = new MySqlConnection(connetionString);
        try
        {
            conn.Open();
            string username = TextBox1.Text;
            string password = TextBox2.Text;
            if (username == "Admin" && password == "pass")
            {
                Response.Redirect("Admin.aspx");
            }
            string qr = "select password from user where username= '"+username+"'";
            MySqlCommand sq = new MySqlCommand(qr, conn);
            MySqlDataReader MyReader;
             MyReader = sq.ExecuteReader();

             if (MyReader.Read())
             {
                 string pswd = (string)MyReader["Password"];
                 if (pswd == password)
                 {
                     StoreSessionInfo();
                     Response.Redirect("Client.aspx");
                 }
                 else
                 {
                     ClientScript.RegisterStartupScript(this.GetType(), "myalert1", "alert('Incorrect Password');", true);
                     //              ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "myalert2", "alert('abcde1')", true);

                     
                 }
             }
             else
             {
                 ClientScript.RegisterStartupScript(this.GetType(), "myalert1", "alert('Incorrect Username or Password');", true);
             }

            conn.Close();
            
        }
        catch (Exception ex)
        {
            TextBox2.Text = ex.Message;
            TextBox1.Text = "Column Not Added";
            Response.Write("<script>alert('login failed');</script>");
          // MsgBox("hii", this.Page, this);

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string connetionString = null;
        MySqlConnection conn;
        connetionString = "server=localhost;database=testdb;uid=root;pwd=root;";
        conn = new MySqlConnection(connetionString);
        try
        {
            conn.Open();
            string username = TextBox1.Text;
            string password = TextBox2.Text;
            string qr = "insert into user(Username, Password) values('"+username+"','"+password+"')";
            MySqlCommand sq = new MySqlCommand(qr, conn);
            sq.ExecuteNonQuery();
            conn.Close();
           
          
        }
        catch (Exception ex)
        {
          TextBox1.Text=  ex.Message;

        }
    }
}



