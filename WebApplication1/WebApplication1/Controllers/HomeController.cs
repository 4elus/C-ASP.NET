using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication1.Models;
using Syncfusion.DocIO;
using Syncfusion.DocIO.DLS;

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

            var usernames = db.CLIENTS.Where(x => x.CLIENT_LOGIN == login);

            if (usernames.Count() == 0)
            {
                db.Entry(client).State = System.Data.Entity.EntityState.Added;
                db.SaveChanges();
                Session["login"] = login;
                return RedirectToAction("Index");
            }
            else
            {
                Session["username_exist"] = "Имя пользователя уже существует";
                return RedirectToAction("Registration");
            }                
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

        public ActionResult BuyTicket(int id)
        {
            Session["idfilm"] = id;
            Session["existPlace"] = null;
            return View();
        }

        public ActionResult BuyFilm(int zal, int place, string name)
        {
            Model1 db = new Model1();
            TICKETS tickets = new TICKETS();
            tickets.DATETIME = DateTime.Now;
            tickets.ROOM = zal;
            tickets.VARIETY = Convert.ToInt32(Session["idfilm"].ToString());
            tickets.PLACE = place;
            if (name == "Купить")
                tickets.STATUS = 3;
            else
                tickets.STATUS = 2;


            var existPlace = db.TICKETS.Where(x => x.PLACE == place && x.ROOM == zal && x.VARIETY == tickets.VARIETY);
            var a = db.TICKETS.Where(x => x.PLACE == place && x.ROOM == zal && x.VARIETY == tickets.VARIETY).Select(x => x.DATETIME).FirstOrDefault();

            if (existPlace.Count() == 0)
            {
                db.Entry(tickets).State = System.Data.Entity.EntityState.Added;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            else
            {
                Session["existPlace"] = "Это место уже занято !";
                return RedirectToAction("Index");
            }

            
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

        public ActionResult CountBronFilms()
        {
            /*
              var pl = db.FILMS.GroupBy(x => x.GENRES.NAME_GENRE).Select(group => new StatGenreModel
            {
                Name = group.Key,
                Count = group.Count()
            });
      
             */

            Model1 db = new Model1();
            var pl = from t1 in db.TICKETS
                     from t3 in db.COUNTRIES
                     from t4 in db.FILMS
                     orderby t4.RATING descending
                     where t1.VARIETY == t4.FILM_ID
                     where t4.ID_COUNTRY == t3.COUNTY_ID
                     where t1.STATUS == 2
                     group new { t1, t3, t4 } by new { t1.STATUS, t3.NAME_COUNTRY, t4.NAME_FILM } into g
                     select new BronFilmModel
                     {
                         NameCountry = g.Select(x => x.t3.NAME_COUNTRY).FirstOrDefault(),
                         NameFilm = g.Select(x => x.t4.NAME_FILM).FirstOrDefault(),
                         Count = g.Count()
                     };

            return View(pl);
        }

        public ActionResult FinalQuery()
        {
            Model1 db = new Model1();
            var pl = from t1 in db.TICKETS
                     from t2 in db.FILMS
                     from t3 in db.ROOMS
                     from t4 in db.CATEGORIES
                     orderby t2.RATING descending
                     where t1.VARIETY == t2.FILM_ID
                     where t1.ROOM == t3.ROOM_ID
                     where t3.CATEG == t4.CATEG_ID
                     where t1.STATUS == 3
                     group new { t1, t2, t3, t4 } by new { t1.STATUS,  t2.NAME_FILM } into g
                     select new FinalModel
                     {
                         NameFilm = g.Key.NAME_FILM,
                         Summa = g.Sum(x => x.t4.PRICE),
                         Count = g.Count()
                     };

            return View(pl);
        }

        [HttpPost]
        public ActionResult ResSearchFilmByCountry(string search)
        {
            Model1 db = new Model1();
            var films = db.FILMS.Where(x => x.COUNTRIES.NAME_COUNTRY.Contains(search));
            return View(films);
        }

        public ActionResult StatistickByGenre()
        {
            Model1 db = new Model1();
            var pl = db.FILMS.GroupBy(x => x.GENRES.NAME_GENRE).Select(group => new StatGenreModel
            {
                Name = group.Key,
                Count = group.Count()
            });
      
            return View(pl);
        }

        public ActionResult StatByCountries()
        {
            Model1 db = new Model1();
            var pl = db.FILMS.GroupBy(x => x.COUNTRIES.NAME_COUNTRY).Select(group => new StatGenreModel
            {
                Name = group.Key,
                Count = group.Count()
            });

            return View(pl);
        }

        public ActionResult Document()
        {
            

            return View();
        }

        [HttpPost]
        public void CreateDocument()
        {

            Model1 db = new Model1();
            var pl = from t1 in db.TICKETS
                     from t3 in db.COUNTRIES
                     from t4 in db.FILMS
                     from t5 in db.LISTJOBS
                     from t6 in db.LISTWORKERS
                     orderby t4.RATING descending
                     where t1.VARIETY == t4.FILM_ID
                     where t4.ID_COUNTRY == t3.COUNTY_ID

                     where t4.FILM_ID == t5.ID_FILM
                     where t5.ID_WORKER == t6.WORKER_ID


                     where t1.STATUS == 3
                     where t5.ID_POS == 1
                     group new { t1, t3, t4, t6 } by new { t1.STATUS, t3.NAME_COUNTRY, t4.NAME_FILM, t6.WORKER_SURNAME, t6.WORKER_NAME, t6.WORKER_PATR,  t4.RATING } into g
                     select new
                     {
                         All = g.Key,
                         Count = g.Count()
                     };


            //Creates a new instance of WordDocument (Empty Word Document)
            using (WordDocument document = new WordDocument())
            {
                document.EnsureMinimal();
                IWSection section = document.AddSection();
                IWParagraph paragraph = section.AddParagraph();
                foreach (var el in pl.ToList())
                {
                    IWTextRange textRange = paragraph.AppendText(el.All.NAME_FILM + "\n");
                    textRange.CharacterFormat.Bold = true;
                    if (el.All.WORKER_PATR != null)
                    {
                        document.LastParagraph.AppendText("\tСтрана: " + el.All.NAME_COUNTRY + "; Режиссер: " + el.All.WORKER_SURNAME + " " + el.All.WORKER_NAME[0] + "." + el.All.WORKER_PATR[0] + "."
                        + "; Рейтинг: " + el.All.RATING + "; Кол-во проданных билетов: " + el.Count + "\n");
                    }
                    else
                    {
                        document.LastParagraph.AppendText("\tСтрана: " + el.All.NAME_COUNTRY + "; Режиссер: " + el.All.WORKER_SURNAME + " " + el.All.WORKER_NAME[0] + "."
                        + "; Рейтинг: " + el.All.RATING + "; Кол-во проданных билетов: " + el.Count + "\n");
                    }
                }

                //document.LastParagraph.AppendText("Hello World");
                document.Save("Result.docx", FormatType.Docx, HttpContext.ApplicationInstance.Response, HttpContentDisposition.Attachment);
            }

        }
    }
}