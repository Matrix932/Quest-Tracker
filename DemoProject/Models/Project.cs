using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;

namespace DemoProject.Models
{
    public class Project
    {
        [Required]
        [Key]
        public int Id { get; set; }

        [Required(ErrorMessage ="You must enter the project name")]
        
        public string Name { get; set; }

        [DataType(DataType.Date)]
        [Display(Name = "Project start date")]

        [Required(ErrorMessage = "You must enter the project start date")]
        public DateTime StartDate { get; set; }

        [DataType(DataType.Date)]
        [Display(Name = "Project completion date")]
        public DateTime? CompletionDate { get; set; }

        
        public string CurrentStatus { get; set; }

        [Required]
        [Range(1, 10,
        ErrorMessage = "Priority must be between 1 and 10")]
        public int Priority { get; set; }

        public string Description { get; set; }

        public List<Task> Tasks;




    }
}
