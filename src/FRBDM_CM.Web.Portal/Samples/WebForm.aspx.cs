using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FRBDM_CM.Web.Portal.Samples
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listView.DataSource = new ListViewItem[]
                {
                    new ListViewItem
                    {
                        Text = "第一列",
                        Options = new[]
                        {
                            "選項一", "選項二"
                        }
                    },
                    new ListViewItem
                    {
                        Text = "第二列",
                        Options = new[]
                        {
                            "選項三", "選項四"
                        }
                    }
                };
                listView.DataBind();
            }
        }

        protected void listView_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                var data = (ListViewItem)e.Item.DataItem;
                var ddl = (DropDownList)e.Item.FindControl("ddl");
                ddl.DataSource = data.Options;
                ddl.DataBind();
            }
        }

        class ListViewItem
        {
            public string Text { get; set; }
            public string[] Options;
        }
    }
}