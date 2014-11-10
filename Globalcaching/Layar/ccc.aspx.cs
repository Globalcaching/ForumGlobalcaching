using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Globalcaching
{
    public partial class ccc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StringBuilder result = new StringBuilder();
            Response.Clear();

            try
            {
                string username = Request.QueryString["usr"];
                string password = Request.QueryString["pwd"];

                if (username != null && password != null)
                {
                    MembershipUser objUsr = Membership.GetUser(username);
                    if (Membership.ValidateUser(username, password))
                    {
                        result.Append("OK");
                    }
                    else
                    {
                        result.Append("2");
                    }
                }
            }
            catch
            {
                result.Length = 0;
                result.Append("ERROR");
            }
            Response.Write(result.ToString());
        }
    }
}