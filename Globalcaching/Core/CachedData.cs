using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Text;
using System.Xml;
using System.Data.SqlClient;

namespace Globalcaching.Core
{
    public class CachedData
    {
        private static CachedData _uniqueInstance = null;

        public class CachedItem
        {
            protected static int HourCorrection = 2;
            private string _data = "";
            private System.Data.DataSet _dataSet = null;
            private System.Data.DataSet _oldDataSet = null;
            public DateTime LastUpdated = DateTime.MinValue;
            public TimeSpan CacheTime;

            public CachedItem(TimeSpan cacheTime)
            {
                CacheTime = cacheTime;
            }

            public string Data
            {
                get
                {
                    string result;
                    lock (this)
                    {
                        if (DateTime.Now - LastUpdated >= CacheTime)
                        {
                            _data = FetchData();
                            LastUpdated = DateTime.Now;
                        }
                        result = _data;
                    }
                    return result;
                }
            }

            public System.Data.DataSet DataSet
            {
                get
                {
                    System.Data.DataSet result;
                    lock (this)
                    {
                        if (DateTime.Now - LastUpdated >= CacheTime)
                        {
                            if (_dataSet != null)
                            {
                                if (_oldDataSet != null)
                                {
                                    _oldDataSet.Dispose();
                                }
                                _oldDataSet = _dataSet;
                                _dataSet = null;
                            }
                            _dataSet = FetchDataSet();
                            LastUpdated = DateTime.Now;
                        }
                        result = _dataSet;
                    }
                    return result;
                }
            }

            public virtual string FetchData()
            {
                return "";
            }

            public virtual System.Data.DataSet FetchDataSet()
            {
                return null;
            }
        }

        public enum CacheItems
        {
            ForumRSSFeed,
        }

        private Hashtable _cacheCollection = new Hashtable();

        private CachedData()
        {
            _cacheCollection.Add(CacheItems.ForumRSSFeed, new CachedItemForumRSSFeed(new TimeSpan(0, 5, 0)));
        }

        public static CachedData Instance
        {
            get
            {
                if (_uniqueInstance == null)
                {
                    _uniqueInstance = new CachedData();
                }
                return _uniqueInstance;
            }
        }

        public string GetCachedItem(CacheItems item)
        {
            return ((CachedItem)_cacheCollection[item]).Data;
        }

        public System.Data.DataSet GetCachedItemDataSet(CacheItems item)
        {
            return ((CachedItem)_cacheCollection[item]).DataSet;
        }

        public void ResetCachedItem(CacheItems item)
        {
            ((CachedItem)_cacheCollection[item]).LastUpdated = DateTime.MinValue;
        }

        public class CachedItemForumRSSFeed : CachedItem
        {
            public CachedItemForumRSSFeed(TimeSpan cacheTime)
                : base(cacheTime)
            {
            }

            public override string FetchData()
            {
                string result = "";
                try
                {
                    string svrName = HttpContext.Current.Request.ServerVariables["SERVER_NAME"];
                    using (System.IO.StringWriter ms = new System.IO.StringWriter())
                    {
                        XmlTextWriter objX = new XmlTextWriter(ms);
                        objX.WriteStartDocument();
                        objX.WriteStartElement("rss");
                        objX.WriteAttributeString("version", "2.0");
                        objX.WriteStartElement("channel");
                        objX.WriteElementString("title", svrName);
                        objX.WriteElementString("link", string.Format("http://{0}/forum/default.aspx", svrName));
                        objX.WriteElementString("description", string.Format("{0} nieuwe forum bijdragen.", svrName));
                        objX.WriteElementString("copyright", string.Format("(c) 2009, {0}", svrName));
                        objX.WriteElementString("ttl", "5");

                        DBCon dbcon = new DBCon();
                        SqlDataReader dbr = dbcon.ExecuteReader("select Name, Topic, Message, MessageID, PostedAt from yaf_User as d inner join (select c.Topic, b.Message, b.UserID, MessageID, PostedAt from yaf_topic as c inner join (select top 10 Posted as PostedAt, MessageID, UserID, Message, TopicID from yaf_message where IsDeleted=0 order by posted desc) as b on b.TopicID = c.TopicID) as e on e.UserID = d.UserID");
                        while (dbr.Read())
                        {
                            string title = HttpContext.Current.Server.HtmlDecode(string.Format("{0}: {1}", dbr.GetString(0), dbr.GetString(1)));
                            string description = HttpContext.Current.Server.HtmlDecode(dbr.GetString(2));
                            if (description.Length > 700) description = description.Substring(0, 700);
                            string link = string.Format("http://{1}/forum/Default.aspx?g=posts&m={0}#post{0}", dbr.GetInt32(3), svrName);
                            DateTime dt = dbr.GetDateTime(4);
                            string pubDate = dt.AddHours(HourCorrection).ToString("R");
                            objX.WriteStartElement("item");
                            objX.WriteElementString("title", title);
                            objX.WriteElementString("description", description);
                            objX.WriteElementString("link", link);
                            objX.WriteElementString("pubDate", pubDate);
                            objX.WriteEndElement();
                        }
                        dbcon.Dispose();

                        objX.WriteEndElement();
                        objX.WriteEndElement();
                        objX.WriteEndDocument();
                        objX.Flush();
                        objX.Close();

                        result = ms.ToString();
                    }
                }
                catch
                {
                }
                return result;
            }
        }
    }
}