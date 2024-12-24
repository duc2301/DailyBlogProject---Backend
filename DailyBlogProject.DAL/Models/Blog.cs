using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace DailyBlogProject.DAL.Models;

public partial class Blog
{
    public int BlogId { get; set; }

    public string? BlogName { get; set; }
}
