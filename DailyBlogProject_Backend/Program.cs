
namespace DailyBlogProject_Backend
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.

            builder.Services.AddControllers();
            // Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();

            var app = builder.Build();

            // Configure the HTTP request pipeline.
            if (app.Environment.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            app.UseHttpsRedirection();

            app.UseAuthorization();


            app.MapControllers();

            //Routing
            // "Blog"
            //app.MapGet("/Blog", () =>
            //{
            //    return "reading all blog";
            //});

            //app.MapGet("/Blog/{id}", (int id) =>
            //{
            //    return "Rading blog by ID";
            //});

            //app.MapPost("/Blog/Create", () =>
            //{
            //    return "creating a new blog ";
            //});

            //app.MapDelete("/Map/Delete{id}", (int id) =>
            //{
            //    return "Delete successfully";
            //});

            app.Run();
        }
    }
}
