using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CeritaKita.Model;

namespace CeritaKita.Factory
{
    public class Factory
    {
        public static user create(string id, string username, string email, string password, string DoB, string gender_id, string role_id)
        {
            user u = new user();
            u.id = id;
            u.username = username;
            u.email = email;
            u.password = password;
            u.dob = DateTime.Parse(DoB);
            u.gender_id = gender_id;
            u.role_id = role_id;
            return u;
        }

        public static post CreatePost(string id, string user_id, string title, string isiPost, string kategori, int like, int dislike, string thread)
        {
            post p = new post();
            p.id = id;
            p.user_Id = user_id;
            p.title = title;
            p.isiPost = isiPost;
            p.thread = thread;
            p.like = like;
            p.dislike = dislike;
            p.category_id = kategori;

            return p;
        }

        public static reply createReply(string id, string parent_id, string isiReply, int like, int dislike, string thread)
        {
            reply r = new reply();
            r.id = id;
            r.parentId = parent_id;
            r.isiPost = isiReply;
            r.like_ = like;
            r.dislike = dislike;
            r.thread = thread;

            return r;
        }
    }
}