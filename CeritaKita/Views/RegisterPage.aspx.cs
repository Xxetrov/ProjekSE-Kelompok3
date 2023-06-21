using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CeritaKita.Model;
using CeritaKita.Controller;
using CeritaKita.Repository;

namespace CeritaKita.Views
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static Database1Entities6 db = DatabaseSingleton.GetInstance();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                List<string> listType = (from gd in db.genders select gd.name).ToList();
                DropDownList1.DataSource = listType;
                DropDownList1.DataBind();
            }

        }
        protected string idBaru()
        {
            string id = "";
            string currentId = (from user in db.users select user.id).ToList().LastOrDefault();

            if (currentId == null) id = "U001";
            else
            {
                int temp = Convert.ToInt32(currentId.Substring(2));
                temp++;
                id = String.Format("U{0:000}", temp);
            }
            return id;
        }

        protected void registerButton_Click(object sender, EventArgs e)
        {

            string gender = (from gd in db.genders where gd.name == DropDownList1.Text.ToString() select gd.id).ToList().FirstOrDefault();
            string username = usernameTextBox.Text.ToString();
            string email = emailTextBox.Text.ToString();
            string password = passwordTextBox.Text.ToString();
            string role_id = "1";
            string DoB = dateTextBox.Text;

            string msg = RegisterController.Validation(idBaru(),username, email, password, DoB, gender, role_id);
           
            validationLabel.Text = msg;


        }

        protected void backLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}