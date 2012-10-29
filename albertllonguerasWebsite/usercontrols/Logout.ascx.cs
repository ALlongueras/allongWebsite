using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using umbraco.cms.businesslogic.member;

namespace albertllonguerasWebsite.usercontrols
{
    public partial class Logout : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Test if the member is logged in, if so remove from cache
            var m = Member.GetCurrentMember();
            if (m != null)
            {
                Member.RemoveMemberFromCache(m);
                Member.ClearMemberFromClient(m);
            }
            //redirect to another page
            Response.Redirect("/");
        }
    }
}