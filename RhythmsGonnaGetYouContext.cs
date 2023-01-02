using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using RhythmsGonnaGetYou.bin;

namespace RhythmsGonnaGetYou
{
    public class RhythmsGonnaGetYouContext : DbContext
    {
        public DbSet<Albums> Albums { get; set; }

        public DbSet<Bands> Bands { get; set; }

        public DbSet<Songs> Songs { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            // Testing
            // var loggerFactory = LoggerFactory.Create(builder => builder.AddConsole());
            // optionsBuilder.UseLoggerFactory(loggerFactory);

            // Connects to Db
            optionsBuilder.UseNpgsql("server = localhost; database = RhythmsGonnaGetYouDb");
        }
    }
}