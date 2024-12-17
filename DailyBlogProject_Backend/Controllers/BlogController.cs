using Microsoft.AspNetCore.Mvc;

namespace DailyBlogProject_Backend.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class BlogController : ControllerBase
    {
        [HttpGet]
        public string GetBlog ()
        {
            return "reading all the blog";
        }

        [HttpGet("{id}")]
        public string GetBlogByID(int id)
        {
            return $"reading blog ID: {id}";
        }

        [HttpPost]
        public string CreateBlog()
        {
            return $"Create a blog";
        }

        [HttpDelete("{id}")]
        public string DeleteBlog()
        {
            return $"Delete a blog";
        }
    }
}
