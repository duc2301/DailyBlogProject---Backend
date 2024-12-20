using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace DailyBlogProject.DAL.Models;

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

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Data Source=localhost;Initial Catalog=DailyBlogProject;Persist Security Info=True;User ID=sa;Password=12345;Encrypt=False");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Blog>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("Blog");

            entity.Property(e => e.BlogId).ValueGeneratedOnAdd();
            entity.Property(e => e.BlogName).HasMaxLength(50);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
