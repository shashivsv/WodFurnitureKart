using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WodFurnitureKart.Web.Models;
using WodFurnitureKart.Web.ViewModels;

namespace WodFurnitureKart.Web.Areas.Admin.Controllers
{
    public class PageController : Controller
    {
        // GET: Admin/Page

         public ActionResult Index()
        {

            GetPages();
            return View();
        }
        public IEnumerable<PageVM> GetPages()
        {
            List<PageVM> listPages = new List<ViewModels.PageVM>();
            WooFurnitureKartDbEntities o = new WooFurnitureKartDbEntities();
            
                
            return listPages;
        }
    }
}