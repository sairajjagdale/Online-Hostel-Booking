using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Home : System.Web.UI.Page
{
    protected void viewGirlsHostel()
    {

    
    try
         {

            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String sqlQuery = "SELECT * FROM Hostel_Master WHERE Hostel_For='Girls;";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            DtlstGirlsHostel.DataSource = dr;
            DtlstGirlsHostel.DataBind();
        

            con.Close();
        }
        catch (SqlException se)
        {
          
        }
    }
}