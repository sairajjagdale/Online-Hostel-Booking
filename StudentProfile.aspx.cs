using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class StudentProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["User_Id"] == null)
        {

            Response.Redirect("Login.aspx");
        }

        if (!IsPostBack)
        {

            FillDdlCity();
            ViewRecord();
        }
    }
    protected void ViewRecord()
    {

        try
        {

            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String Url = "";
            String sqlQuery = "SELECT * FROM User_Master WHERE User_Id= @User_Id; ";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Parameters.Add("@User_Id", SqlDbType.Int).Value = Session["User_Id"].ToString();
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
           

            while (dr.Read())
            {
                TxtStudentFullName.Text = dr["User_FullName"].ToString();
                TxtStudentAddress.Text = dr["User_Address"].ToString();
                ListItem listitem = DdlCity.Items.FindByText(dr["User_City"].ToString());
                DdlCity.ClearSelection();
                listitem.Selected = true;
                listitem = null;

                TxtPin.Text = dr["User_Pin"].ToString();
                TxtMobile.Text = dr["User_Mobile"].ToString();
                TxtEmail.Text = dr["User_Email"].ToString();
                TxtBirthDate.Text = dr["User_BirthDate"].ToString();
                Url = dr["User_PhotoPath"].ToString();
                LblPhotoPath.Text = Url;
                ImgStudentPhoto.ImageUrl = Url;

            }

            con.Close();
        }
        catch (SqlException se)
        {
            LblMessage.Text = se.Message;
        }
    }

    /**************************************** Fill Ddl City***********************/

    protected void FillDdlCity()
    {

        try
        {

            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String sqlQuery = "SELECT * FROM City_Master ;";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;

            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            DdlCity.Items.Add(new ListItem("--- SELECT---", "0"));
            while (dr.Read())
            {
                DdlCity.Items.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
            }

            con.Close();
        }
        catch (SqlException se)
        {
            LblMessage.Text = se.Message;
        }

    }
    protected void ImgCal_Click(object sender, ImageClickEventArgs e)
    {
        CalBirthDate.Visible = true;
    }
}

