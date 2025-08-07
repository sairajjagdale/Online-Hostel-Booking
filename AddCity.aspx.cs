using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class Admin_AddCity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillDdlDistrict();
        }
    }
    /**************************************** Fill Ddl state***********************/

    protected void FillDdlDistrict()
    {

        try
        {

            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String sqlQuery = "SELECT * FROM Taluka_Master;";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            DdlTalukaName.Items.Add(new ListItem("--- SELECT---", "0"));
            while (dr.Read())
            {
                DdlTalukaName.Items.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
            }

            con.Close();
        }
        catch (SqlException se)
        {
            LblMessage.Text = se.Message;
        }
    }
    /***********************************************submit state**************/
    protected void SubmitRecord()
    {

        try
        {
            SqlConnection con = new SqlConnection();
            String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = conString;
            con.Open();


            String SqlQuery = "INSERT INTO City_Master(City_Name,Taluka_Name,City_Pincode) VALUES (@City_Name,@Taluka_Name,@City_Pincode)";


            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = SqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@City_Name", SqlDbType.VarChar).Value = TxtCityName.Text;
            cmd.Parameters.Add("@Taluka_id", SqlDbType.Int).Value = DdlTalukaName.SelectedValue;
            cmd.Parameters.Add("@City_Pincode", SqlDbType.VarChar).Value = TxtCityPincode.Text;
            cmd.ExecuteNonQuery();


            LblMessage.Text = "City and pin Added ...";

            con.Close();

        }
        catch (SqlException se)
        {

            LblMessage.Text = se.Message;
        }

    }
    protected void BtnSubmit_Click1(object sender, EventArgs e)
    {
        SubmitRecord();
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddCity.aspx");
    }
}
    
 
