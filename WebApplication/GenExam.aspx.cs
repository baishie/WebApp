using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Office.Interop;
using Excel = Microsoft.Office.Interop.Excel;

namespace WebApplication{
    public partial class GenExam : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){

        }
        protected void proceed_exam(object sender, EventArgs e){
            //Set the appropriate ContentType.
            //string FilePath = MapPath("General Test.xlsx");
            //Response.Buffer = true;
            //Response.Clear();
            //Response.ClearContent();
            //Response.ClearHeaders();
            //Response.ContentType = "application/vnd.ms-excel";
            //Response.AddHeader("content-disposition", "attachment; filename=General Test.xlsx");
            //Response.Write(FilePath);
            //Response.End();

            string filepath = @"C:\Users\kellym\Downloads\WebApp\General Test.xlsx";
            var excelApp = new Excel.Application();
            excelApp.Visible = true;

            Excel.Workbooks books = excelApp.Workbooks;
            Excel.Workbook sheet = books.Open(filepath);

        }
    }
}