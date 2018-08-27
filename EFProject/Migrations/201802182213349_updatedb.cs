namespace EFProject.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updatedb : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.authors",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        email = c.String(),
                        fName = c.String(nullable: false),
                        lName = c.String(nullable: false),
                        image = c.String(),
                        birthDate = c.DateTime(nullable: false),
                        isDeleted = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.books",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        copiesCount = c.Int(nullable: false),
                        availableCopies = c.Int(nullable: false),
                        title = c.String(nullable: false),
                        autherId = c.Int(nullable: false),
                        publisherId = c.Int(nullable: false),
                        categoryName = c.String(maxLength: 128),
                        cover = c.String(),
                        name = c.String(nullable: false),
                        source = c.String(),
                        isDeleted = c.Boolean(nullable: false),
                        joinDate = c.DateTime(nullable: false),
                        publishDate = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.authors", t => t.autherId, cascadeDelete: true)
                .ForeignKey("dbo.categories", t => t.categoryName)
                .ForeignKey("dbo.publishers", t => t.publisherId, cascadeDelete: true)
                .Index(t => t.autherId)
                .Index(t => t.publisherId)
                .Index(t => t.categoryName);
            
            CreateTable(
                "dbo.categories",
                c => new
                    {
                        name = c.String(nullable: false, maxLength: 128),
                        isDeleted = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.name);
            
            CreateTable(
                "dbo.publishers",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        name = c.String(nullable: false),
                        isDeleted = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.userBooks",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        userId = c.Int(nullable: false),
                        bookId = c.Int(nullable: false),
                        status = c.Int(nullable: false),
                        startDate = c.DateTime(nullable: false),
                        returnDate = c.DateTime(nullable: false),
                        deliveredDate = c.DateTime(nullable: false),
                        isDelivered = c.Boolean(nullable: false),
                        employeeId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.books", t => t.bookId, cascadeDelete: true)
                .ForeignKey("dbo.employees", t => t.employeeId, cascadeDelete: true)
                .ForeignKey("dbo.users", t => t.userId, cascadeDelete: true)
                .Index(t => t.userId)
                .Index(t => t.bookId)
                .Index(t => t.employeeId);
            
            CreateTable(
                "dbo.employees",
                c => new
                    {
                        userId = c.Int(nullable: false),
                        salary = c.Decimal(nullable: false, precision: 18, scale: 2),
                    })
                .PrimaryKey(t => t.userId)
                .ForeignKey("dbo.users", t => t.userId)
                .Index(t => t.userId);
            
            CreateTable(
                "dbo.users",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        userName = c.String(nullable: false),
                        email = c.String(nullable: false),
                        fName = c.String(nullable: false),
                        lName = c.String(nullable: false),
                        image = c.Binary(),
                        role = c.Int(),
                        birthDate = c.DateTime(nullable: false),
                        address = c.String(),
                        phone = c.String(),
                        password = c.String(),
                        JoinDate = c.DateTime(nullable: false),
                        isDeleted = c.Boolean(nullable: false),
                        firstLogin = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.members",
                c => new
                    {
                        id = c.Int(nullable: false),
                        isBlock = c.Boolean(nullable: false),
                        endDate = c.DateTime(),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.users", t => t.id)
                .Index(t => t.id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.userBooks", "userId", "dbo.users");
            DropForeignKey("dbo.userBooks", "employeeId", "dbo.employees");
            DropForeignKey("dbo.employees", "userId", "dbo.users");
            DropForeignKey("dbo.members", "id", "dbo.users");
            DropForeignKey("dbo.userBooks", "bookId", "dbo.books");
            DropForeignKey("dbo.books", "publisherId", "dbo.publishers");
            DropForeignKey("dbo.books", "categoryName", "dbo.categories");
            DropForeignKey("dbo.books", "autherId", "dbo.authors");
            DropIndex("dbo.members", new[] { "id" });
            DropIndex("dbo.employees", new[] { "userId" });
            DropIndex("dbo.userBooks", new[] { "employeeId" });
            DropIndex("dbo.userBooks", new[] { "bookId" });
            DropIndex("dbo.userBooks", new[] { "userId" });
            DropIndex("dbo.books", new[] { "categoryName" });
            DropIndex("dbo.books", new[] { "publisherId" });
            DropIndex("dbo.books", new[] { "autherId" });
            DropTable("dbo.members");
            DropTable("dbo.users");
            DropTable("dbo.employees");
            DropTable("dbo.userBooks");
            DropTable("dbo.publishers");
            DropTable("dbo.categories");
            DropTable("dbo.books");
            DropTable("dbo.authors");
        }
    }
}
