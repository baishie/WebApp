using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Excel = Microsoft.Office.Interop.Excel;



namespace WebApplication {
    public class Client {
        public string name;
        public string position;
        public string bday;

        public string getPos () {
            return position;
        }
    }
    public partial class Main : System.Web.UI.Page {
        public string formValue;
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void proceed_Click(object sender, EventArgs e){
            Client user = new Client();

            Microsoft.Office.Interop.Excel._Application excel = new Microsoft.Office.Interop.Excel.Application();
            string filepath = @"D:\Kelly\OJT\Records.xlsx";
            Microsoft.Office.Interop.Excel.Workbook sheet = excel.Workbooks.Open(filepath);
            Microsoft.Office.Interop.Excel.Worksheet x = excel.ActiveSheet as Microsoft.Office.Interop.Excel.Worksheet;
            
            Excel.Range userRange = x.UsedRange;
            int countRecords = userRange.Rows.Count;
            int add = countRecords + 1;

            string fname = String.Format("{0}", Request.Form["fname"]);
            string lname = String.Format("{0}", Request.Form["lname"]);
            string mi = String.Format("{0}", Request.Form["mi"]);
            string name = fname +" "+ mi + " " + lname;

            string address = String.Format("{0}", Request.Form["address"]);
            string email = String.Format("{0}", Request.Form["email"]);
            string position = String.Format("{0}", Request.Form["position"]);

            user.name = name;
            user.position = position;
            string bday = String.Format("{0}", Request.Form["bday"]);
           
            x.Cells[add,1] = name;
            x.Cells[add,2] = address;
            x.Cells[add,3] = email;
            x.Cells[add,4] = position;
            x.Cells[add,5] = bday;

            sheet.Close(true, Type.Missing, Type.Missing);
            excel.Quit();
            
            Response.Redirect("Phase1.aspx");
        }
    }
}