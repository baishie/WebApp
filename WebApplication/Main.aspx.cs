using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using Excel = Microsoft.Office.Interop.Excel;



namespace WebApplication{
    public partial class Main : System.Web.UI.Page{
        enum RowOrCol {
            Row,
            Column
        };
        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack)
            {
                const string f = @"C:\Users\kellym\Downloads\WebApp\Source.txt";
                FileStream fp = new FileStream(f, FileMode.Open);
                StreamReader reader = new StreamReader(fp);

                string data;
                List<string> lines = new List<string>();
                while ((data = reader.ReadLine()) != null)
                {
                    ListItem L = new ListItem(data);
                    Source.Items.Add(L);
                }
                reader.Close();
                fp.Close();
            }
        }

        protected void proceed_Click(object sender, EventArgs e) {

            Microsoft.Office.Interop.Excel._Application excel = new Microsoft.Office.Interop.Excel.Application();
            string filepath = @"C:\Users\kellym\Downloads\WebApp\Sample.xlsx";
            Microsoft.Office.Interop.Excel.Workbook sheet = excel.Workbooks.Open(filepath);
            Microsoft.Office.Interop.Excel.Worksheet x = excel.ActiveSheet as Microsoft.Office.Interop.Excel.Worksheet;
            
            Microsoft.Office.Interop.Excel.Range userRange = x.UsedRange;
            RemoveEmpty(userRange, RowOrCol.Row); //removes the deleted/empty rows in excel
            RemoveEmpty(userRange, RowOrCol.Column); //removes the deleted/empty columns in excel

            userRange = x.UsedRange; // get Range


            int countRecords = userRange.Rows.Count;
            int columnCount = userRange.Columns.Count;

            int add = countRecords + 1;


            string name = String.Format("{0}", Request.Form["name"]);

            string address = String.Format("{0}", Request.Form["address"]);
            string email = String.Format("{0}", Request.Form["email"]);

            string position = PositionList.SelectedItem.Text;
            string cnumber = String.Format("{0}", Request.Form["cnumber"]);
            string today = DateTime.Now.ToString("M-d-yyyy");
            string source = Source.SelectedItem.Text;

            x.Cells[add, 1] = today;
            x.Cells[add, 2] = name;
            x.Cells[add, 3] = source;
            x.Cells[add, 4] = position;
            x.Cells[add, 5] = cnumber;


            sheet.Close(true, Type.Missing, Type.Missing);
            excel.Quit();

            Session["Name"] = name;
            Session["Row"] = add;
            Session["Position"] = position;

            Response.Redirect("Phase1.aspx");
        }
        private static void RemoveEmpty(Microsoft.Office.Interop.Excel.Range usedRange, RowOrCol rowOrCol) {
            int count;
            Microsoft.Office.Interop.Excel.Range curRange;
            if (rowOrCol == RowOrCol.Column)
                count = usedRange.Columns.Count;
            else
                count = usedRange.Rows.Count;

            for (int i = count; i > 0; i--) {
                bool isEmpty = true;
                if (rowOrCol == RowOrCol.Column) {
                    curRange = usedRange.Columns[i];
                }
                else {
                    curRange = usedRange.Rows[i];
                }
                foreach (Microsoft.Office.Interop.Excel.Range cell in curRange.Cells) {
                    if (cell.Value != null){
                        isEmpty = false;
                        break; // we can exit this loop since the range is not empty
                    }
                    else {
                        // Cell value is null contiue checking
                    }
                } // end loop thru each cell in this range (row or column)

                if (isEmpty){
                    curRange.Delete();
                }
            }
        }
    }
}