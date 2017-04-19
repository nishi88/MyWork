using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class ViewPoll : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string connetionString = null;
        MySqlConnection conn;
        connetionString = "server=localhost;database=testdb;uid=root;pwd=root;";
        conn = new MySqlConnection(connetionString);
        conn.Open();
        string qr = "select * from question";
        MySqlCommand sq = new MySqlCommand(qr, conn);
            MySqlDataReader MyReader;
             MyReader = sq.ExecuteReader();
             while (MyReader.Read())
             {
                 int qid = (Int32)MyReader["qid"];
                 string ques = (string)MyReader["qn"];
                 string o1 = (string)MyReader["choice1"];
                 string o2 = (string)MyReader["choice2"];
                 string o3 = (string)MyReader["choice3"];
                 string o4 = (string)MyReader["choice4"];
                 string ans = (string)MyReader["ans"];
                 if (ans == "")
                 {
                     //Label l = new Label();
                     //int i = (int)MyReader["qid"];
                     //l.ID = Convert.ToString(i);
                     //l.Text = (String)MyReader["qn"];
                     //this.Controls.Add(l);                   
                     //l.ForeColor = System.Drawing.Color.Red;


                     TableRow row = new TableRow();
                     TableCell cell1 = new TableCell();
                     TableCell cell2 = new TableCell();
                     TableCell cell3 = new TableCell();
                     cell1.Text = ques;                     
                     cell2.Text = "Polls in Progress";
                     cell3.Text = "  ";
                     row.Cells.Add(cell1);
                     row.Cells.Add(cell2);
                     row.Cells.Add(cell3);
                     Table1.Rows.Add(row);
                     //               myDiv.InnerHtml = "";

                 }
                 else {
                     TableRow row = new TableRow();
                     TableCell cell1 = new TableCell();
                     TableCell cell2 = new TableCell();
                     TableCell cell3 = new TableCell();
                     string cellval = "";
                     if (ans == "A") cellval = o1;
                     if (ans == "B") cellval = o2;
                     if (ans == "C") cellval = o3;
                     if (ans == "D") cellval = o4;
                     cell1.Text = ques ;
                     cell2.Text = cellval;
                     cell3.Text = "<a href=\"ViewStats.aspx?qid="+qid+"\">View Stats</a>";
                     row.Cells.Add(cell1);
                     row.Cells.Add(cell2);
                     row.Cells.Add(cell3);
                     Table1.Rows.Add(row);
                 
                 }
             }
             conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
     {
        
        }
    
}