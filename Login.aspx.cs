using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /***********************  check user login    **********************/


    protected void CheckUserLogin()
    {

        try
        {
            SqlConnection con = new SqlConnection();
            String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = conString;
            con.Open();

            string SqlQuery = "SELECT * FROM User_Master WHERE User_Email=@User_Email AND User_Password = @User_Password";





            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = SqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@User_Email", SqlDbType.VarChar).Value = TxtUserName.Text;
            cmd.Parameters.Add("@User_Password", SqlDbType.VarChar).Value = TxtPassword.Text;
            SqlDataReader dr = cmd.ExecuteReader();



            if (dr.Read() && dr.HasRows)
            {
                Session["User_FullName"] = dr["User_FullName"].ToString();
                Session["User_Email"] = dr["User_Email"].ToString();
                Session["User_Id"] = dr["User_Id"].ToString();
                Session["User_PhotoPath"] = dr["User_PhotoPath"].ToString();
                Response.Redirect("Home.aspx");
            }
            else
            {
                LblMessage.Text = "Invalid user name AND/OR Password";
            }
        }




        catch (SqlException se)
        {

            LblMessage.Text = se.Message;
        }
    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        CheckUserLogin();
    }
}

