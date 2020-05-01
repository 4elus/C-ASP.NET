using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApplication1.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            Model1 db = new Model1();
            var films = (from film in db.FILMS select film).ToList();


            return View(films);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult SignIn()
        {


            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        [HttpPost]
        public ActionResult LogIn(string login, string password)
        {
            Model1 db = new Model1();

            try
            {
                var getUser = db.CLIENTS.Where(x => x.CLIENT_LOGIN == login && x.CLIENT_PASSWORD == password).First();
                var films = (from film in db.FILMS select film).ToList();
                Session["login"] = getUser.CLIENT_LOGIN;
                return RedirectToAction("Index");
            } catch (Exception e)
            {
                Session["error"] = "Неправильный логин/пароль";
                return View("SignIn");
            }   
        }

        public ActionResult Quit()
        {
            Session["login"] = null;
            return RedirectToAction("Index");
        }


        public ActionResult Registration()
        {
            
            return View();
        }

        public ActionResult RegistrationUser(string login, string password, string role)
        {
            

            CLIENTS client = new CLIENTS();
            client.CLIENT_LOGIN = login;
            client.CLIENT_PASSWORD = password;
            client.CLIENT_ROLE = role;

            Model1 db = new Model1();
            db.Entry(client).State = System.Data.Entity.EntityState.Added;
            db.SaveChanges();

            return RedirectToAction("Index");
        }
    }
}