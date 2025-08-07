using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["User_Id"] != null)
            {
                lblWelcome.Text = "WELCOME " + Session["User_FullName"].ToString();

                LnkBtnLogout.Enabled = true;
                LnkBtnLogin.Enabled = false;
                LnkBtnSignUp.Enabled = false;
                ImgProfile.ImageUrl = Session["User_PhotoPath"].ToString();
            }
            else
            {
                lblWelcome.Text = "Welcome Guest";
                LnkBtnLogout.Enabled = false;
                LnkBtnLogin.Enabled = true;
                LnkBtnSignUp.Enabled = true;
                ImgProfile.ImageUrl = "Images/Pic-2.png";

            }
        }
    }
    protected void LnkBtnLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Home.aspx");
    }
}
