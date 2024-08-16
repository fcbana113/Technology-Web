using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;
using System.Xml.Linq;
using WebBanDoCongNghe.Models;
using System.Threading.Tasks;
using System.Text;
using System.Threading;
using System.Net;

namespace WebBanDoCongNghe.Controllers
{
    public class ContactController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult SendEmail(MailModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var message = new MailMessage();
                    message.To.Add(new MailAddress("daungocanhquan@gmail.com"));
                    message.From = new MailAddress(model.Email);
                    message.Subject = model.Subject;
                    message.Body = model.Message + "\n\n" + "Phone Number: " + model.PhoneNumber;
                    message.IsBodyHtml = false;

                    using (var smtp = new SmtpClient())
                    {
                        var credential = new NetworkCredential
                        {
                            UserName = "daungocanhquan@gmail.com",
                            Password = "hwiqfhcteybdxoxp"
                        };
                        smtp.Credentials = credential;
                        smtp.Host = "smtp.gmail.com";
                        smtp.Port = 587;
                        smtp.EnableSsl = true;
                        smtp.Send(message);
                        return RedirectToAction("Index");
                    }
                }
                catch (Exception ex)
                {
                    ModelState.AddModelError("", "Error: " + ex.Message);
                }
            }
            return View("Index", model);
        }
    }
}