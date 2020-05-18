using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication1;

namespace WebApplication1.Controllers
{
    public class LISTJOBSController : Controller
    {
        private Model1 db = new Model1();

        // GET: LISTJOBS
        public ActionResult Index()
        {
            var lISTJOBS = db.LISTJOBS.Include(l => l.FILMS).Include(l => l.LISTWORKERS).Include(l => l.POSITION);
            return View(lISTJOBS.ToList());
        }

        // GET: LISTJOBS/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LISTJOBS lISTJOBS = db.LISTJOBS.Find(id);
            if (lISTJOBS == null)
            {
                return HttpNotFound();
            }
            return View(lISTJOBS);
        }

        // GET: LISTJOBS/Create
        public ActionResult Create()
        {
            ViewBag.ID_FILM = new SelectList(db.FILMS, "FILM_ID", "NAME_FILM");
            ViewBag.ID_WORKER = new SelectList(db.LISTWORKERS, "WORKER_ID", "WORKER_NAME");
            ViewBag.ID_POS = new SelectList(db.POSITION, "ID_POS", "NAME_POS");
            return View();
        }

        // POST: LISTJOBS/Create
        // Чтобы защититься от атак чрезмерной передачи данных, включите определенные свойства, для которых следует установить привязку. Дополнительные 
        // сведения см. в статье https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID_WORKER,ID_FILM,ID_POS")] LISTJOBS lISTJOBS)
        {
            if (ModelState.IsValid)
            {
                db.LISTJOBS.Add(lISTJOBS);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ID_FILM = new SelectList(db.FILMS, "FILM_ID", "NAME_FILM", lISTJOBS.ID_FILM);
            ViewBag.ID_WORKER = new SelectList(db.LISTWORKERS, "WORKER_ID", "WORKER_NAME", lISTJOBS.ID_WORKER);
            ViewBag.ID_POS = new SelectList(db.POSITION, "ID_POS", "NAME_POS", lISTJOBS.ID_POS);
            return View(lISTJOBS);
        }

        // GET: LISTJOBS/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LISTJOBS lISTJOBS = db.LISTJOBS.Find(id);
            if (lISTJOBS == null)
            {
                return HttpNotFound();
            }
            ViewBag.ID_FILM = new SelectList(db.FILMS, "FILM_ID", "NAME_FILM", lISTJOBS.ID_FILM);
            ViewBag.ID_WORKER = new SelectList(db.LISTWORKERS, "WORKER_ID", "WORKER_NAME", lISTJOBS.ID_WORKER);
            ViewBag.ID_POS = new SelectList(db.POSITION, "ID_POS", "NAME_POS", lISTJOBS.ID_POS);
            return View(lISTJOBS);
        }

        // POST: LISTJOBS/Edit/5
        // Чтобы защититься от атак чрезмерной передачи данных, включите определенные свойства, для которых следует установить привязку. Дополнительные 
        // сведения см. в статье https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID_WORKER,ID_FILM,ID_POS")] LISTJOBS lISTJOBS)
        {
            if (ModelState.IsValid)
            {
                db.Entry(lISTJOBS).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ID_FILM = new SelectList(db.FILMS, "FILM_ID", "NAME_FILM", lISTJOBS.ID_FILM);
            ViewBag.ID_WORKER = new SelectList(db.LISTWORKERS, "WORKER_ID", "WORKER_NAME", lISTJOBS.ID_WORKER);
            ViewBag.ID_POS = new SelectList(db.POSITION, "ID_POS", "NAME_POS", lISTJOBS.ID_POS);
            return View(lISTJOBS);
        }

        // GET: LISTJOBS/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LISTJOBS lISTJOBS = db.LISTJOBS.Find(id);
            if (lISTJOBS == null)
            {
                return HttpNotFound();
            }
            return View(lISTJOBS);
        }

        // POST: LISTJOBS/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            LISTJOBS lISTJOBS = db.LISTJOBS.Find(id);
            db.LISTJOBS.Remove(lISTJOBS);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
