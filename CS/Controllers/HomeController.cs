using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DevExpress.Web.Mvc;
using System.ComponentModel;

namespace Example.Controllers {
    [HandleError]
    public class HomeController : Controller {
        public ActionResult Index() {
            ViewData["Message"] = "Welcome to DevExpress Extensions for ASP.NET MVC!";

            MyModel order = new MyModel() { Name = "Vest", Meal = CommonMeals.Breakfast };

            return View(order);
        }

        [HttpPost]
        public ActionResult MakeOrder([ModelBinder(typeof(MyEditorsBinder))] MyModel order) {
            ViewData["Message"] = String.Format("Your order is ready, {0}: {1}.", order.Name, order.Meal);

            return View("Index", order);
        }
    }
}
