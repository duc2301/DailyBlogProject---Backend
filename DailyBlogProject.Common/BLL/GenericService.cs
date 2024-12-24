using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace DailyBlogProject.Common.BLL
{
    using DAL;
    using Response;

    public class GenericService<Db, T> : IGenericService<T> where T : class where Db : DbContext, new()
    {
        private readonly IGenericRepo<T> _repository;

        public GenericService(IGenericRepo<T> repository)
        {
            _repository = repository;
        }

        public void Create(T entity)
        {
            _repository.Create(entity);
        }

        public void Create(List<T> listEntities)
        {
            _repository.Create(listEntities);
        }

        public List<T> GetAll()
        {
            return _repository.GetAll();
        }

        public T GetByID(int id)
        {
            return _repository.GetByID(id);
        }

        public void Update(T entity)
        {
            _repository.Update(entity);
        }

        public bool Remove(T entity)
        {
            return _repository.Remove(entity);
        }
    }
}
