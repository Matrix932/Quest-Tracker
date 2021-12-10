using Microsoft.AspNetCore.Identity;

namespace DemoProject.Models
{
    public class ApplicationUser:IdentityUser
    {
        //Dodao
        public string Name { get; set; }
    }
}
