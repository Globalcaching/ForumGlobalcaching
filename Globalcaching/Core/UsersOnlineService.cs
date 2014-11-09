using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Text;

namespace Globalcaching.Core
{
    public class UsersOnlineService
    {
        public static string GetOnLineUsersHtml()
        {
            StringBuilder sb = new StringBuilder();
            OnlineUserInfo m = GetOnLineUsers();
            sb.AppendFormat("<label class=\"infotext\">Bezoekers afgelopen uur ({0}): </label>", m.Count);
            for (int i = 0; i < m.Users.Count; i++)
            {
                if (i > 0)
                {
                    sb.Append(",");
                }
                sb.Append("&nbsp;");
                string classname = "normaluser";
                if (m.Users[i].IsPosting)
                {
                    classname = "postinguser";
                }
                else if (m.Users[i].Donator)
                {
                    classname = "donatoruser";
                }
                if (m.Users[i].YafUserName == "Guest")
                {
                    sb.AppendFormat("<label class=\"infotext\">Gasten ({0}): </label>", m.Users[i].Count);
                }
                else
                {
                    sb.AppendFormat("<a href=\"/forum/yaf_profile{0}.aspx\" title=\"{1}\"><label class=\"{2}\">{3}</label></a>", m.Users[i].YafUserID, m.Users[i].LastAccess, classname, HttpUtility.HtmlEncode(m.Users[i].YafUserName));
                }
            }

            return sb.ToString();
        }

        public static OnlineUserInfo GetOnLineUsers()
        {
            OnlineUserInfo result = new OnlineUserInfo();
            result.Count = 0;
            result.Users = new List<OnlineUser>();
            using (var dbcon = new DBCon(DBCon.dbForumConnString))
            {
                SqlDataReader dr = GetCurrentSiteVisitors(dbcon, 3600, true, HttpContext.Current.Session.SessionID, UserAccountInfo.ID);
                if (dr != null)
                {
                    while (dr.Read())
                    {
                        OnlineUser ou = new OnlineUser();
                        ou.Count = (int)dr["aantal"];
                        ou.Donator = (bool)dr["Donator"];
                        ou.LastAccess = ((string)dr["lastaccess"]).Substring(11, 5);
                        ou.YafUserID = (int)dr["userid"];
                        ou.YafUserName = (string)dr["Name"];
                        ou.IsPosting = false;

                        object o = dr["LastForumPage"];
                        if (o != null && o.GetType() != typeof(DBNull))
                        {
                            //yaf_postmessage.aspx
                            if (((string)o).IndexOf("g=postmessage", StringComparison.OrdinalIgnoreCase) >= 0 ||
                                ((string)o).IndexOf("yaf_postmessage.aspx", StringComparison.OrdinalIgnoreCase) >= 0)
                            {
                                ou.IsPosting = true;
                            }
                        }

                        if (ou.YafUserID == 1)
                        {
                            result.Count += ou.Count;
                        }
                        else
                        {
                            result.Count++;
                        }

                        result.Users.Add(ou);
                    }
                }
            }
            return result;
        }

        public static SqlDataReader GetCurrentSiteVisitors(DBCon dbcon, int secondsThreshold, bool updateLastAccessTime, string sessionid, int userID)
        {
            SqlDataReader result = null;
            try
            {
                int useId = -1;
                if (updateLastAccessTime)
                {
                    useId = userID;
                    if (useId <= 0) useId = 1; //Guest
                }

                result = dbcon.GetCurrentSiteVisitors(secondsThreshold, useId, sessionid);
            }
            catch
            {
            }
            return result;
        }
    }
}