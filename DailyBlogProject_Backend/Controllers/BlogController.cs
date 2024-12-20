using DailyBlogProject.BLL;
using DailyBlogProject.Common.Request;
using DailyBlogProject.Common.Response;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace DailyBlogProject_Backend.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BlogController : ControllerBase
    {
        private BlogService categoryService;
        public BlogController()
        {
            categoryService = new BlogService();
        }
        [HttpPost("getByID")]
        public IActionResult GetBlogByID([FromBody] SimpleRequest simpleRequest)
        {
            var response = new SingleResponse();
            response = categoryService.Read(simpleRequest.Id);
            return Ok(response);
        }
    }
}
