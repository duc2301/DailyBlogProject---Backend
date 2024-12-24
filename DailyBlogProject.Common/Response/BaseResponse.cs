using System;
using System.Collections.Generic;
using System.Text;

namespace DailyBlogProject.Common.Response
{
    public class BaseResponse
    {
        public bool Status { get; set; }

        public string Message { get; set; }

        public object Data { get; set; }

    }
}