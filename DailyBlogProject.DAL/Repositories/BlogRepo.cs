using DailyBlogProject.DAL.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;

namespace DailyBlogProject.DAL
{
    public class BlogRepo
    {
        private readonly DailyBlogProjectContext _context;

        public BlogRepo(DailyBlogProjectContext context)
        {
            _context = context;
        }

        public Blog GetBlogByID(int id)
        {
            return _context.Blogs.Find(id);
        }

        public List<Blog> GetAll()
        {
            return _context.Blogs.ToList();
        }
    }
}
