﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Redirect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void proceed_Exam(object sender, EventArgs e)
        {
            Response.Redirect("GenExam.aspx");
            //if (Session["Position"] == "Fiber Technician")
            //{
            //    Response.Redirect("GenExam.aspx");
            //}
            //else
            //{
            //    Response.Redirect("Supervisory.aspx");
            //}
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}