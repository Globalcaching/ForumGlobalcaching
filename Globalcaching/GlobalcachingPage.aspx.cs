using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Globalcaching
{
    public partial class GlobalcachingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string orchardUrl = ConfigurationManager.AppSettings["OrchardURL"].ToString();
            string p = Request.QueryString[0];

            Response.Redirect(string.Format("{0}{1}", orchardUrl, p));
        }
    }
}