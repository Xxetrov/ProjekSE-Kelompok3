using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CeritaKita.Model;


namespace CeritaKita.Repository
{
    public class UserRepository
    {
        static Database1Entities6 db = DatabaseSingleton.GetInstance();

        public static user checkUser(string username, string password)
        {
            user User = (from u in db.users
                         where u.username.Equals(username) && u.password.Equals(password)
                         select u).FirstOrDefault();

            return User;
        }
        public static List<string> getAll()
        {
            List<string> allUser = (from u in db.users select u.username).ToList();
            return allUser;
        }
    }
}