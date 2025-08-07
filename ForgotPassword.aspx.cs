using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    /****   To get OTP ****/

    protected int GetOtp(int min, int max)
    {

        Random random = new Random();
        return random.Next(min, max);
    }
    /****  to change the password***/
    protected void ChangePassword()
    {

        try
        {
            String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "UPDATE SET User_Password =@User_Password WHERE User_Mobile=@User_Mobile AND User_Email=@User_Email";
            cmd.Parameters.Add("@User_Password", SqlDbType.VarChar).Value = TxtNewPassword.Text;
            cmd.Parameters.Add("@User_Mobile", SqlDbType.VarChar).Value = TxtMobile.Text;
            cmd.Parameters.Add("@User_Name", SqlDbType.VarChar).Value = TxtUserName.Text;
            cmd.ExecuteNonQuery();
            LblMessage.Text = "Successfully Changed Password..";

        }

        catch (SqlException se)
        {

            LblMessage.Text = se.Message;
        }
    }
    protected void LnkBtnSendOtp_Click(object sender, EventArgs e)
    {
        LblOtpValue.Text = GetOtp(123456, 99999).ToString();
    }
}





