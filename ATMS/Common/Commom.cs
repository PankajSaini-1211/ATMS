using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ATMS.Common
{
    public static class Commom
    {
        public static String ToJson(this DataTable dt)
        {
            System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            serializer.MaxJsonLength = Int32.MaxValue;
            Dictionary<string, object> row;
            foreach(DataRow dr in dt.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {
                    row.Add(col.ColumnName, dr[col]);
                }
                rows.Add(row);
            }
            return serializer.Serialize(rows);
        }
    }
}