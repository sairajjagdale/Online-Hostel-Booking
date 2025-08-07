using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AddCountry : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    String conString, sqlQuery;
    /****************************************************************/
    // To save the country in country_Master

    protected void SubmitRecord()
    {

        try
        {
            conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO Country_Master(Country_Name) VALUES (@Country_Name)";
            cmd.Parameters.Add("@Country_Name", SqlDbType.VarChar).Value = TxtCountryName.Text;
            cmd.ExecuteNonQuery();
            LblMessage.Text = "Successfully created...";

        }
        catch (SqlException se)
        {

            LblMessage.Text = se.Message;
        }
    }
    /********************************************************************************************/
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        SubmitRecord();
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddCountry.aspx");
    }
}