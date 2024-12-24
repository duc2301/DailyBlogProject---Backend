using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace DailyBlogProject.Common.DAL
{
    public class GenericRepo<Db, T> : IGenericRepo<T> where T : class where Db : DbContext, new()
    {
        private readonly Db _context;
        private readonly DbSet<T> _dbSet;

        public GenericRepo(Db context)
        {
            _context = context;
            _dbSet = context.Set<T>();
        }

        public void Create(T entity)
        {
            _dbSet.Add(entity);
            _context.SaveChanges();
        }

        public void Create(List<T> listEntities)
        {
            _dbSet.AddRange(listEntities);
            _context.SaveChanges();
        }

        public List<T> GetAll() => _dbSet.ToList();

        public T GetByID(int id) => _dbSet.Find(id);

        public void Update(T entity)
        {
            _dbSet.Attach(entity);
            _context.Entry(entity).State = EntityState.Modified;
            _context.SaveChanges();
        }

        public bool Remove(T entity)
        {
            if (entity != null)
            {
                _dbSet.Remove(entity);
                _context.SaveChanges();
                return true;
            }
            return false;
        }
    }
}
