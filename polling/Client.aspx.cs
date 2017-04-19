using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using MySql.Data.MySqlClient;
public partial class Client : System.Web.UI.Page
{

    void RetrieveSessionInfo()
    {
        
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
         string connetionString = null;
        MySqlConnection conn;
        connetionString = "server=localhost;database=testdb;uid=root;pwd=root;";
        conn = new MySqlConnection(connetionString);
        conn.Open();
        string count = "select count(*) as count from question where ans='' ";
        MySqlCommand sq = new MySqlCommand(count, conn);
            MySqlDataReader MyReader;
             MyReader = sq.ExecuteReader();
      //  String[] a = new string [];
             string count2 = "";
             int cnt = 0;
             while (MyReader.Read())
             {
                  count2 = Convert.ToString(MyReader["count"]);
                  cnt = Convert.ToInt32(count2);
  
             }
             String[] columnNames = new String[cnt];
             conn.Close();
             conn.Open();
             String q3 = "select qid from question where ans =''";
             MySqlCommand sq2 = new MySqlCommand(q3, conn);
             MySqlDataReader MyReader2;
             MyReader2 = sq2.ExecuteReader();
             int a = 0;
             while (MyReader2.Read())
             {
                 columnNames[a] = "Q" +Convert.ToString(MyReader2["qid"]);
                 a++;
             }

             conn.Close();


        conn.Open();
          String fromuser ;
        try
        {
         fromuser = Session["fromuser"].ToString();
        }
        catch (NullReferenceException excptn)
        {
            fromuser = "mayank";
        }
        string qry = "select * from user where username ='"+fromuser+"'";
        MySqlCommand sq3 = new MySqlCommand(qry, conn);
            MySqlDataReader MyReader3;
             MyReader3 = sq3.ExecuteReader();
             int j = 0;
             String[] columnNames2 = new String[cnt]; 
             while (MyReader3.Read())
             {
                 System.Diagnostics.Debug.WriteLine("jjjjjjjjjkkkkkkkkkjjjjj is " + j);
                 string check="";
                 
                 for ( int i=0;i<cnt;i++)
                 {
                     check = (string)MyReader3[columnNames[i]];
                     if (check == "0")
                     {
                         columnNames2[j] = columnNames[i];
                         j++;
                         System.Diagnostics.Debug.WriteLine("jjjjjjjjjjjjjj is " + j);
                     }

                 }
                 
             }
             conn.Close();
             if (String.Compare(columnNames2[0], null) == 0) //compare returns 0 if first arguement and second arguement are both null
             {
                 //do nothing    
             }
             else
             {
                 conn.Open();
                 String inPart = DeleteThatQ(columnNames2, j);   //To remove the q from column names
                 String qrqr = "select qn , qid from question where qid in(" + inPart + ")";
                 System.Diagnostics.Debug.WriteLine("quuuuuueeeeeeeeeery is" + qrqr);
                 MySqlCommand sq4 = new MySqlCommand(qrqr, conn);
                 MySqlDataReader MyReader4;
                 MyReader4 = sq4.ExecuteReader();
                 while (MyReader4.Read())
                 {
                     TableRow row = new TableRow();
                     TableCell cell1 = new TableCell();
                     string name = Convert.ToString(MyReader4["qid"]);
                     string questn = (string)MyReader4["qn"];
                     cell1.Text = "<a href='CastPoll.aspx?qid=" + name + "'>" + questn + "</a>";
                     row.Cells.Add(cell1);
                     Table1.Rows.Add(row);
                     //               myDiv.InnerHtml = "";

                 }
                 conn.Close();
             }
             
            
    }







    String DeleteThatQ(string[] z, int k)
    {
        String p="";
        for (int i = 0; i < k; i++)
        {
            z[i] = z[i].Substring(1, z[i].Length - 1);
            p += "'" + z[i] + "',";
        }
       p= p.Substring(0, p.Length - 1);
        return p;
    }
}