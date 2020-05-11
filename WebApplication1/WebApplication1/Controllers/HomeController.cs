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
            var films = (from film in db.FILMS select film).Take(9).ToList();
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
            Model1 db = new Model1();
            //var test = db.LISTWORKERS.Where(x => x.WORKER_ID == 1.Get_short_FIO());
            return View();
        }

        public ActionResult CRUD()
        {
            Model1 db = new Model1();
            SelectList genres = new SelectList(db.GENRES, "GENRE_ID", "NAME_GENRE");
            ViewBag.Genres = genres;

            SelectList countries = new SelectList(db.COUNTRIES, "COUNTY_ID", "NAME_COUNTRY");
            ViewBag.Country = countries;

            SelectList studies = new SelectList(db.STUDIES, "STUDIA_ID", "NAME_STUDIA");
            ViewBag.Studies = studies;

            return View();
        }

        [HttpPost]
        public ActionResult AddFilm(FILMS films)
        {
            Model1 db = new Model1();
            db.Entry(films).State = System.Data.Entity.EntityState.Added;
            db.SaveChanges();
            Session["added"] = "Запись добавлена";
            return RedirectToAction("CRUD");
        }

        [HttpPost]
        public ActionResult UpdateFilm(FILMS films)
        {
            Model1 db = new Model1();
            db.Entry(films).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            Session["updated"] = "Запись обнавлена";
            return RedirectToAction("ShowAllDataFromDb");
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

        public ActionResult ShowAllDataFromDb()
        {
            Model1 db = new Model1();
            var films = (from film in db.FILMS select film).ToList();
            return View(films);
        }

        public ActionResult Read(int id)
        {
            Model1 db = new Model1();
            var film = db.FILMS.Where(x => x.FILM_ID == id).First();
            return View(film);
        }

        public ActionResult Search(string search)
        {
            Model1 db = new Model1();
            var films = db.FILMS.Where(x => x.NAME_FILM.Contains(search));
            return View(films);
        }


        public ActionResult Delete(int id)
        {
            Model1 db = new Model1();
            FILMS films = db.FILMS.Where(x => x.FILM_ID == id).First();
            db.Entry(films).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
            Session["updated"] = "Запись удалена";
            return RedirectToAction("ShowAllDataFromDb");
        }

        public ActionResult Update(int id)
        {
            Session["update_id"] = id;
            Model1 db = new Model1();
            string name = db.FILMS.Where(x => x.FILM_ID == id).Select(x => x.NAME_FILM).First();
            ViewBag.Name = name;

            SelectList countries = new SelectList(db.COUNTRIES, "COUNTY_ID", "NAME_COUNTRY");
            ViewBag.Country = countries;
            string country = db.FILMS.Where(x => x.FILM_ID == id).Select(x => x.COUNTRIES.NAME_COUNTRY).First();
            ViewBag.Test = country;

            SelectList genres = new SelectList(db.GENRES, "GENRE_ID", "NAME_GENRE");
            ViewBag.Genres = genres;
            string genre = db.FILMS.Where(x => x.FILM_ID == id).Select(x => x.GENRES.NAME_GENRE).First();
            Session["GenreUpdate"] = genre;

            SelectList studies = new SelectList(db.STUDIES, "STUDIA_ID", "NAME_STUDIA");
            ViewBag.Studies = studies;
            string studia = db.FILMS.Where(x => x.FILM_ID == id).Select(x => x.STUDIES.NAME_STUDIA).First();
            Session["StudiaUpdate"] = studia;


            var year = db.FILMS.Where(x => x.FILM_ID == id).Select(x => x.YEAR_FILMS).First();
            ViewBag.Year = year;

            var length = db.FILMS.Where(x => x.FILM_ID == id).Select(x => x.LENGTH_FILM).First();
            ViewBag.Length = length;

            var rating = db.FILMS.Where(x => x.FILM_ID == id).Select(x => x.RATING).First();
            ViewBag.Rating = rating;

            return View();
        }

        public ActionResult FilmByCountry()
        {
      
            return View();
        }

        [HttpPost]
        public ActionResult ResSearchFilmByCountry(string search)
        {
            Model1 db = new Model1();
            var films = db.FILMS.Where(x => x.COUNTRIES.NAME_COUNTRY.Contains(search));
            return View(films);
        }
    }
}