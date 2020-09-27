using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using WodFurnitureKart.Web.Models;

namespace WodFurnitureKart.Web.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
       /// [HttpPost]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(tblUser user)
        {
            if (ModelState.IsValid)
            {
                using (WooFurnitureKartDbEntities oWooFurnitureKartDbEntities = new WooFurnitureKartDbEntities())
                {
                    var users = (from i in oWooFurnitureKartDbEntities.tblUsers
                                 where i.EmailId == user.EmailId && i.Password == user.Password
                                 select i).FirstOrDefault();


                    if (users != null)
                    {
                        Session["UserName"] = users.UserName;
                        Session["UserID"] = users.UserId;
                        Session["FirstName"] = users.FirstName;
                        Session["LastName"] = users.LastName;
                        Session["SurName"] = users.SurName;
                        FormsAuthentication.SetAuthCookie(user.EmailId, false);
                        return RedirectToAction("Index","Kart");
                    }
                }
            }
            ModelState.AddModelError("", "invalid Username or Password");
            return View();
        }
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }
        [Authorize]
        public ActionResult Kart()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult Registration()
        {
            return View();
        }

       // [ValidateAntiForgeryToken]
        public ActionResult LogOff()
        {
            //AuthenticationManager.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
            FormsAuthentication.SignOut();
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();

            return RedirectToAction("Index", "Home");
        }
    }
}