using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class perz : System.Web.UI.Page
{
    String connStr = ConfigurationManager.ConnectionStrings["VRConnectionString"].ConnectionString;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        String prm=Request.QueryString["prm"].ToString();
        String slid = Session["lid"].ToString();
        if (!Page.IsPostBack)
        {
            try
            {
                con = new SqlConnection(connStr);
                con.Open();
                SqlCommand cmd = new SqlCommand("select pid,picname,catg,dtag from catalog where pid=" + prm, con);
                SqlDataReader dr=cmd.ExecuteReader(CommandBehavior.SingleRow);
                    if(dr.Read())
                    {
                        TextBox1.Text = dr.GetValue(0).ToString();
                        TextBox2.Text = dr.GetValue(1).ToString();
                        TextBox3.Text = dr.GetValue(2).ToString();
                        Image1.ImageUrl = "~/Files/" + TextBox2.Text;
                        TextBox6.Text = dr.GetValue(3).ToString();
                    }
                dr.Close();
                ListBox1.Items.Clear();
                Response.Write("select tagname from tagtable where cid=" + slid + " and picid=" + TextBox1.Text);
                SqlCommand cmd2 = new SqlCommand("select tagname from tagtable where cid=" + slid + " and picid=" + TextBox1.Text , con);
                SqlDataReader dr2 = cmd2.ExecuteReader(CommandBehavior.SingleRow);
                if (dr2.Read())
                {
                    String[] tags = dr2.GetValue(0).ToString().Split(':');
                    for (int i = 0; i < tags.Length; i++)
                    {
                        if(tags[i].Trim()!="")
                        ListBox1.Items.Add(tags[i]);
                    }
                }
                dr2.Close();
            }
            catch (Exception ee)
            {
                Response.Write(ee.Message);
            }
            
            con.Close();
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.Items[1].Selected == true)
        {
            RequiredFieldValidator1.Enabled = false;
            TextBox5.Enabled = false;
            Button1.Enabled = false;
        }
        else
        {
            RequiredFieldValidator1.Enabled = true;
            TextBox5.Enabled = true;
            Button1.Enabled = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String slid = Session["lid"].ToString();
        String prm=Request.QueryString["prm"].ToString();
        try
        {
            con = new SqlConnection(connStr);            
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tagtable values(" + TextBox1.Text + "," + slid + ",'" + TextBox5.Text + "','" + TextBox3.Text + "','" + TextBox6.Text + "')", con);
            cmd.ExecuteNonQuery();
            Label1.Text = "Picture Tagged!";
            Button1.Enabled = false;
        }
        catch (Exception ee)
        {
            Label1.Text = ee.Message;
            con = new SqlConnection(connStr);
            con.Open();
            SqlCommand cmd = new SqlCommand("update tagtable set tagname=tagname+':'+'" + TextBox5.Text + "' where cid=" + slid + " and picid=" + TextBox1.Text, con);
            cmd.ExecuteNonQuery();
            Label1.Text = "Picture Updated!";
            Button1.Enabled = false;
        }
        con.Close();
    }
}