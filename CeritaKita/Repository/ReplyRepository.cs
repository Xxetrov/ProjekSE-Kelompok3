using CeritaKita.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CeritaKita.Repository
{
    public class ReplyRepository
    {
        static Database1Entities6 db = DatabaseSingleton.GetInstance();
        public static List<reply> GetReplies()
        {
            return db.replies.OrderByDescending(r => r.id).ToList();
        }

        public static reply GetReplyByParentId(String id)
        {
            return (from rep in db.replies where rep.parentId == id select rep).FirstOrDefault();
        }
    }
}