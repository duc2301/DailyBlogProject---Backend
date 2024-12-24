using DailyBlogProject.Common.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;

namespace DailyBlogProject.Common.BLL
{
    public interface IGenericService<T> where T : class
    {
        void Create(T entity);
        void Create(List<T> listEntities);
        List<T> GetAll();
        T GetByID(int id);
        void Update(T entity);
        bool Remove(T entity);
    }

}