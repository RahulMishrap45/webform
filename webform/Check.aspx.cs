using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
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
            gridViewList();
            if (!Page.IsPostBack)
            {
                Session["Time"] = DateTime.Now.ToString();
                Console.WriteLine(Session["Time"]);
            }
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            ViewState["Time"] = Session["Time"];
            Console.WriteLine(ViewState["Time"]);
        }

        public void gridViewList()
        {
            SqlConnection sc = new SqlConnection(connec);

            //Bind the data inside gridview
            string query = "select * from StudentForm";
            SqlDataAdapter sqa = new SqlDataAdapter(query, sc);
            DataTable dt = new DataTable();
            sqa.Fill(dt);

            GridControl.DataSource = dt;
            GridControl.DataBind();
        }

        protected void AddDetails(object sender, EventArgs e)
        {
            if (Session["Time"].ToString() == ViewState["Time"].ToString())
            {
                SqlConnection sc = new SqlConnection(connec);
                sc.Open();

                string insert = "insert into StudentForm (StuName,StuMobile,StuEmail,stuDesignation,stuAddress)" +
                    "values ('" + stuName.Text + "','" + stuMobile.Text + "','" + stuEmail.Text + "','" + stuDesignation.Text + "','" + stuAddress.Text + "')";

                //Create Sql Command to execute the statement
                SqlCommand cmd = new SqlCommand(insert, sc);
                cmd.ExecuteNonQuery();

                //clear the textbox data
                stuName.Text = null;
                stuMobile.Text = "";
                stuDesignation.Text = "";
                stuEmail.Text = "";
                stuAddress.Text = "";
                sc.Close();
                Session["Time"] = DateTime.Now.ToString();
            }
            gridViewList();
        }

        protected void Clear(object sender, EventArgs e)
        {
            stuName.Text = "";
            stuMobile.Text = "";
            stuDesignation.Text = "";
            stuEmail.Text = "";
            stuAddress.Text = "";
        }

        protected void Serch_Click(object sender, EventArgs e)
        {
            
        }
    }
}