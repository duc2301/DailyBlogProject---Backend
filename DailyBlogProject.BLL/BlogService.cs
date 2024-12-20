using DailyBlogProject.Common.BLL;
using DailyBlogProject.Common.DAL;
using DailyBlogProject.Common.Response;
using DailyBlogProject.DAL;
using DailyBlogProject.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DailyBlogProject.BLL
{
    public class BlogService : GenericService<BlogRepo, Blog>
    {
        private BlogRepo repo;
        public BlogService()
        {
            repo = new BlogRepo();
        }
        public override SingleResponse Read(int id)
        {
            var response = new SingleResponse();
            response.Data = repo.Read(id);
            return response;
        }

    }
}
