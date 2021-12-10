using Microsoft.AspNetCore.Mvc.Rendering;
using System.Collections.Generic;

namespace DemoProject.Utility
{
    public static class TaskCS
    {
        public static string ToDo ="To do";
        public static string InProgress ="In progress";
        public static string Done ="Done";

        public static List<SelectListItem> GetTaskDopdown()
        {
            return new List<SelectListItem>
            {
                new SelectListItem{Value=TaskCS.ToDo,Text="To do"},
                new SelectListItem{Value=TaskCS.InProgress,Text="In progress"},
                new SelectListItem{Value=TaskCS.Done,Text="Done"}
            };
        }
    }
}
