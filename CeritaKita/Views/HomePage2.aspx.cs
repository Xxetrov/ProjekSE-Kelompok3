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
    public partial class HomePage2 : System.Web.UI.Page
    {
        public List<post> posts = new List<post>();

        Database1Entities6 db = DatabaseSingleton.GetInstance();

        protected void Page_Load(object sender, EventArgs e)
        {
            posts = PostRepository.GetPosts();

            if(Session["user_session"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }

            if (IsPostBack == false)
            {
                List<string> kategori_post = (from ktgr in db.categories select ktgr.name).ToList();
                DropDownListCategory.DataSource = kategori_post;
                DropDownListCategory.DataBind();
            }
            string username = ((user)Session["user_session"]).username;
            string password = ((user)Session["user_session"]).password;

            user User = UserRepository.checkUser(username, password);

            profileName.Text = User.username;
            LabelGreeting.Text = User.username;
            profileDesc.Text = CalculateAge(User.dob).ToString()+" | "+User.gender.name;
            


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

        protected string newId()
        {
            string id = "";

            string currId = (from p in db.posts select p.id).ToList().LastOrDefault();

            if (currId == null)
            {
                id = "P001";
            }
            else
            {
                int temp = Convert.ToInt32(currId.Substring(3));
                temp++;
                id = string.Format("P{0:000}", temp);
            }

            return id;
        }

        protected void CreateButton_Click1(object sender, EventArgs e)
        {
            string username = ((user)Session["user_session"]).username;
            string password = ((user)Session["user_session"]).password;

            user User = UserRepository.checkUser(username, password);

            string title = "Cerita Kita";
            string isiPost = isiPostTextBox.Text.ToString();
            string thread = ThreadTextBox.Text.ToString();
            string kategori = (from ctgr in db.categories where ctgr.name == DropDownListCategory.SelectedValue.ToString() select ctgr.id).ToList().FirstOrDefault();
            int like = 0;
            int dislike = 0;
            string user_id = User.id; /* How to get user id */

            post p = Factory.Factory.CreatePost(newId(), user_id, title, isiPost, kategori, like, dislike, thread);

            db.posts.Add(p);
            db.SaveChanges();
            Response.Redirect("~/Views/HomePage2.aspx");
        }
        protected void logoutButton_Click(object sender,EventArgs e)
        {
            Session.Clear();
            Response.Redirect("LoginPage.aspx");
        }
    }
}