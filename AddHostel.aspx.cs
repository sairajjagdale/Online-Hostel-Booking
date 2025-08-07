using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_AddHostel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddHostel.aspx");
    }
    protected void DdlHostelLibrary_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void SubmitRecord()
    {
       
        try
        {
            SqlConnection con = new SqlConnection();
            String conString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.ConnectionString = conString;
            con.Open();

            FuHostelExtPhoto.SaveAs(Server.MapPath("~/Images/") + FuHostelExtPhoto.FileName.ToString());
            String UrlExtImg = "~/Images/" + FuHostelExtPhoto.FileName.ToString();

            FuHostelIntPhoto0.SaveAs(Server.MapPath("~/Images/") + FuHostelIntPhoto0.FileName.ToString());
            String UrlIntImg = "~/Images/" + FuHostelExtPhoto.FileName.ToString();
            


        


            String SqlQuery = "INSERT INTO Hostel_Master(Hostel_Name,Hostel_Address,Hostel_City,Hostel_Email,Hostel_Website,Hostel_Phone,Hostel_Mobile1,Hostel_Mobile2,Hostel_Type,Hostel_Category,Hostel_Rooms,Hostel_ImageExt,Hostel_ImageInt,Hostel__For,Hostel_TotalRooms,Hostel_TotalSeats,Hostel_AvailableSeats,Hostel_Fees,Hostel_MessFess,Hostel_Ratings,Hostel_Library,Hostel_Gym,Hostel_Study,Hostel_SwimmingTank,Hostel_Auditorium,Hostel_Guarden,Hostel_Security,Hostel_GuestRoom)"+
                "VALUES (@Hostel_Name,@Hostel_Address,@Hostel_City,@Hostel_Email,@Hostel_Website,@Hostel_Phone,@Hostel_Mobile1,@Hostel_Mobile2,@Hostel_Type,@Hostel_Category,@Hostel_Rooms,@Hostel_ImageExt,@Hostel_ImageInt,@Hostel_For,@Hostel_TotalRooms,@Hostel_TotalSeats,@Hostel_AvailableSeats,@Hostel_Fees,@Hostel_MessFess,@Hostel_Ratings,@Hostel_Library,@Hostel_Gym,@Hostel_Study,@Hostel_SwimmingTank,@Hostel_Auditorium,@Hostel_Guarden,@Hostel_Security,@Hostel_GuestRoom)";



            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = SqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@Hostel_Name", SqlDbType.VarChar).Value = TxtHostelName.Text;
            cmd.Parameters.Add("@Hostel_Address", SqlDbType.VarChar).Value = TxtHostelAddress.Text;
            cmd.Parameters.Add("@Hostel_City", SqlDbType.VarChar).Value = TxtHostelCity.Text;
            cmd.Parameters.Add("@Hostel_Email", SqlDbType.VarChar).Value = TxtHostelEmail.Text;
            cmd.Parameters.Add("@Hostel_Website", SqlDbType.VarChar).Value = TxtHostelWebsite.Text;
            cmd.Parameters.Add("@Hostel_Phone", SqlDbType.VarChar).Value = TxtHostelPhone.Text;
            cmd.Parameters.Add("@Hostel_Mobile1", SqlDbType.VarChar).Value = TxtHostelMobile1.Text;
            cmd.Parameters.Add("@Hostel_Mobile2", SqlDbType.VarChar).Value = TxtHostelMobile2.Text;
          
            cmd.Parameters.Add("@Hostel_Type", SqlDbType.VarChar).Value = "user";
            cmd.Parameters.Add("@Hostel_Category", SqlDbType.VarChar).Value = TxtHostelCategory.Text;
            cmd.Parameters.Add("@Hostel_Rooms", SqlDbType.VarChar).Value = TxtHostelRooms.Text;
            cmd.Parameters.Add("@Hostel_ImageExt", SqlDbType.VarChar).Value = UrlExtImg;
            cmd.Parameters.Add("@Hostel_ImageInt", SqlDbType.VarChar).Value = UrlIntImg;
            cmd.Parameters.Add("@Hostel_For", SqlDbType.VarChar).Value = DdlHostelFor.SelectedItem.ToString();
            cmd.Parameters.Add("@Hostel_TotalRooms", SqlDbType.VarChar).Value = TxtHostelTotalRooms.Text;
            cmd.Parameters.Add("@Hostel_TotalSeats", SqlDbType.VarChar).Value = TxtHostelTotalSeats.Text;
            cmd.Parameters.Add("@Hostel_AvailableSeats", SqlDbType.VarChar).Value = TxtHostelTotalSeats.Text;
            cmd.Parameters.Add("@Hostel_Fees", SqlDbType.VarChar).Value = TxtHostelFees.Text;
            cmd.Parameters.Add("@Hostel_MessFess", SqlDbType.VarChar).Value = TxtHostelMessFees.Text;
            cmd.Parameters.Add("@Hostel_Ratings", SqlDbType.VarChar).Value = TxtHostelRatings.Text;
            cmd.Parameters.Add("@Hostel_Library", SqlDbType.Bit).Value = ChkHostelLibrary.Checked;
            cmd.Parameters.Add("@Hostel_Study", SqlDbType.Bit).Value = ChkHostelStudy.Checked;
           
            cmd.Parameters.Add("@Hostel_Gym", SqlDbType.Bit).Value = ChkHostelGym.Checked;
            cmd.Parameters.Add("@Hostel_SwimmingTank", SqlDbType.Bit).Value =ChkHostelSwimmingTank.Checked;
            cmd.Parameters.Add("@Hostel_Auditorium", SqlDbType.Bit).Value = ChkHostelAuditorium.Checked;
            cmd.Parameters.Add("@Hostel_Guarden", SqlDbType.Bit).Value = ChkHostelGarden.Checked;
            cmd.Parameters.Add("@Hostel_Security", SqlDbType.VarChar).Value = TxtHostelSecurity.Text;
            cmd.Parameters.Add("@Hostel_GuestRoom", SqlDbType.Bit).Value = ChkHostelGuestRoom.Checked;
            cmd.ExecuteNonQuery();


            LblMessage.Text = "Successfully Created ...";

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

    
}