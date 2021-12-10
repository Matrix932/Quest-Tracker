using Microsoft.AspNetCore.Mvc.Rendering;
using System.Collections.Generic;

namespace DemoProject.Utility
{
    public static class Helper
    {
        public static string Admin="Admin";
        public static string Intern="Intern";
        public static string Developer = "Developer";

        public static List<SelectListItem> GetRolesForDropdown()
        {
            return new List<SelectListItem>
            {
                new SelectListItem{Value=Helper.Admin,Text="Admin"},
                new SelectListItem{Value=Helper.Intern,Text="Intern"},
                new SelectListItem{Value=Helper.Developer,Text="Developer"}
            };
        }
    }
}
