using Microsoft.EntityFrameworkCore.Migrations;

namespace DemoProject.Migrations
{
    public partial class UpdatedTask : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Tasks_Projects_ProjectId",
                table: "Tasks");

            migrationBuilder.RenameColumn(
                name: "ProjectId",
                table: "Tasks",
                newName: "ProjectID");

            migrationBuilder.RenameIndex(
                name: "IX_Tasks_ProjectId",
                table: "Tasks",
                newName: "IX_Tasks_ProjectID");

            migrationBuilder.AlterColumn<int>(
                name: "ProjectID",
                table: "Tasks",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Tasks_Projects_ProjectID",
                table: "Tasks",
                column: "ProjectID",
                principalTable: "Projects",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Tasks_Projects_ProjectID",
                table: "Tasks");

            migrationBuilder.RenameColumn(
                name: "ProjectID",
                table: "Tasks",
                newName: "ProjectId");

            migrationBuilder.RenameIndex(
                name: "IX_Tasks_ProjectID",
                table: "Tasks",
                newName: "IX_Tasks_ProjectId");

            migrationBuilder.AlterColumn<int>(
                name: "ProjectId",
                table: "Tasks",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AddForeignKey(
                name: "FK_Tasks_Projects_ProjectId",
                table: "Tasks",
                column: "ProjectId",
                principalTable: "Projects",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
