using DemoProject.Models;
using DemoProject.Models.ViewModels;
using DemoProject.Utility;
using System.Collections.Generic;
using System.Linq;

namespace DemoProject.Services
{
    public class AppoitmentService : IAppoitmentService
    {
        private readonly AppDbContext _db;

        public AppoitmentService(AppDbContext db)
        {
            _db = db;
        }

        public List<DeveloperViewModel> GetDevelopers()//Nabavi sve usere koji su developeri 
        {
            var developers = (from user in _db.Users
                              join userRoles in _db.UserRoles on user.Id equals userRoles.UserId
                              join roles in _db.Roles.Where(x=>x.Name==Helper.Developer) on userRoles.RoleId equals roles.Id
                            select new DeveloperViewModel
                            {
                              Id=user.Id,
                              Name=user.Name,  
                            }).ToList();
         
            return developers;

        }

        public List<InternViewModel> GetInterns()
        {
            var intern = (from user in _db.Users
                              join userRoles in _db.UserRoles on user.Id equals userRoles.UserId
                              join roles in _db.Roles.Where(x => x.Name == Helper.Intern) on userRoles.RoleId equals roles.Id
                              select new InternViewModel
                              {
                                  Id = user.Id,
                                  Name = user.Name,
                              }).ToList();

            return intern;
        }
    }
}
