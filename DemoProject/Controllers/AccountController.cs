using DemoProject.Models;
using DemoProject.Models.ViewModels;
using DemoProject.Utility;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;
using System.Threading.Tasks;

namespace DemoProject.Controllers
{
    public class AccountController : Controller
    {
        private readonly AppDbContext _db;
        UserManager <ApplicationUser> _userManager;
        SignInManager<ApplicationUser> _signInManager;
        RoleManager<IdentityRole> _roleManager;

        public static string name;

        public AccountController(AppDbContext db,UserManager<ApplicationUser> userManager,
            SignInManager<ApplicationUser> signInManager,RoleManager<IdentityRole> roleManager)
        {
            _db = db;
            _userManager = userManager;
            _signInManager = signInManager;
            _roleManager = roleManager; 
        }

        public IActionResult Login()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Login(LoginViewModel model)
        {
            if (ModelState.IsValid)
            {
                var resulet = await _signInManager.PasswordSignInAsync(model.Email, model.Password, model.RememberMe,false);
                if(resulet.Succeeded)
                {
                    return RedirectToAction("Index", "Project");//Landing page nakon logina
                }
                ModelState.AddModelError("", "Invalid Login Attepmt");
            }
            return View(model);
        }

        public async  Task<IActionResult> Register()
        {
            if(!_roleManager.RoleExistsAsync(Helper.Admin).GetAwaiter().GetResult())//getting roles for user(if it doesnt exist)
            {
               await _roleManager.CreateAsync(new IdentityRole(Helper.Admin));
               await _roleManager.CreateAsync(new IdentityRole(Helper.Developer));
               await _roleManager.CreateAsync(new IdentityRole(Helper.Intern));
            }
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Register(RegisterViewModel model)
        {

            HttpContext.Session.SetString("usersName", model.Name);
            if (ModelState.IsValid)
            {

                var user = new ApplicationUser
                {
                    UserName = model.Email,
                    Email = model.Email,
                    Name = model.Name
                };

                var result = await _userManager.CreateAsync(user, model.Password);
                if (result.Succeeded)
                {
                    await _userManager.AddToRoleAsync(user, model.RoleName);
                    if (!User.IsInRole(Helper.Admin))
                    {
                        await _signInManager.SignInAsync(user, isPersistent: false);
                    }
                    else
                    {
                        TempData["newAdminSignUp"] = user.Name;
                    }
                    return RedirectToAction("Index", "Home");
                }
                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError("", error.Description);
                }
            }
            return View(model);
        }

        [HttpPost]
        public async Task<IActionResult> Logout()
        {
            await _signInManager.SignOutAsync();

            return RedirectToAction("Login","Account");
        }
    }
}
