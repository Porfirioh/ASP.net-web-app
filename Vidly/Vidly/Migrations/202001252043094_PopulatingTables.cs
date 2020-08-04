namespace Vidly.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class PopulatingTables : DbMigration
    {
        public override void Up()
        {
            Sql("INSERT INTO Membershiptypes(Id, Name, SignUpFee, DurationInMonths, DiscountRate) Values(1, 'Pass as You Go', 0,0,0)");
            Sql("INSERT INTO Membershiptypes(Id, Name, SignUpFee, DurationInMonths, DiscountRate) Values(2, 'Monthly', 30,1,10)");
            Sql("INSERT INTO Membershiptypes(Id, Name, SignUpFee, DurationInMonths, DiscountRate) Values(3, 'Quarterly', 90,3,15)");
            Sql("INSERT INTO Membershiptypes(Id, Name, SignUpFee, DurationInMonths, DiscountRate) Values(4, 'Annual', 300,12,20)");
            Sql("INSERT INTO Genres(Id, genre) VALUES(1, 'Comedy')");
            Sql("INSERT INTO Genres(Id, genre) VALUES(2, 'Action')");
            Sql("INSERT INTO Genres(Id, genre) VALUES(3, 'Family')");
            Sql("INSERT INTO Genres(Id, genre) VALUES(4, 'Romance')");
        }
        
        public override void Down()
        {
        }
    }
}
