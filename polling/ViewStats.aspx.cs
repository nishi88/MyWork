using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewStats : System.Web.UI.Page
{
    int A=100;
    int B=100; 
    int C=100; 
    int D=100;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string connetionString = null;
        MySqlConnection conn;
        connetionString = "server=localhost;database=testdb;uid=root;pwd=root;";
        conn = new MySqlConnection(connetionString);
         string qid ="ffffff";
        try
        {
            
          qid = Request["qid"];
          System.Diagnostics.Debug.WriteLine("quuuuuueeeeeeeeeery is" +qid);
            string query = "select * from question where qid="+qid;

            MySqlCommand MC = new MySqlCommand(query, conn);
            MySqlDataReader MyReader;
            conn.Open();
            MyReader = MC.ExecuteReader();
            while (MyReader.Read())
            {
                string ques = (string)MyReader["qn"];
                string o1 = (string)MyReader["choice1"];
                string o2 = (string)MyReader["choice2"];
                string o3 = (string)MyReader["choice3"];
                string o4 = (string)MyReader["choice4"];
                string a1 = (string)MyReader["ScoreA"];
                string a2 = (string)MyReader["ScoreB"];
                string a3 = (string)MyReader["ScoreC"];
                string a4 = (string)MyReader["ScoreD"];
                string ans = (string)MyReader["ans"];
                Label1.Text = o1;
                Label2.Text = o2;
                Label3.Text = o3;
                Label4.Text = o4;
                Label5.Text = ques;
                Label6.Text = "Total Votes : " + a1;
                Label7.Text = "Total Votes : " + a2;
                Label8.Text = "Total Votes : " + a3;
                Label9.Text = "Total Votes : " + a4;
                calculateHeightOfGraphBars(Convert.ToInt32(a1),Convert.ToInt32(a2),Convert.ToInt32(a3),Convert.ToInt32(a4));
            }
            Image1.Height = A;
            Image2.Height = B;
            Image3.Height = C;
            Image4.Height = D;

        }
        catch (Exception expn)
        {

        }
    }

    private void calculateHeightOfGraphBars(int p1, int p2, int p3, int p4)
    {
        try
        {
            int totalVotes = p1 + p2 + p3 + p4;
            A = (Int32)(100 * p1 / totalVotes);
            B = (Int32)(100 * p2 / totalVotes);
            C = (Int32)(100 * p3 / totalVotes);
            D = (Int32)(100 * p4 / totalVotes);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(ex.Message);
        }
    }
}