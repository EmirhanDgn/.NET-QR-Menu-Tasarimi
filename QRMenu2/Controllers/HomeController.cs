using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QRMenu2.Models;

namespace QRMenu2.Controllers
{
    public class HomeController : Controller
    {
        qrmenuEntities db = new qrmenuEntities();

        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Kahvalti()
        {
            var model = db.urunler.ToList();
            return View(model);
        }


        public ActionResult Baslangic()
        {
            var model = db.urunler.ToList();
            return View(model);
        }

        public ActionResult Pizza()
        {
            var model = db.urunler.ToList();
            return View(model);
        }

        public ActionResult Burger()
        {
            var model = db.urunler.ToList();
            return View(model);
        }

        public ActionResult Makarna()
        {
            var model = db.urunler.ToList();
            return View(model);
        }

        public ActionResult Icecekler()
        {
            var model = db.urunler.ToList();
            return View(model);
        }

        public ActionResult Kokteyl()
        {
            var model = db.urunler.ToList();
            return View(model);
        }
    }
}