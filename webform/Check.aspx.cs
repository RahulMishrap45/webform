using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webform
{
    public partial class Check : System.Web.UI.Page
    {
        //read the connection string from web.config file
        string connec = ConfigurationManager.ConnectionStrings["cons"].ConnectionString;

        //create sqlconnection to connect with database
        //SqlConnection sc = new SqlConnection(connec);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
               
            }
        }

        protected void AddDetails(object sender, EventArgs e)
        {
           
            SqlConnection sc = new SqlConnection(connec);
            sc.Open();
            string insert = "insert into StudentForm (StuName,StuMobile,StuEmail,stuDesignation,stuAddress)" +
                "values ('" + stuName.Text + "','" + stuMobile.Text + "','" + stuEmail.Text + "','" + stuDesignation.Text + "','" + stuAddress.Text + "')";
            
            //Create Sql Command to execute the statement
            SqlCommand cmd = new SqlCommand(insert,sc);
            cmd.ExecuteNonQuery();

            //clear the textbox data
            stuName.Text = "";
            stuMobile.Text = "";
            stuDesignation.Text = "";
            stuEmail.Text = "";
            stuAddress.Text = "";
            sc.Close();
        }

        protected void Clear(object sender, EventArgs e)
        {
            stuName.Text = "";
            stuMobile.Text = "";
            stuDesignation.Text = "";
            stuEmail.Text = "";
            stuAddress.Text = "";
        }
    }
}