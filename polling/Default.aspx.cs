using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class _Default : System.Web.UI.Page
{
    string connetionString = null;
    MySqlConnection conn;
    int A, B, C, D;
    String count1;

     string declareResult(String s)
    {
         A = CountVote(s, "A");
         B = CountVote(s, "B");
         C = CountVote(s, "C");
         D = CountVote(s, "D");
        int max = A;
        if (B > max) max = B;
        if (C > max) max = C;
        if (D > max) max = D;
        if (max == A) return "A";
        if (max == B) return "B";
        if (max == C) return "C";
        if (max == D) return "D";
        else return "";

    }



    int CountVote(String s, String option)
    {

        conn.Open();
        string qr3 = "select count(*) as count from votes where Q" + s + "='" + option + "'";
        MySqlCommand sq1 = new MySqlCommand(qr3, conn);
        MySqlDataReader MyReader;
        MyReader = sq1.ExecuteReader();
        while (MyReader.Read())
        {
            int count = Convert.ToInt32(MyReader["count"]);
            conn.Close();
            return count;
        }
        conn.Close();
        return -1;


    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        connetionString = "server=localhost;database=testdb;uid=root;pwd=root;";
        conn = new MySqlConnection(connetionString);

       string  qid = Request["resultid"];
        count1=declareResult(qid);
        conn.Open();
        String id = qid;

        String qr = "update question set ans='"+count1+"',ScoreA = '" +A+"',ScoreB='"+B+"',ScoreC='"+C+"',ScoreD='"+D+"'where qid='"+qid+"'" ;
        MySqlCommand sq1 = new MySqlCommand(qr, conn);
        int op = sq1.ExecuteNonQuery();
        if(op==1)
            ClientScript.RegisterStartupScript(this.GetType(), "Success", "alert('Result Deployed');", true);
        
        System.Diagnostics.Debug.WriteLine("quuuuuueeeeeeeeeery is" + qr);
        
        Response.Redirect("UploadResult.aspx");

    }
   

}