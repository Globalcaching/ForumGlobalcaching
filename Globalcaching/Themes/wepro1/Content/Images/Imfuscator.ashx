<%@ WebHandler Language="C#" Class="wepro1.Imfuscator.Handler" %>

using System;
using System.Reflection;
using System.Web.Caching;
using System.IO;

namespace wepro1.Imfuscator
{
    public class Handler : System.Web.IHttpHandler
    {
        public void ProcessRequest(System.Web.HttpContext context)
        {
            if (context.Request.QueryString["i"] != null)
            {
                string value = context.Request.QueryString["i"].Trim();
                string path = Path.GetDirectoryName(context.Request.PhysicalPath);
                string fn = Path.Combine(path, value);
                if (File.Exists(fn))
                {
                    context.Response.ContentType = GetContentType(fn);
                    byte[] buffer = File.ReadAllBytes(fn);
                    context.Response.OutputStream.Write(buffer, 0, buffer.Length);
                    return;
                }
                fn = Path.Combine(path, string.Format("{0}.png", value));
                if (File.Exists(fn))
                {
                    context.Response.ContentType = GetContentType(fn);
                    byte[] buffer = File.ReadAllBytes(fn);
                    context.Response.OutputStream.Write(buffer, 0, buffer.Length);
                    return;
                }
                fn = Path.Combine(path, string.Format("{0}.jpg", value));
                if (File.Exists(fn))
                {
                    context.Response.ContentType = GetContentType(fn);
                    byte[] buffer = File.ReadAllBytes(fn);
                    context.Response.OutputStream.Write(buffer, 0, buffer.Length);
                    return;
                }
                fn = Path.Combine(path, string.Format("{0}.gif", value));
                if (File.Exists(fn))
                {
                    context.Response.ContentType = GetContentType(fn);
                    byte[] buffer = File.ReadAllBytes(fn);
                    context.Response.OutputStream.Write(buffer, 0, buffer.Length);
                    return;
                }
                fn = Path.Combine(path, string.Format("{0}.css", value));
                if (File.Exists(fn))
                {
                    context.Response.ContentType = GetContentType(fn);
                    byte[] buffer = File.ReadAllBytes(fn);
                    context.Response.OutputStream.Write(buffer, 0, buffer.Length);
                    return;
                }
            }
			/*
            Type streamerType = null;
            string path = context.Request.PhysicalPath.Replace("ashx", "dll");
            Cache cache = context.Cache;
            if (cache[path] != null)
                streamerType = (Type) cache[path];
            else
            {
                Assembly assembly = Assembly.Load(File.ReadAllBytes(path)); // Prevents file from being locked unlike .LoadFrom
                streamerType = assembly.GetType("wepro1.Imfuscator.Streamer");
                cache.Add(path, streamerType, new CacheDependency(path), Cache.NoAbsoluteExpiration, TimeSpan.FromMinutes(5), CacheItemPriority.Normal, null);
            }            
            streamerType.InvokeMember("StreamImage", 
                                System.Reflection.BindingFlags.Default | System.Reflection.BindingFlags.InvokeMethod, 
                                null, 
                                null, 
                                new object[] { context });
								*/
        }

        private static string GetContentType(string file)
        {
            if (file.EndsWith(".png"))
            {
                return "image/png";
            }
            if (file.EndsWith(".jpg"))
            {
                return "image/jpeg";
            }
            if (file.EndsWith(".gif"))
            {
                return "image/gif";
            }
            if (file.EndsWith(".css"))
            {
                return "text/css";
            }
            return "";
        }        
		
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

    }
}