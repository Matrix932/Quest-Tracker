using Microsoft.AspNetCore.Mvc.Rendering;
using System.Collections.Generic;

namespace DemoProject.Utility
{
    public static class ProjectCS
    {
        public static string NotStarted ="Not started";
        public static string Active = "Active";
        public static string Completed = "Completed";

        public static List<SelectListItem> GetProjectStatusDropdown()
        {
            return new List<SelectListItem>
            {
                new SelectListItem{Value=ProjectCS.NotStarted,Text="Not started"},
                new SelectListItem{Value=ProjectCS.Active,Text="Active"},
                new SelectListItem{Value=ProjectCS.Completed,Text="Completed"}
            };
        }
    }
}
