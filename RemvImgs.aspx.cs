using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class RemvImgs : System.Web.UI.Page
{
    String connStr = ConfigurationManager.ConnectionStrings["VRConnectionString"].ConnectionString;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                con = new SqlConnection(connStr);
                con.Open();
                SqlCommand cmd = new SqlCommand("select pid,catg,picname,dtag from catalog order by pid", con);
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.SequentialAccess);
                TableRow tr = new TableRow();
                TableCell tc = new TableCell();
               
                tc.Text = "Pic ID";
                tr.Cells.Add(tc);
                tc = new TableCell();
                tc.Text = "Category";
                tr.Cells.Add(tc);
                tc = new TableCell();                
                tc.Text = "Pic";
                tr.Cells.Add(tc);
                tc = new TableCell();
                tc.Text = "Default Tag";
                tr.Cells.Add(tc);
                Table1.Rows.Add(tr);

                while (dr.Read())
                {
                     tr = new TableRow();
                     tc = new TableCell();
                    String pid=dr.GetValue(0).ToString();
                    tc.Text = "<a href='del.aspx?prm=" + pid + "'>" + pid + "</a>";
                    tr.Cells.Add(tc);
                    tc = new TableCell();
                    tc.Text = dr.GetValue(1).ToString();
                    tr.Cells.Add(tc);
                    tc = new TableCell();
                    String pic=dr.GetValue(2).ToString();
                    tc.Text = "<img src='Files/" + pic + "' width=100 height=100>";
                    tr.Cells.Add(tc);
                    tc = new TableCell();
                    tc.Text = dr.GetValue(3).ToString();
                    tr.Cells.Add(tc);
                    Table1.Rows.Add(tr);
                }
                dr.Close();
            }
            catch (Exception ee)
            {
                Response.Write(ee.Message);
            }
            con.Close();
        }
    }
}