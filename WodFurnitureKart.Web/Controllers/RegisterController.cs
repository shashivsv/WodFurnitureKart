using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WodFurnitureKart.Web.Models;

namespace WodFurnitureKart.Web.Controllers
{
    public class RegisterController : Controller
    {
        // GET: Register
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Register(tblUser user)
            {
            return View("");
        }
    }
}