using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CeritaKita.Model;

namespace CeritaKita.Repository
{
    public class PostRepository
    {
        static Database1Entities6 db = DatabaseSingleton.GetInstance();

        public static List<post> GetPosts()
        {
            return db.posts.OrderByDescending(p => p.id).ToList();
        }

        public static post GetPostbyId(String id)
        {
            return (from p in db.posts where p.id == id select p).FirstOrDefault();
        }
    }
}