using DemoProject.Models.ViewModels;
using System.Collections.Generic;

namespace DemoProject.Services
{
    public interface IAppoitmentService
    {
        public List<DeveloperViewModel> GetDevelopers();
        public List<InternViewModel> GetInterns();
    }
}
