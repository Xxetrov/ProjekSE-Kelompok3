using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CeritaKita.Model;
using CeritaKita.Repository;

namespace CeritaKita
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Session["user_session"] != null)
                {
                    Session.Clear();
                }
            }
        }
        
        protected void loginButton_Click(object sender, EventArgs e)
        {
            string username = usernameTextBox.Text;
            string password = passwordTextBox.Text;

            user User = UserRepository.checkUser(username,password);

            if (User == null)
            {
                errorLabel.Text = "Pengguna tidak ditemukan silahkan daftar terlebih dahulu";
                errorLabel.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Session["user_session"] = User;
                Response.Redirect("HomePage2.aspx");
            }
        }

        protected void redirectRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }
    }
}