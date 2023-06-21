using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CeritaKita.Model;
using CeritaKita.Repository;

namespace CeritaKita.Views
{
    public partial class Explore : System.Web.UI.Page
    {
        public List<post> category = new List<post>();

        Database1Entities6 db = DatabaseSingleton.GetInstance();
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                
            }
            if (Session["user_session"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            string username = ((user)Session["user_session"]).username;
            string password = ((user)Session["user_session"]).password;

            user User = UserRepository.checkUser(username, password);

            profileName.Text = User.username;
            profileDesc.Text = CalculateAge(User.dob).ToString() + " | " + User.gender.name;
        }
        protected int CalculateAge(DateTime birthdate)
        {
            DateTime currentDate = DateTime.Now;
            int age = currentDate.Year - birthdate.Year;

            // Periksa apakah tanggal lahir setelah tanggal saat ini dalam tahun yang sama
            if (birthdate > currentDate.AddYears(-age))
            {
                age--;
            }

            return age;
        }

        protected void logoutButton_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("LoginPage.aspx");
        }


    }
}