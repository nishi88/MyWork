using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UploadResult : System.Web.UI.Page
{
    String divInnerHtmlContent;
    string connetionString = null;
    MySqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        //  magicSection.InnerHtml = "  <div class=\"panel panel-default\"><div class=\"panel-heading accordion-caret\"><h4 class=\"panel-title\"><a class=\"accordion-toggle collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapseFour\">Nam convallis pellentesque nisl</a></h4></div><div id=\"collapseFour\" class=\"panel-collapse collapse\"><div class=\"panel-body\">Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra ultricies in, diam. Sed arcu. Cras consequat.</div></div></div>";

      
        connetionString = "server=localhost;database=testdb;uid=root;pwd=root;";
        conn = new MySqlConnection(connetionString);
        conn.Open();
        string qr1 = "select * from question where ans='' ";
        MySqlCommand sq1 = new MySqlCommand(qr1, conn);
        MySqlDataReader MyReader;
        MyReader = sq1.ExecuteReader();
        int i = 0;
        while (MyReader.Read())
        {
            int id = (Int32)MyReader["qid"];
            string qn =  (String)MyReader["qn"];
            string o1 =  (String)MyReader["choice1"];
            string o2 =  (String)MyReader["choice2"];
            string o3 =  (String)MyReader["choice3"];
            string o4 =  (String)MyReader["choice4"];
            divInnerHtmlContent += "  <div class=\"panel panel-default\"><div class=\"panel-heading accordion-caret\"><h4 class=\"panel-title\"><a class=\"accordion-toggle collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapseThree"+i+"\">Poll Ques :" + qn + "?</a></h4></div><div id=\"collapseThree"+i+"\" class=\"panel-collapse collapse\"><div class=\"panel-body\">A. " + o1 + "<br/> B. " + o2 + "<br/>C. " + o3 + "<br/> D. " + o4 + "     <a href='Default.aspx?resultid="+id+"'  runat = 'server'>    Generate Result</a><br/></div></div></div>";

            magicSection.InnerHtml = divInnerHtmlContent;
            i++;
          // Button ButtonChange = new Button();
           // ButtonChange.Text = "Change";
            //ButtonChange.ID = "change_" + i.ToString();
            //ButtonChange.Font.Size = FontUnit.Point(7);
            //ButtonChange.ControlStyle.CssClass = "button";
          //  ButtonChange.Click += new EventHandler(test);
        }

    }

    string declareResult(String s)
    {
        int A = CountVote(s, "A");
        int B = CountVote(s, "B");
        int C = CountVote(s, "C");
        int D = CountVote(s, "D");
        int max =A;
        if (B > max) max = B;
        if (C > max) max = C;
        if (D > max) max = D;
        if (max == A) return "A";
        if (max == B) return "B";
        if (max == C) return "C";
        if (max == D) return "D";
        else return "";
         
    }

    

   int CountVote(String s,String option) {

        conn.Open();
        string qr3 = "select count(*) as count from votes where Q"+s+"='"+option+"'";
         MySqlCommand sq1 = new MySqlCommand(qr3, conn);
        MySqlDataReader MyReader;
        MyReader = sq1.ExecuteReader();
        while (MyReader.Read())
        {
            int count =Convert.ToInt32( MyReader["count"]);
            conn.Close();
            return count;
        }
        conn.Close();
        return -1;
        
    
    }
}