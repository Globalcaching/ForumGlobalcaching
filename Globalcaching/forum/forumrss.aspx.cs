using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Xml;
using System.Text;
using Globalcaching.Core;

public partial class forum_forumrss : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Clear();
        Response.ContentType = "text/xml";
        Response.Write(CachedData.Instance.GetCachedItem(CachedData.CacheItems.ForumRSSFeed));
        Response.End();
    }
}
