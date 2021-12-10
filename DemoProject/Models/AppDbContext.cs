using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace DemoProject.Models
{
    public class AppDbContext:IdentityDbContext<ApplicationUser>//Identity framework core has premade identity tables
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {

        }

       public DbSet<Project> Projects { get; set; }
       public DbSet<Task> Tasks { get; set; }
        
    }
}
