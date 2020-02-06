using ObjetosDeNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebMVC.Controllers
{
    public class ChefController : Controller
    {
        // GET: Chef
        public ActionResult Index()
        {
            List<Cheffs> chef = BBL.ComaEnJoeBLL.listCheff();
            return View(chef);
        }

        // GET: Chef/Details/5
        public ActionResult Details(int id)
        {
            //BBL.ComaEnJoeBLL.getChef();
            return View();
        }

        // GET: Chef/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Chef/Create
        [HttpPost]
        public ActionResult Create(Cheffs collection)
        {
            try
            {

                BBL.ComaEnJoeBLL.InsertCheff(collection.Apellido,collection.Nombre, collection.Telefono, collection.Especialidad);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Chef/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Chef/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Chef/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Chef/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                BBL.ComaEnJoeBLL.deleteChef(id);

                return RedirectToAction("Index");
            }
            catch
            {
                return RedirectToAction("Index");
            }
        }
    }
}
