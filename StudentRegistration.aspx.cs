using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class StudentRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillDdlCountry();
        }
    }
    protected void SubmitRecord()
    {
        String Gender;
        try
        {
            SqlConnection con = new SqlConnection();
            String conString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.ConnectionString = conString;
            con.Open();

            FuImage.SaveAs(Server.MapPath("Images/") + FuImage.FileName.ToString());
            String Url = "~/Images/" + FuImage.FileName.ToString();
            if(RbtnFemale.Checked==true)
            {
                Gender = "Female";
            }
            else
            {
                Gender ="Male";
            }


            String SqlQuery = "INSERT INTO User_Master(User_FullName,User_Name,User_Password,User_Address,User_Country,User_State,User_District,User_Taluka,User_City,User_Pin,User_Mobile,User_Email,User_BirthDate,User_Gender,User_Photo,User_PhotoPath,User_Status,User_Type) VALUES (@User_FullName,@User_Name,@User_Password,@User_Address,@User_Country,@User_State,@User_District,@User_Taluka,@User_City,@User_Pin,@User_Mobile,@User_Email,@User_BirthDate,@User_Gender,@User_Photo,@User_PhotoPath,@User_Status,@User_Type)";


            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = SqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@User_FullName", SqlDbType.VarChar).Value = TxtUserFullName.Text;
            cmd.Parameters.Add("@User_Name", SqlDbType.VarChar).Value = TxtUserName.Text;
            cmd.Parameters.Add("@User_Password", SqlDbType.VarChar).Value = TxtUserPassword.Text;
            cmd.Parameters.Add("@User_Address", SqlDbType.VarChar).Value = TxtUserAddress.Text;
            cmd.Parameters.Add("@User_Country", SqlDbType.VarChar).Value = DdlCountry.SelectedItem.ToString();
            cmd.Parameters.Add("@User_State", SqlDbType.VarChar).Value = DdlState.SelectedItem.ToString();
            cmd.Parameters.Add("@User_District", SqlDbType.VarChar).Value = DdlDistrict.SelectedItem.ToString();
            cmd.Parameters.Add("@User_Taluka", SqlDbType.VarChar).Value = DdlTaluka.SelectedItem.ToString();
            cmd.Parameters.Add("@User_City", SqlDbType.VarChar).Value = DdlCity.SelectedItem.ToString();
            cmd.Parameters.Add("@User_Pin", SqlDbType.VarChar).Value = TxtPin.Text;
            cmd.Parameters.Add("@User_Mobile", SqlDbType.VarChar).Value = TxtMobile.Text;
            cmd.Parameters.Add("@User_Email", SqlDbType.VarChar).Value = TxtEmail.Text;
            cmd.Parameters.Add("@User_BirthDate", SqlDbType.SmallDateTime).Value = TxtBirthDate.Text;
            cmd.Parameters.Add("@User_Gender", SqlDbType.VarChar).Value = Gender;
            cmd.Parameters.Add("@User_Photo", SqlDbType.VarChar).Value = Url;
            cmd.Parameters.Add("@User_PhotoPath", SqlDbType.VarChar).Value = Url;
            cmd.Parameters.Add("@User_Status", SqlDbType.Bit).Value = true;
            cmd.Parameters.Add("@User_Type", SqlDbType.VarChar).Value = "user";
          




            cmd.ExecuteNonQuery();


            LblMessage.Text = "Successfully Created ...";

            con.Close();

        }
        catch (SqlException se)
        {

            LblMessage.Text = se.Message;
        }

    }
    /**************************************** Fill Ddl Country***********************/

    protected void FillDdlCountry()
    {

        try
        {

            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String sqlQuery = "SELECT * FROM Country_Master;";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            DdlCountry.Items.Add(new ListItem("--- SELECT---", "0"));
            while (dr.Read())
            {
                DdlCountry.Items.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
            }

            con.Close();
        }
        catch (SqlException se)
        {
            LblMessage.Text = se.Message;
        }
    }
    /**************************************** Fill Ddl State***********************/

    protected void FillDdlState()
    {

        try
        {

            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String sqlQuery = "SELECT * FROM State_Master WHERE Country_Id=@Country_Id;";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Parameters.Add("@Country_Id", SqlDbType.Int).Value = DdlCountry.SelectedValue.ToString();
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            DdlState.Items.Add(new ListItem("--- SELECT---", "0"));
            while (dr.Read())
            {
                DdlState.Items.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
            }

            con.Close();
        }
        catch (SqlException se)
        {
            LblMessage.Text = se.Message;
        }
    }
    /**************************************** Fill Ddl District***********************/

    protected void FillDdlDistrict()
    {

        try
        {

            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String sqlQuery = "SELECT * FROM District_Master WHERE State_Id=@State_Id;";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Parameters.Add("@State_Id", SqlDbType.Int).Value = DdlState.SelectedValue.ToString();
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            DdlDistrict.Items.Add(new ListItem("--- SELECT---", "0"));
            while (dr.Read())
            {
                DdlDistrict.Items.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
            }

            con.Close();
        }
        catch (SqlException se)
        {
            LblMessage.Text = se.Message;
        }
    }

    /**************************************** Fill Ddl Taluka***********************/

    protected void FillDdlTaluka()
    {

        try
        {

            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String sqlQuery = "SELECT * FROM Taluka_Master WHERE District_Id=@District_Id;";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Parameters.Add("@District_Id", SqlDbType.Int).Value = DdlDistrict.SelectedValue.ToString();
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            DdlTaluka.Items.Add(new ListItem("--- SELECT---", "0"));
            while (dr.Read())
            {
                DdlTaluka.Items.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
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
            String sqlQuery = "SELECT * FROM City_Master WHERE Taluka_Id=@Taluka_Id;";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Parameters.Add("@Taluka_Id", SqlDbType.Int).Value = DdlTaluka.SelectedValue.ToString();
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
    /**************************************** Fill get Pincode***********************/

    protected void getpin()
    {

        try
        {

            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String sqlQuery = "SELECT * FROM City_Master WHERE City_Id=@City_Id;";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Parameters.Add("@City_Id", SqlDbType.Int).Value = DdlCity.SelectedValue.ToString();
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            DdlCity.Items.Add(new ListItem("--- SELECT---", "0"));
            while (dr.Read())
            {
                TxtPin.Text=dr["City_pin"].ToString();
            }

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
    protected void DdlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillDdlState();
    }
    protected void DdlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillDdlDistrict();
    }
    protected void DdlDistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillDdlTaluka();
    }
    protected void DdlTaluka_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillDdlCity();
    }
    protected void DdlCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        getpin();
    }


    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentRegistration.aspx");
    }
    protected void TxtPin_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ImgBtnCal_Click(object sender, ImageClickEventArgs e)
    {
        CalBirthDate.Visible = true;
    }
    protected void CalBirthDate_SelectionChanged(object sender, EventArgs e)
    {
        TxtBirthDate.Text = CalBirthDate.SelectedDate.ToShortDateString();
        CalBirthDate.Visible = false;
    }
}