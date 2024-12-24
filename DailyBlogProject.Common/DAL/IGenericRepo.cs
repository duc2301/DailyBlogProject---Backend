using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;

namespace DailyBlogProject.Common.DAL
{
    public interface IGenericRepo<T> where T : class
    {
        public void Create(T entities);
        public void Create(List<T> listEntities);
        public List<T> GetAll() ;
        public T GetByID(int id) ;
        public void Update(T entities);
        public bool Remove(T entities);


        //IQueryable<T> All { get; }

    }
}