using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using InteriorDesignMVC.Models;
using System.Data;
using System.Data.SqlClient;


namespace InteriorDesignMVC.Controllers
{
    public class MainLoginController : Controller
    {

        SqlConnection sqlcon = new SqlConnection();
        SqlCommand sqlcmd = new SqlCommand();
        SqlDataReader sqldr;


        // GET: MainLogin

        public ActionResult LoginIndex()
        {
            return View();
        }
        [HttpPost]
        public ActionResult sendLoginCheck(mainLogin instance)
        {
            sqlcon.ConnectionString = "Data Source=DESKTOP-HKD1BEO\\SQLEXPRESS;Initial Catalog=Interior;Integrated Security=True";




            sqlcon.Open();
            sqlcmd.Connection = sqlcon;
            sqlcmd.CommandText = "select * from Login where UserId='" + instance.User + "' and Password='" + instance.Password + "'";

            sqldr = sqlcmd.ExecuteReader();

            if (sqldr.Read())
            {
                sqlcon.Close();
                return View("Working");
            }
            else
            {
                sqlcon.Close();
                return View("Invalid");
            }


        }


    }
}