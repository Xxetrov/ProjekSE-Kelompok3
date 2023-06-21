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
    public partial class Content : System.Web.UI.Page
    {

       public  List<reply> replies = new List<reply>();

        public post p = null;

        Database1Entities6 db = DatabaseSingleton.GetInstance();
        protected void Page_Load(object sender, EventArgs e)
        {
            replies = ReplyRepository.GetReplies();

            string id = Request.QueryString["id"];

            p = PostRepository.GetPostbyId(id);

            if (id == null || p == null)
            {
                Response.Redirect("~/Views/HomePage2.aspx");
            }
            if (Session["user_session"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        //private int GetPostIdFromQueryString()
        //{
        //    string queryString = Request.QueryString["id"];
        //    int postId = 0;

        //    if (!string.IsNullOrEmpty(queryString))
        //    {
        //        int.TryParse(queryString, out postId);
        //    }

        //    return postId;
        //}

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

        protected string newReplyId()
        {
            string id = "";

            string currId = (from r in db.replies select r.id).ToList().LastOrDefault();

            if (currId == null)
            {
                id = "RE001";
            }
            else
            {
                int temp = Convert.ToInt32(currId.Substring(3));
                temp++;
                id = string.Format("RE{0:000}", temp);
            }

            return id;
        }

        protected void ReplyButton_Click1(object sender, EventArgs e)
        {
            string parent_id = Request.QueryString["id"];
            string isiReply = ReplyTextBox.Text.ToString();
            string thread = "not Available";
            int like = 0;
            int dislike = 0;

            reply r = Factory.Factory.createReply(newReplyId(), parent_id, isiReply, like, dislike, thread);
            db.replies.Add(r);
            db.SaveChanges();

            Response.Redirect("Content.aspx?id=" + Server.UrlEncode(parent_id));
        }
        protected void logoutButton_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("LoginPage.aspx");
        }

    }
}