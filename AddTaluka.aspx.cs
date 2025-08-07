using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using System.Data.SqlClient;
using System.Configuration;




public partial class Admin_AddTaluka : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillDdlCity();
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
            String sqlQuery = "SELECT * FROM City_Master;";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            DdlDistrictName.Items.Add(new ListItem("--- SELECT---", "0"));
            while (dr.Read())
            {
                DdlDistrictName.Items.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
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


            String SqlQuery = "INSERT INTO Taluka_Master(Taluka_Name,City_id) VALUES (@Taluka_Name,@City_id)";


            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = SqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@Taluka_Name", SqlDbType.VarChar).Value = TxtTalukaName.Text;
            cmd.Parameters.Add("@City_id", SqlDbType.Int).Value = DdlDistrictName.SelectedValue;
            cmd.ExecuteNonQuery();


            LblMessage.Text = "Taluka Added ...";

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
        Response.Redirect("AddTaluka.aspx");
    }
}
