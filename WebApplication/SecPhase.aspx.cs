using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication {
    public partial class SecPhase : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            Response.Write(Session["Position"]);
            if (((string)Session["Position"]) == "Fiber Technician") {
                //exam hereeeee
            }

        }
    }
} 