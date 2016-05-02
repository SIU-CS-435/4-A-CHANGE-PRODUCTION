using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

public partial class del : System.Web.UI.Page
{
    String connStr = ConfigurationManager.ConnectionStrings["VRConnectionString"].ConnectionString;
    SqlConnection con;

    /*   protected void Page_Load(object sender, EventArgs e)
       {
           if (!Page.IsPostBack)
           {
               try
               {
                   con = new SqlConnection(connStr);
                   con.Open();
                   String prm = Request.QueryString["prm"];
                   SqlCommand cmd = new SqlCommand("delete from catalog where pid=" + prm, con);
                   cmd.ExecuteNonQuery();
                   Label1.Text = "File removed successfully!";
               }
               catch (Exception ee)
               {
                   Label1.Text="Check file!";
                   Response.Write(ee.Message);
               }
               con.Close();
           }
       }   */
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                DialogResult result = MessageBox.Show("Do u want to delete image?", "Confirm Delete",
                    MessageBoxButtons.YesNo);
                if (result == DialogResult.Yes)
                {

                    con = new SqlConnection(connStr);
                    con.Open();
                    String prm = Request.QueryString["prm"];
                    SqlCommand cmd = new SqlCommand("delete from catalog where pid=" + prm, con);
                    cmd.ExecuteNonQuery();
                    Label1.Text = "Image removed successfully!";
                    con.Close();
                }
                else
                {

                    Label1.Text = "you are decided not to remove the image";
                }
            }
            catch (Exception ee)
            {
                Label1.Text = "Check file!";
                Response.Write(ee.Message);
            }

        }
    }

}