using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;
using CeritaKita.Repository;
using CeritaKita.Handler;
using CeritaKita.Factory;
using CeritaKita.Model;

namespace CeritaKita.Controller
{
    public class RegisterController
    {

        static Database1Entities6 db = DatabaseSingleton.GetInstance();
        public static string usernameValidation(string username)
        {
            List<string> userList = UserRepository.getAll();

            string msg ="";

            if (username.Equals(""))
            {
                msg = "Nama pengguna tidak boleh kosong";

            }else if(username.Length < 4)
            {
                msg = "Nama pengguna terlalu pendek (minimal 4 kata)";
            }
            else if (userList.Any(u => u.Equals(username)))
            {
                msg = "Nama pengguna sudah diambil";
            }
            return msg; 
        }
        public static string emailValidation(string email)
        {
            string msg = "";
            Regex regex = new Regex(@"^[\w\.]+@[\w\.]+\.\w+$");

            if (email.Equals(""))
            {
                msg = "email tidak boleh kosong";
            }else if (!regex.IsMatch(email))
            {
                msg = "email tidak valid";
            }

            return msg;
        }
        public static string passwordValidation(string password)
        {
            string msg = "";
            if (password.Equals(""))
            {
                msg = "kata sandi tidak boleh kosong";
            }
            else if (password.Length < 6)
            {
                msg = "kata sandi terlalu pendek (minimal 4 kata)";
            }
            return msg;

        }
        public static string dobValidation(string dob)
        {
            string msg = "";
            if (dob.Equals(""))
            {
                msg = "tanggal lahir tidak boleh kosong";
            }
            return msg;
        }
        public static string Validation(string id, string username, string email, string password, string dob, string gender, string role_id)
        {
            string msg = usernameValidation(username);

            if (msg.Equals(""))
            {
                msg = emailValidation(email);
                if (msg.Equals(""))
                {
                    msg = passwordValidation(password);
                    if (msg.Equals(""))
                    {
                        msg = dobValidation(dob);
                        if (msg.Equals(""))
                        {
                            user u = Factory.Factory.create(id, username, email, password, dob, gender, role_id);
                            db.users.Add(u);
                            db.SaveChanges();
                            return "Akun berhasil dibuat";
                        }
                    } 
                }
            }
            return msg;
            
        }

    }
}