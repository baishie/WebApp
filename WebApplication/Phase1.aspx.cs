using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;

namespace WebApplication {

    public partial class Phase1 : System.Web.UI.Page {
        static bool typeTest = false;
        static bool readTest = false;
        static bool personalTest = false;
        protected void Page_Load(object sender, EventArgs e) {

        }
        protected void proceed_TypeTest(object sender, EventArgs e) {
            typeTest = true;
            if (typeTest == true && readTest == true && personalTest == true) {
                typeTest = false;
                readTest = false;
                personalTest = false;
                nextPhase();
            }
        }
        protected void proceed_ReadTest(object sender, EventArgs e) {
            readTest = true;
            if (typeTest == true && readTest == true && personalTest == true){
                typeTest = false;
                readTest = false;
                personalTest = false;
                nextPhase();
            }
        }
        protected void proceed_PersonalTest(object sender, EventArgs e) {
            personalTest = true;
            if(typeTest == true && readTest == true && personalTest == true) {
                typeTest = false;
                readTest = false;
                personalTest = false;
                nextPhase();
            }
        }

        protected void nextPhase() {
            Response.Redirect("Redirect.aspx");
        }
    }
}
