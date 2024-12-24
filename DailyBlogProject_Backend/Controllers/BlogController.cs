using DailyBlogProject.BLL;
using DailyBlogProject.Common.Request;
using DailyBlogProject.Common.Response;
using DailyBlogProject.DAL.Models;
using Microsoft.AspNetCore.Mvc;

namespace DailyBlogProject_Backend.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BlogController : ControllerBase
    {
        private readonly BlogService _blogService;

        public BlogController(BlogService blogService)
        {
            _blogService = blogService;
        }

        [HttpGet("get-By-ID")]
        public IActionResult GetBlogByID([FromQuery] BlogRequestModel blogRequest)
        {
            if (blogRequest == null)
            {
                return BadRequest("Invalid request.");
            }

            var response = _blogService.GetBlogByID(blogRequest.BlogId);
            if (response.Data == null)
            {
                return NotFound("Blog not found.");
            }

            return Ok(response);
        }

        [HttpGet("GetAll")]
        public IActionResult GetAll()
        {
            var response = _blogService.GetAll();
            return Ok(response);
        }
    }
}
