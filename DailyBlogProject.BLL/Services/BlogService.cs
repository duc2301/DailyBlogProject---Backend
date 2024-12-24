using DailyBlogProject.Common.Response;
using DailyBlogProject.DAL;
using DailyBlogProject.DAL.Models;
using System.Collections.Generic;

namespace DailyBlogProject.BLL
{
    public class BlogService
    {
        private readonly UnitOfWork _unitOfWork;

        public BlogService(UnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public BlogResponseModel GetBlogByID(int id)
        {
            var response = new BlogResponseModel();
            response.Data = _unitOfWork.BlogRepository.GetBlogByID(id);
            if (response.Data != null)
            {
                response.Status = true;
                response.Message = "Success";
            }
            return response;
        }

        public List<Blog> GetAll()
        {
            return _unitOfWork.BlogRepository.GetAll();
        }
    }
}
