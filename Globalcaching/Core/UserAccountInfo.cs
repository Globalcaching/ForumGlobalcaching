using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Globalcaching.Core
{
    public class UserAccountInfo
    {
        public static bool IsAuthenticated
        {
            get
            {
                return HttpContext.Current.User.Identity.IsAuthenticated;
            }
        }

        public static string Name
        {
            get
            {
                string result = "";
                if (IsAuthenticated)
                {
                    if (HttpContext.Current.User.Identity.Name.IndexOf(';') > 0)
                    {
                        string[] parts = HttpContext.Current.User.Identity.Name.Split(new char[] { ';' });
                        if (parts.Length == 3)
                        {
                            result = parts[2];
                        }
                    }
                    else
                    {
                        result = HttpContext.Current.User.Identity.Name;
                    }
                }
                return result.Trim();
            }
        }

        public static int ID
        {
            get
            {
                int result = -1;
                if (IsAuthenticated)
                {
                    if (HttpContext.Current.Session["UAI_ID"] != null)
                    {
                        result = (int)HttpContext.Current.Session["UAI_ID"];
                    }
                    else
                    {
                        using (DBCon dbcon = new DBCon())
                        {
                            result = GetIDOfUser(Name, dbcon);
                            HttpContext.Current.Session["UAI_ID"] = result;
                        }
                    }
                    if (result < 1)
                    {
                        using (DBCon dbcon = new DBCon())
                        {
                            result = GetIDOfUser(Name, dbcon);
                            HttpContext.Current.Session["UAI_ID"] = result;
                        }
                    }
                    if (result < 0)
                    {
                        //let is throw an exception to prevent database corruption
                        throw (new Exception(string.Format("Gebruiker identificatie fout! ([{0}][{1}])", Name, HttpContext.Current.User.Identity.Name)));
                    }
                }
                else
                {
                    HttpContext.Current.Session["UAI_ID"] = null;
                }
                return result;
            }
        }

        public static int GetIDOfUser(string userName, DBCon dbcon)
        {
            int result = -1;
            SqlDataReader dr = dbcon.ExecuteReader(string.Format("SELECT UserID FROM yaf_User WHERE Name = '{0}'", userName.Replace("'", "''")));
            if (dr.Read())
            {
                if (!dr.IsDBNull(0))
                {
                    result = dr.GetInt32(0);
                }
            }
            return result;
        }

    }
}