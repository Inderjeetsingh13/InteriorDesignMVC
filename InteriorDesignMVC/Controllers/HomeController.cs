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
    public class HomeController : Controller
    {

        SqlConnection sqlcon = new SqlConnection();
        SqlCommand sqlcmd = new SqlCommand();

       
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        [HttpGet]
        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        //sendMsg

        [HttpPost]
        public ActionResult sendMessage(Contact instance)
        {
            sqlcon.ConnectionString = "Data Source=DESKTOP-HKD1BEO\\SQLEXPRESS;Initial Catalog=Interior;Integrated Security=True";




            sqlcon.Open();
            sqlcmd.Connection = sqlcon;

            sqlcmd.CommandText = "insert into Message(Name,Email,Subject,Msg) values('" + instance.Name + "','" + instance.Email+ "','" + instance.Subject+ "','" + instance.Message+ "')";
            sqlcmd.ExecuteNonQuery();
            sqlcon.Close();

            return View("asnwer");


        }





        public ActionResult Service()
        {
            ViewBag.Message = "Your Service  page.";

            return View();
        }



    }
}