using DailyBlogProject.DAL.Models;
using DailyBlogProject.Common.DAL;
using System.Threading.Tasks;
using DailyBlogProject.DAL;

namespace DailyBlogProject.DAL
{
    public class UnitOfWork
    {
        private readonly DailyBlogProjectContext _context;
        private BlogRepo _blogRepository;

        public UnitOfWork() => _context ??= new DailyBlogProjectContext();

        public UnitOfWork(DailyBlogProjectContext context)
        {
            _context = context;
        }

        public BlogRepo BlogRepository
        {
            get { return _blogRepository ??= new BlogRepo(_context); }
        }

        // Add other repositories here
        // private AnotherRepo _anotherRepo;
        // public AnotherRepo AnotherRepo => _anotherRepo ??= new AnotherRepo(_context);

        public async Task<int> SaveChangesAsync()
        {
            return await _context.SaveChangesAsync();
        }

        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
