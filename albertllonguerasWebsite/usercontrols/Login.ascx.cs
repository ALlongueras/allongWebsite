using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using umbraco.cms.businesslogic.member;

namespace albertllonguerasWebsite.usercontrols
{
    public partial class Login : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void login(object sender, EventArgs e)
        {
            var m = Member.GetMemberFromLoginNameAndPassword(tb_email.Text, tb_password.Text);

            if (m != null)
            {
                Member.AddMemberToCache(m);
                Response.Redirect("/porra");
            }
        }
    }
}