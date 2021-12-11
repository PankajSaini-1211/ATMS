using BAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ATMS.Common;
using System.Web.Services;

namespace ATMS
{
    public partial class ATMSLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(!IsPostBack)
            //{

            //}
        }
        [WebMethod]
        public static string ATMSRegister (string Mode)
        {
            ATMSLoginBAL BAL = new ATMSLoginBAL();
            DataTable dt = new DataTable();
            //dt = BAL.ATMSRegister(RegisterData, Mode);
            return dt.ToJson();

        }
    }
}