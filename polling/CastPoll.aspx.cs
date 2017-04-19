using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class CastPoll : System.Web.UI.Page
{
    MySqlConnection conn;
    string qid;
    protected void Page_Load(object sender, EventArgs e)
    {
        qid = Request["qid"];
        string connetionString = null;
        
        connetionString = "server=localhost;database=testdb;uid=root;pwd=root;";
        conn = new MySqlConnection(connetionString);
        conn.Open();
        string qr = "select *  from question where qid='" + qid+"'" ;
      // System.Diagnostics.Debug.WriteLine("quuuuuueeeeeeeeeery is" + qr);
        MySqlCommand sq = new MySqlCommand(qr, conn);
        MySqlDataReader MyReader;
        MyReader = sq.ExecuteReader();

        while (MyReader.Read())
        {
            Label1.Text = (string)MyReader["qn"]+" ?";
            RadioButton1.Text = (string)MyReader["choice1"];
            RadioButton2.Text = (string)MyReader["choice2"];
            RadioButton3.Text = (string)MyReader["choice3"];
            RadioButton4.Text = (string)MyReader["choice4"];

        }
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String fromuser;
        try
        {
            fromuser = Session["fromuser"].ToString();
        }
        catch (NullReferenceException excptn)
        {
            fromuser = "mayank";
        }


        conn.Open();
        string qr = "update user set Q"+qid+" ='1' where username= '"+fromuser+"'";
         System.Diagnostics.Debug.WriteLine("quuuuuueeeeeeeeeery is" + qr);
        MySqlCommand sq = new MySqlCommand(qr, conn);
          int flag =sq.ExecuteNonQuery();
        conn.Close();
        conn.Open();
        try
        {
          
            String fetchval = fetchRadioButtonValue();
   
            string insertQuery = "insert into votes ( Q" + qid + " ) values('" + fetchval + "')";
            System.Diagnostics.Debug.WriteLine("quuuuuueeeeeeeeeery is" + insertQuery);
            MySqlCommand sq2 = new MySqlCommand(insertQuery, conn);
          //  System.Diagnostics.Debug.WriteLine("qxfngxynhcdrthcbfvyjrncfvybhvfhyfvy@@@@@@@@@@@@@@@@@@@");
            int flag2 = sq2.ExecuteNonQuery();
            System.Diagnostics.Debug.WriteLine("qxfngxynhcdrthcbfvyjrncfvybhvfhyfvy@@@@@@@@@@@@@@@@@@@ "+ flag2);
            conn.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "Success", "alert('Thank you for pasting your opinion');", true);
            Response.Redirect("Client.aspx");
        }
        catch (Exception en)
        {
            
        }
    }

    private string fetchRadioButtonValue()
    {
        if (RadioButton1.Checked)
            return "A";
        if (RadioButton2.Checked)
        {
            return "B";        
        }
        if (RadioButton3.Checked)
            return "C";
        if (RadioButton4.Checked)
            return "D";
        else
            return "NOTA";

    }
}