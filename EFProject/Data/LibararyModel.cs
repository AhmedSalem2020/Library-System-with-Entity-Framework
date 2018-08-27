namespace EFProject.Data
{
    using System;
    using System.Data.Entity;
    using System.Linq;
    using System.Collections.Generic;

    public class LibararyModel : DbContext
    {
        public LibararyModel()
           : base("name=LibararyModel")
        {
        }
        public virtual DbSet<user> users { get; set; }
        public virtual DbSet<employee> employees { get; set; }
        public virtual DbSet<userBook> userBook { get; set; }
        public virtual DbSet<category> categories { get; set; }
        public virtual DbSet<author> authors { get; set; }
        public virtual DbSet<publisher> publishers { get; set; }
        public virtual DbSet<book> books { get; set; }
        public virtual DbSet<member> members { get; set; }
        
        // Your context has been configured to use a 'LibararyModel' connection string from your application's 
        // configuration file (App.config or Web.config). By default, this connection string targets the 
        // 'EFProject.Data.LibararyModel' database on your LocalDb instance. 
        // 
        // If you wish to target a different database and/or database provider, modify the 'LibararyModel' 
        // connection string in the application configuration file.


        // Add a DbSet for each entity type that you want to include in your model. For more information 
        // on configuring and using a Code First model, see http://go.microsoft.com/fwlink/?LinkId=390109.

        // public virtual DbSet<MyEntity> MyEntities { get; set; }
    }

    //public class MyEntity
    //{
    //    public int Id { get; set; }
    //    public string Name { get; set; }
    //}
}