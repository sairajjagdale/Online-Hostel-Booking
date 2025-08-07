using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class Admin_AdminRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /***********************************************Admin registeration**************/
    protected void SubmitRecord()
    {

        try
        {
            SqlConnection con = new SqlConnection();
            String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = conString;
            con.Open();


            String SqlQuery = "INSERT INTO Admin_Master(Admin_FullName,Admin_Name,Admin_Password,Admin_Mobile,Admin_Email) VALUES (@Admin_FullName,@Admin_Name,@Admin_Password,@Admin_Mobile,@Admin_Email)";


            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = SqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@Admin_FullName", SqlDbType.VarChar).Value = TxtFullName.Text;
            cmd.Parameters.Add("@Admin_Name", SqlDbType.VarChar).Value = TxtAdminName.Text;
            cmd.Parameters.Add("@Admin_Password", SqlDbType.VarChar).Value = TxtAdminPassword.Text;
            cmd.Parameters.Add("@Admin_Mobile", SqlDbType.VarChar).Value = TxtAdminMobile.Text;
            cmd.Parameters.Add("@Admin_Email", SqlDbType.VarChar).Value = TxtAdminEmail.Text;
            cmd.ExecuteNonQuery();



            LblMessage.Text = "Successfully Created ...";

            con.Close();

        }
        catch (SqlException se)
        {

            LblMessage.Text = se.Message;
        }

    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminRegistration.aspx");
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        SubmitRecord();
    }
}