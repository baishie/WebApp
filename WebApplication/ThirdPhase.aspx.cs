using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using Excel = Microsoft.Office.Interop.Excel;


namespace WebApplication
{
    public partial class DataEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Microsoft.Office.Interop.Excel._Application excel = new Microsoft.Office.Interop.Excel.Application();
                string filepath = @"C:\Users\kellym\Downloads\WebApp\Sample.xlsx";
                Microsoft.Office.Interop.Excel.Workbook sheet = excel.Workbooks.Open(filepath);
                Microsoft.Office.Interop.Excel.Worksheet x = excel.ActiveSheet as Microsoft.Office.Interop.Excel.Worksheet;

                int row = Convert.ToInt32(Session["Row"]);
                string commResult = (string)(Session["CommResult"]);
                string vocabResult = (string)(Session["VocabResult"]);
                string mathResult = (string)(Session["MathResult"]);

                //Response.Write(row);
                //Response.Write(commResult);
                //Response.Write(mathResult);

                x.Cells[row, 8] = commResult; //comm
                x.Cells[row, 9] = vocabResult; //vocab
                x.Cells[row, 10] = "WALA PA"; //logic
                x.Cells[row, 11] = mathResult; //math
                x.Cells[row, 12] = "WALA PA"; //status
      
                sheet.Close(true, Type.Missing, Type.Missing);
                excel.Quit();
            }
        }
    }
}