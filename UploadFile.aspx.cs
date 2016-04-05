using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class SecureFile : System.Web.UI.Page
{
    String connStr = ConfigurationManager.ConnectionStrings["VRConnectionString"].ConnectionString;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        //String uid = Session["luid"].ToString();
        //TextBox1.Text = uid;
        if (!Page.IsPostBack)
        {
            con = new SqlConnection(connStr);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from category", con);
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.SequentialAccess);
                DropDownList1.Items.Clear();
                //DropDownList1.Items.Add("Select");
                while (dr.Read())
                {
                    DropDownList1.Items.Add(dr.GetValue(0).ToString());
                }
                dr.Close();
            }
            catch (Exception e2)
            {

            }
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        con = new SqlConnection(connStr);
        con.Open();
        String spath = "~/Files/";
        String uid = TextBox1.Text;  //Session["luid"].ToString();
        int npid = 1;

        SqlCommand cmd2 = new SqlCommand("select max(pid) from catalog", con);
        SqlDataReader dr2 = cmd2.ExecuteReader(CommandBehavior.SingleResult);
        try
        {
            if (dr2.Read())
            {
                npid = Convert.ToInt32(dr2.GetValue(0)) + 1;
            }
        }
        catch (Exception e2)
        {
            npid = 1;
        }

        dr2.Close();

        try
        {                       
            String pat = Server.MapPath(spath);
            if (FileUpload1.HasFile)
            {
                String fnam = FileUpload1.FileName;
                FileUpload1.SaveAs(pat + fnam);
                Label1.Text = "File has been uploaded successfully!";
                SqlCommand cmd = new SqlCommand("insert into catalog values('" + uid + "','" + fnam + "','" + DropDownList1.Text + "'," + npid  + ")", con);
                cmd.ExecuteNonQuery();
                Label1.Text = "File uploaded successfully!";
            }
            else
            {
                Label1.Text = "Select a file upload!";
            }
            
        }
        catch (Exception ee)
        {
            Label1.Text = ee.Message;
        }
        con.Close();
    }
}