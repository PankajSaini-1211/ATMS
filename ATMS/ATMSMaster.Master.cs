using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;

namespace ATMS
{
    public partial class ATMSMaster : System.Web.UI.MasterPage
    {
        public string connectionstring = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetMenuData();
            }
        }
        public void GetMenuData()
        {
            StringBuilder objstr = new StringBuilder();
            List<Menu> objpmenu = new List<Menu>();
            List<SubMenu> objsmenu = new List<SubMenu>();
            List<ChildSubMenu> objcmenu = new List<ChildSubMenu>();
            objpmenu = GetMenu();
            objsmenu = GetSubMenu();
            objcmenu = GetChildSubMenu();

            objstr.Append("<ul>");

            foreach (Menu _pitem in objpmenu)
            {
                objstr.Append("<li><a href='" + _pitem.MenuUrl + "'><span>" + _pitem.MenuName + "</span></a>");

                var subitem = objsmenu.Where(m => m.ParentId == _pitem.Id).ToList();
                if (subitem.Count > 0)
                {
                    objstr.Append("<ul>");
                    foreach (var _sitem in subitem)
                    {
                        objstr.Append("<li class='has-sub'><a href='" + _sitem.SubMenuUrl + "'><span>" + _sitem.SubMenuName + "</span></a>");

                        var childsubitem = objcmenu.Where(s => s.SubParentId == _sitem.Id).ToList();
                        if (childsubitem.Count > 0)
                        {
                            objstr.Append("<ul>");
                            foreach (var _citem in childsubitem)
                            {
                                objstr.Append("<li class='has-sub'><a href='" + _citem.ChildSubMenuUrl + "'><span>" + _citem.ChildSubMenuName + "</span></a></li>");
                            }
                            objstr.Append("</ul>");
                        }

                        objstr.Append("</li>");
                    }
                    objstr.Append("</ul>");
                }

                objstr.Append("</li>");
            }

            objstr.Append("</ul>");

            HeaderMenu.InnerHtml = objstr.ToString();
        }
        public List<Menu> GetMenu()
        {
            List<Menu> objmenu = new List<Menu>();
            DataTable _objdt = new DataTable();
            string querystring = "select * from Menu;";
            SqlConnection _objcon = new SqlConnection(connectionstring);
            SqlDataAdapter _objda = new SqlDataAdapter(querystring, _objcon);
            _objcon.Open();
            _objda.Fill(_objdt);
            if (_objdt.Rows.Count > 0)
            {
                for (int i = 0; i < _objdt.Rows.Count; i++)
                {
                    objmenu.Add(new Menu { Id = (int)_objdt.Rows[i]["Id"], MenuName = _objdt.Rows[i]["MenuName"].ToString(), MenuUrl = _objdt.Rows[i]["MenuUrl"].ToString() });
                }
            }
            return objmenu;
        }
        public List<SubMenu> GetSubMenu()
        {
            List<SubMenu> objmenu = new List<SubMenu>();
            DataTable _objdt = new DataTable();
            string querystring = "select * from SubMenu;";
            SqlConnection _objcon = new SqlConnection(connectionstring);
            SqlDataAdapter _objda = new SqlDataAdapter(querystring, _objcon);
            _objcon.Open();
            _objda.Fill(_objdt);
            if (_objdt.Rows.Count > 0)
            {
                for (int i = 0; i < _objdt.Rows.Count; i++)
                {
                    objmenu.Add(new SubMenu { Id = (int)_objdt.Rows[i]["Id"], ParentId = (int)_objdt.Rows[i]["ParentId"], SubMenuName = _objdt.Rows[i]["SubMenuName"].ToString(), SubMenuUrl = _objdt.Rows[i]["SubMenuUrl"].ToString() });
                }
            }
            return objmenu;
        }
        public List<ChildSubMenu> GetChildSubMenu()
        {
            List<ChildSubMenu> objmenu = new List<ChildSubMenu>();
            DataTable _objdt = new DataTable();
            string querystring = "select * from ChildSubMenu;";
            SqlConnection _objcon = new SqlConnection(connectionstring);
            SqlDataAdapter _objda = new SqlDataAdapter(querystring, _objcon);
            _objcon.Open();
            _objda.Fill(_objdt);
            if (_objdt.Rows.Count > 0)
            {
                for (int i = 0; i < _objdt.Rows.Count; i++)
                {
                    objmenu.Add(new ChildSubMenu { SubParentId = (int)_objdt.Rows[i]["SubParentId"], ChildSubMenuName = _objdt.Rows[i]["ChildSubMenuName"].ToString(), ChildSubMenuUrl = _objdt.Rows[i]["ChildSubMenuUrl"].ToString() });
                }
            }
            return objmenu;
        }

        public class Menu
        {
            public int Id { get; set; }
            public string MenuName { get; set; }
            public string MenuUrl { get; set; }
        }
        public class SubMenu
        {
            public int Id { get; set; }
            public int ParentId { get; set; }
            public string SubMenuName { get; set; }
            public string SubMenuUrl { get; set; }
        }
        public class ChildSubMenu
        {
            public int SubParentId { get; set; }
            public string ChildSubMenuName { get; set; }
            public string ChildSubMenuUrl { get; set; }
        }
    }
}