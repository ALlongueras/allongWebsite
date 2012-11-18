// -----------------------------------------------------------------------
// <copyright file="Utils.cs" company="">
// TODO: Update copyright text.
// </copyright>
// -----------------------------------------------------------------------

namespace Logica.Helpers
{
    using System;
    using System.Collections.Generic;
    using System.Web;
    using System.IO;

    using Logica.Models;

    using umbraco.presentation.umbracobase;

    /// <summary>
    /// TODO: Update summary.
    /// </summary>
    [RestExtension("Utils")]
    public class Utils
    {
        [RestExtensionMethod(returnXml = false)]
        public static string ReadJson(string path)
        {
            path = string.Format("/json/{0}.json", path);
            path = HttpContext.Current.Server.MapPath(path);
            FileInfo file = new FileInfo(path);
            string json = file.Exists ?
               File.ReadAllText(path) : string.Empty;

            json = json.Replace(" ", string.Empty);
            json = json.Replace(Environment.NewLine, string.Empty);
            return json;
        }
    }
}
