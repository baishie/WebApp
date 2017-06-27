using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Excel = Microsoft.Office.Interop.Excel;



namespace WebApplication {
    public partial class Main : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void proceed_Click(object sender, EventArgs e){

            Microsoft.Office.Interop.Excel._Application excel = new Microsoft.Office.Interop.Excel.Application();
            string filepath = @"C:\Users\kellym\Downloads\WebApp\Sample.xlsx";
            Microsoft.Office.Interop.Excel.Workbook sheet = excel.Workbooks.Open(filepath);
            Microsoft.Office.Interop.Excel.Worksheet x = excel.ActiveSheet as Microsoft.Office.Interop.Excel.Worksheet;
            
            Excel.Range userRange = x.UsedRange;
            int countRecords = userRange.Rows.Count;
            int add = countRecords + 1;
 

            string fname = String.Format("{0}", Request.Form["fname"]);
            string lname = String.Format("{0}", Request.Form["lname"]);
            string mi = String.Format("{0}", Request.Form["mi"]);
            string name = fname +" "+ mi + ". " + lname;

            string address = String.Format("{0}", Request.Form["address"]);
            string email = String.Format("{0}", Request.Form["email"]);

            string position = PositionList.SelectedItem.Text;
            string cnumber = String.Format("{0}", Request.Form["cnumber"]);
            string today = DateTime.Now.ToString("M-d-yyyy");
            string source = String.Format("{0}", Request.Form["source"]);

            x.Cells[add,1] = today;
            x.Cells[add,2] = name;
            x.Cells[add,3] = source;
            x.Cells[add,4] = position;
            x.Cells[add,5] = cnumber;


            sheet.Close(true, Type.Missing, Type.Missing);
            excel.Quit();

            Session["Name"] = name;
            Session["Row"] = add;
            Session["Position"] = position;
            
            Response.Redirect("Phase1.aspx");
        }
    }
}