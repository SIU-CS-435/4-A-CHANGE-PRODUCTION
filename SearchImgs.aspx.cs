using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class SearchImgs : System.Web.UI.Page
{
    String connStr = ConfigurationManager.ConnectionStrings["VRConnectionString"].ConnectionString;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Table1.Rows.Clear();
        String slid = Session["lid"].ToString();
        int fg = 0;
        Label1.Text = "";
        Session.Add("srchitm", TextBox1.Text);
        SqlConnection con2 = new SqlConnection(connStr);
        con2.Open();
        SqlCommand cmd3 = new SqlCommand("delete from temp", con2);
        cmd3.ExecuteNonQuery();
        con2.Close();
        try
        {
            con = new SqlConnection(connStr);
            con.Open();
            if (RadioButtonList1.Items[0].Selected == true)
            {
                SqlCommand cmd = new SqlCommand("select pid,catg,picname,dtag from catalog  where dtag like('" + TextBox1.Text + "%') order by pid", con);
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.SequentialAccess);
                TableRow tr = new TableRow();
                TableCell tc = new TableCell();
                int nr = 0;
                while (dr.Read())
                {
                    fg = 1;

                    tc = new TableCell();
                    String pid = dr.GetValue(0).ToString();

                    tc = new TableCell();
                    String pic = dr.GetValue(2).ToString();
                    tc.Text = "<A href='perz.aspx?prm=" + pid + "'>" + "<img src=files/" + pic + " width=100 height=100>" + "</a>";
                    tr.Cells.Add(tc);
                    nr = nr + 1;
                    if (nr % 5 == 0)
                        tr = new TableRow();
                    Table1.Rows.Add(tr);
                }
                dr.Close();
                if (fg == 0)
                    Label1.Text = "No Image Found!";
            }
            else // Personalized
            {
                String tcat, tdtag;
                tcat = tdtag = "";
                //Response.Write("select tagname,catid,dtag from tagtable  where cid =" + slid + " and dtag like('" + TextBox1.Text + "%')");
                SqlCommand cmd = new SqlCommand("select tagname,catid,dtag from tagtable  where cid =" + slid + " and tagname like('" + TextBox1.Text + "%')", con);
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.SequentialAccess);
                while (dr.Read())
                {
                    int fg5 = 0;
                    String[] tags = dr.GetValue(0).ToString().Split(':');
                   // Response.Write("<br>Tags.length--->" + tags.Length.ToString() + tags[0].ToString());
                    for (int i = 0; i < tags.Length; i++)
                    {
                        if (tags[i].ToLower().Equals(TextBox1.Text.ToLower()))
                        {
                            fg5 = 1;
                        }
                    }

                    if (fg5 == 0)
                    {
                        if (tags[0].ToLower().Equals(TextBox1.Text.ToLower()))
                        {
                            fg5 = 1;
                        }
                    }

                    con2.Open();
                    if (fg5 == 1)
                    {

                        SqlCommand cmd2 = new SqlCommand("insert into temp values('" + dr.GetValue(1).ToString() + "','" + dr.GetValue(2).ToString() + "')", con2);
                        cmd2.ExecuteNonQuery();

                    }


                    /////////////////
                    int fg2 = 0;

                    int nr2 = 0;
                    SqlCommand cmd20 = new SqlCommand("select count(*) from tagtable where cid=" + slid, con2);
                    SqlDataReader dr20 = cmd20.ExecuteReader(CommandBehavior.SingleResult);
                    if (dr20.Read())
                    {
                        nr2 = Convert.ToInt32(dr20.GetValue(0).ToString());
                    }
                    dr20.Close();

                    ////////

                    SqlCommand cmd20t = new SqlCommand("select count(*) from temp", con2);
                    SqlDataReader dr20t = cmd20t.ExecuteReader(CommandBehavior.SingleResult);
                    if (dr20t.Read())
                    {
                        nr2 = Convert.ToInt32(dr20t.GetValue(0).ToString());
                    }
                    dr20t.Close();
                    ///////

                    String[] recs = new String[nr2];
                    int k = 0;
                    SqlCommand cmd21 = new SqlCommand("select * from temp", con2);
                    SqlDataReader dr21 = cmd21.ExecuteReader(CommandBehavior.SingleResult);
                    if (dr21.Read())
                    {
                        recs[k] = dr21.GetValue(0).ToString() + ":" + dr21.GetValue(1).ToString();
                        k++;
                    }
                    dr21.Close();
                  //  Response.Write("aaaaa" + recs.Length.ToString());
                    for (int pp = 0; pp < recs.Length; pp++)
                    {
                        String[] si = null;
                      // Response.Write("bbbbbb");
                        if (!recs[pp].Equals(""))
                        {
                            si = recs[pp].Split(':');

                            //Response.Write("<br>select pid,catg,picname,dtag from catalog  where dtag like('" + si[1] + "%') and catg ='" + si[0] + "') order by pid <br>");

                            SqlCommand cmd6 = new SqlCommand("select pid,catg,picname,dtag from catalog  where dtag like('" + si[1] + "%') and catg like('" + si[0] + "%') order by pid", con2);

                            SqlDataReader dr6 = cmd6.ExecuteReader(CommandBehavior.SequentialAccess);

                            TableRow tr = new TableRow();
                            TableCell tc = new TableCell();
                            int nr = 0;

                            while (dr6.Read())
                            {
                                fg2 = 1;

                                tc = new TableCell();
                                String pid = dr6.GetValue(0).ToString();

                                tc = new TableCell();
                                String pic = dr6.GetValue(2).ToString();
                                tc.Text = "<A href='perz.aspx?prm=" + pid + "'>" + "<img src=files/" + pic + " width=100 height=100>" + "</a>";
                                tr.Cells.Add(tc);
                                nr = nr + 1;
                                if (nr % 5 == 0)
                                    tr = new TableRow();
                                Table1.Rows.Add(tr);
                            }
                            dr6.Close();


                            /////

                            SqlCommand cmd61 = new SqlCommand("select pid,catg,picname,dtag from catalog  where dtag like('" + si[1] + "%') and catg not like('" + si[0] + "%') order by pid", con2);

                            SqlDataReader dr61 = cmd61.ExecuteReader(CommandBehavior.SequentialAccess);

                            tr = new TableRow();
                            tc = new TableCell();
                            nr = 0;

                            while (dr61.Read())
                            {
                                fg2 = 1;

                                tc = new TableCell();
                                String pid = dr61.GetValue(0).ToString();

                                tc = new TableCell();
                                String pic = dr61.GetValue(2).ToString();
                               tc.Text = "<A href='perz.aspx?prm=" + pid + "'>" + "<img src=files/" + pic + " width=100 height=100>" + "</a>";
                                tr.Cells.Add(tc);
                                nr = nr + 1;
                                if (nr % 5 == 0)
                                    tr = new TableRow();
                                Table1.Rows.Add(tr);
                            }
                            dr61.Close();

                            /////


                            if (fg2 == 0)
                                Label1.Text = "No Image Found!";
                        }
                    }
                    ////////////////

                    con2.Close();
                }
            } // end else
        }
        catch (Exception ee)
        {
            Response.Write(ee.Message);
        }

        con.Close();
        con2.Close();
    }
}