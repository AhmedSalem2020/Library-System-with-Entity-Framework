namespace EFProject.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class editReturnDateToAllowNull : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.userBooks", "returnDate", c => c.DateTime());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.userBooks", "returnDate", c => c.DateTime(nullable: false));
        }
    }
}
