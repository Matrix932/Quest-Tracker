using DemoProject.Services;
using Microsoft.AspNetCore.Mvc;

namespace DemoProject.Controllers
{
    public class AppoitmentController : Controller
    {
        private readonly IAppoitmentService _appoitmentService;
         
        public AppoitmentController(IAppoitmentService appoitmentService)
        {
            _appoitmentService = appoitmentService;//Dodato i u startup videces
        }
        public IActionResult Index()
        {
            ViewBag.DevList = _appoitmentService.GetDevelopers();
            return View();
        }
    }
}
