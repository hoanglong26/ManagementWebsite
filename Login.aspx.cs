using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["isLogin"] = false;
    }

    protected void submit_Click(object sender, EventArgs e)
    {

        if (uname.Text.Equals("admin") && pass.Text.Equals("admin"))
        {
            Session["isLogin"] = true;
            Response.Redirect("~/CatergoryForm.aspx");
            //set attribute bao da dang nhap cho session o day
        }
        else
        {
            Session["isLogin"] = false;
            Response.Redirect("404.html");

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        uname.Text = "";
        pass.Text = "";
    }
}