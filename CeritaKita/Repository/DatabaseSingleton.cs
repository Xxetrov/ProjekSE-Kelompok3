using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CeritaKita.Model;

namespace CeritaKita.Repository
{
    public class DatabaseSingleton
    {
        static Database1Entities6 db = null;

        private DatabaseSingleton()
        {

        }

        public static Database1Entities6 GetInstance()
        {
            if (db == null)
            {
                db = new Database1Entities6();
            }
            return db;
        }
    }
}