using DemoProject.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

namespace DemoProject.Controllers
{
    public class TaskController : Controller
    {
        public static Project project;

        private readonly AppDbContext _db;
        public TaskController(AppDbContext db)
        {
           _db=db;
        }
        public IActionResult Index(int? id)
        {
            

            if (id == null || id == 0)
            {
                return NotFound();
            }
            project=_db.Projects.Where(p => p.Id == id).FirstOrDefault();
            //var project=_db.Projects.Find(id);
            //SelectListItem projectListItem=new SelectListItem { Text=project.Name,Value=project.Id.ToString() };
            //ViewBag.ProjectListItem=projectListItem;

            IEnumerable<Task> tasks= _db.Tasks.Where(x=>x.Project.Id == id).OrderBy(x=>x.Priority).ToList();

            return View(tasks);
        }

        public IActionResult Create()
        {

            ViewBag.Projekat = _db.Projects.Where(x => x.Id == project.Id).ToList();
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(Task task)
        {
            if (ModelState.IsValid)
            {
                task.ProjectID = project.Id;
                
                _db.Tasks.Add(task);
                _db.SaveChanges();

                return RedirectToAction("Index", new { id = project.Id });
            }
            return View(task);
        }

        [HttpGet]
        public IActionResult Delete(int? id)
        {


            if (id == null || id == 0)
            {
                return NotFound();
            }
            var obj = _db.Tasks.Find(id);
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
            var selectedTask = _db.Tasks.Find(id);

            if (selectedTask == null)
            {
                return NotFound();
            }

            _db.Tasks.Remove(selectedTask);
            _db.SaveChanges();
            return RedirectToAction("Index",new { id = project.Id });

        }
        [HttpGet]
        public IActionResult Update(int? id)
        {
            var selectedTask = _db.Tasks.Find(id);
            if (selectedTask == null)
            {
                return NotFound();
            }
            return View(selectedTask);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Update(Task task)
        {
            task.ProjectID=project.Id;

            if (ModelState.IsValid)
            {
                _db.Tasks.Update(task);
                _db.SaveChanges();
                return RedirectToAction("Index", new { id = project.Id });
            }

            return View(task);

        }
    }
}
