using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using System.Collections.Generic;


namespace DailyBlogProject.DAL.Models
{
    public partial class DailyBlogProjectContext : DbContext
    {

        public DailyBlogProjectContext()
        {
        }

        public DailyBlogProjectContext(DbContextOptions<DailyBlogProjectContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Blog> Blogs { get; set; }
        //public DbSet<User> Users { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Blog>(entity =>
            {
                entity.ToTable("Blog");

                entity.HasKey(e => e.BlogId);

                entity.Property(e => e.BlogId).ValueGeneratedOnAdd();
                entity.Property(e => e.BlogName).HasMaxLength(100).IsRequired();
            });



            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);

    }
}
