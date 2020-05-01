namespace WebApplication1
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<CATEGORIES> CATEGORIES { get; set; }
        public virtual DbSet<COUNTRIES> COUNTRIES { get; set; }
        public virtual DbSet<FILMS> FILMS { get; set; }
        public virtual DbSet<GENRES> GENRES { get; set; }
        public virtual DbSet<LISTWORKERS> LISTWORKERS { get; set; }
        public virtual DbSet<POSITION> POSITION { get; set; }
        public virtual DbSet<ROOMS> ROOMS { get; set; }
        public virtual DbSet<STATUSES> STATUSES { get; set; }
        public virtual DbSet<STUDIES> STUDIES { get; set; }
        public virtual DbSet<TICKETS> TICKETS { get; set; }
        public virtual DbSet<CLIENTS> CLIENTS { get; set; }
        public virtual DbSet<LISTJOBS> LISTJOBS { get; set; }
        public virtual DbSet<PLACES> PLACES { get; set; }
        public virtual DbSet<S_STAT> S_STAT { get; set; }
        public virtual DbSet<SEANS> SEANS { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CATEGORIES>()
                .Property(e => e.NAME_CATEG)
                .IsUnicode(false);

            modelBuilder.Entity<CATEGORIES>()
                .HasMany(e => e.ROOMS)
                .WithOptional(e => e.CATEGORIES)
                .HasForeignKey(e => e.CATEG);

            modelBuilder.Entity<COUNTRIES>()
                .Property(e => e.NAME_COUNTRY)
                .IsUnicode(false);

            modelBuilder.Entity<COUNTRIES>()
                .HasMany(e => e.FILMS)
                .WithRequired(e => e.COUNTRIES)
                .HasForeignKey(e => e.ID_COUNTRY)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<FILMS>()
                .Property(e => e.NAME_FILM)
                .IsUnicode(false);

            modelBuilder.Entity<FILMS>()
                .Property(e => e.RATING)
                .HasPrecision(10, 2);

            modelBuilder.Entity<FILMS>()
                .HasMany(e => e.LISTJOBS)
                .WithRequired(e => e.FILMS)
                .HasForeignKey(e => e.ID_FILM)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<FILMS>()
                .HasMany(e => e.SEANS)
                .WithOptional(e => e.FILMS)
                .HasForeignKey(e => e.ID_FILM);

            modelBuilder.Entity<GENRES>()
                .Property(e => e.NAME_GENRE)
                .IsUnicode(false);

            modelBuilder.Entity<GENRES>()
                .HasMany(e => e.FILMS)
                .WithRequired(e => e.GENRES)
                .HasForeignKey(e => e.ID_GENRE)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<LISTWORKERS>()
                .Property(e => e.WORKER_NAME)
                .IsUnicode(false);

            modelBuilder.Entity<LISTWORKERS>()
                .Property(e => e.WORKER_SURNAME)
                .IsUnicode(false);

            modelBuilder.Entity<LISTWORKERS>()
                .Property(e => e.WORKER_PATR)
                .IsUnicode(false);

            modelBuilder.Entity<LISTWORKERS>()
                .HasMany(e => e.LISTJOBS)
                .WithRequired(e => e.LISTWORKERS)
                .HasForeignKey(e => e.ID_WORKER)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<POSITION>()
                .Property(e => e.NAME_POS)
                .IsUnicode(false);

            modelBuilder.Entity<POSITION>()
                .HasMany(e => e.LISTJOBS)
                .WithRequired(e => e.POSITION)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ROOMS>()
                .Property(e => e.NAME_ROOM)
                .IsUnicode(false);

            modelBuilder.Entity<ROOMS>()
                .HasOptional(e => e.SEANS)
                .WithRequired(e => e.ROOMS);

            modelBuilder.Entity<STATUSES>()
                .Property(e => e.NAME_STATUS)
                .IsUnicode(false);

            modelBuilder.Entity<STUDIES>()
                .Property(e => e.NAME_STUDIA)
                .IsUnicode(false);

            modelBuilder.Entity<STUDIES>()
                .HasMany(e => e.FILMS)
                .WithRequired(e => e.STUDIES)
                .HasForeignKey(e => e.ID_STUDIA)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CLIENTS>()
                .Property(e => e.CLIENT_LOGIN)
                .IsUnicode(false);

            modelBuilder.Entity<CLIENTS>()
                .Property(e => e.CLIENT_PASSWORD)
                .IsUnicode(false);

            modelBuilder.Entity<CLIENTS>()
                .Property(e => e.CLIENT_ROLE)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<S_STAT>()
                .Property(e => e.OLD_STATUS)
                .IsUnicode(false);

            modelBuilder.Entity<S_STAT>()
                .Property(e => e.NEW_STATUS)
                .IsUnicode(false);
        }
    }
}
