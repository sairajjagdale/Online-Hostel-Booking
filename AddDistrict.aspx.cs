using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_AddDistrict : System.Web.UI.Page
{
      protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillDdlState();
        }
      }
    /**************************************** Fill Ddl state***********************/

    protected void FillDdlState()
    {

        try
        {

            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String sqlQuery = "SELECT * FROM State_Master;";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            DdlStateName.Items.Add(new ListItem("--- SELECT---", "0"));
            while (dr.Read())
            {
                DdlStateName.Items.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
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


            String SqlQuery = "INSERT INTO District_Master(District_Name,State_id) VALUES (@District_Name,@State_id)";


            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = SqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@District_Name", SqlDbType.VarChar).Value = TxtDistrictName.Text;
            cmd.Parameters.Add("@State_id", SqlDbType.Int).Value = DdlStateName.SelectedValue;
            cmd.ExecuteNonQuery();


            LblMessage.Text = "District Added ...";

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
        Response.Redirect("AddDistrict.aspx");
    }
}

  
    
