using DailyBlogProject.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DailyBlogProject.Common.DAL;

namespace DailyBlogProject.DAL
{
    public class BlogRepo : GenericRepo<DailyBlogProjectContext,Blog>
    {
        public BlogRepo() { }

        public override Blog Read(int id)
        {
            var response = All.FirstOrDefault(c => c.BlogId == id);
            return response;
        }
    }
}
