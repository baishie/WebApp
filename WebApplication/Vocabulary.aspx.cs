using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Vocabulary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void proceed_Submit(object sender, EventArgs e)
        {
            string variable = String.Format("{0}", Request.Form["quiz-result"]);
            Response.Write(variable);
            Response.Write("HAHAHAHA");

        }
    }
}