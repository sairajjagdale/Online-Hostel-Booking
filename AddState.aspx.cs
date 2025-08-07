using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AddState : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillDdlCountry();
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
            DdlCountryName.Items.Add(new ListItem("--- SELECT---", "0"));
            while (dr.Read())
            {
                DdlCountryName.Items.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
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
            con.ConnectionString =conString;
            con.Open();
            
          
            String SqlQuery = "INSERT INTO State_Master(State_Name,Country_id) VALUES (@State_Name,@Country_id)";


            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = SqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@State_Name", SqlDbType.VarChar).Value = TxtStateName.Text;
            cmd.Parameters.Add("@Country_id", SqlDbType.Int).Value = DdlCountryName.SelectedValue;
            cmd.ExecuteNonQuery();


            LblMessage.Text = "Successfully created...";

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
        Response.Redirect("AddState.aspx");
    }
}



    