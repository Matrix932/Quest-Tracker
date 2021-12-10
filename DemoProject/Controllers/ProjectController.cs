using DemoProject.Models;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;

namespace DemoProject.Controllers
{
    public class ProjectController : Controller
    {
        private readonly AppDbContext _db;

        public ProjectController(AppDbContext db)
        {
            _db = db;
        }
        public IActionResult Index()
        {
            IEnumerable<Project> projects = _db.Projects.OrderBy(x=>x.Priority);
            return View(projects);
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(Project project)
        {
            if (ModelState.IsValid)
            {
                _db.Projects.Add(project);
                _db.SaveChanges();

                return RedirectToAction("Index");
            }
            return View(project);
        }

        [HttpGet]
        public IActionResult Delete(int? id)
        {
            

            if (id == null||id==0)
            {
                return NotFound();
            }
            var obj= _db.Projects.Find(id);
            if (obj == null)
            {
                return NotFound();
            }
            return View(obj);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult DeletePost(int? id)
        {
            var selectedProject=_db.Projects.Find(id);

            if(selectedProject==null)
            {
                return NotFound();
            }
            
                _db.Projects.Remove(selectedProject);
                _db.SaveChanges();
                 return RedirectToAction("Index");
           
        }

        //HttpGet
        public IActionResult Update(int?id)
        {
            var selectedProject= _db.Projects.Find(id);
            if (selectedProject == null)
            {
                return NotFound();
            }
            return View(selectedProject);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Update(Project project)
        {

            if (ModelState.IsValid)
            {

                _db.Projects.Update(project);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(project);

        }
    }
}
