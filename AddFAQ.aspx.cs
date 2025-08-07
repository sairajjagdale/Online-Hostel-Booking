using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class Admin_AddFAQ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
        protected void SubmitRecord()
    {

        try
        {
            SqlConnection con = new SqlConnection();
           String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString =conString;
            con.Open();


            String SqlQuery = "INSERT INTO FAQ_Master(FAQ_Question,FAQ_Answer) VALUES (@FAQ_Question,@FAQ_Answer)";


            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = SqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@FAQ_Question", SqlDbType.VarChar).Value = TxtFAQQuestion.Text;
            cmd.Parameters.Add("@FAQ_Answer", SqlDbType.VarChar).Value = TxtAnswer.Text;
            cmd.ExecuteNonQuery();


            LblMessage.Text = "Successfully Added...";

            con.Close();

        }
        catch (SqlException se)
        {

            LblMessage.Text = se.Message;
        }

    }


        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            SubmitRecord();
        }
        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddFAQ.aspx");
        }
}
    
