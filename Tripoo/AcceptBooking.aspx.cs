using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Tripoo.DAL;

namespace Tripoo
{
    public partial class AcceptBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null || (Session["IsAdmin"].ToString() != "true" && Session["IsManager"].ToString() != "true"))
            {
                Response.Redirect("~/index.aspx");
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            DataAccessLayer DAL = new DataAccessLayer();
            DAL.Open();
            string cmd = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    cmd = $"update BookingRequests set approved = 1 where Id = {CheckBoxList1.Items[i].Text}";
                    DAL.ExecuteCommand(cmd);
                }
            }
            DAL.Close();

            Response.Redirect(Request.RawUrl);
        }
        protected void btnReject_Click(object sender, EventArgs e)
        {
            DataAccessLayer DAL = new DataAccessLayer();
            DAL.Open();
            string cmd = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    cmd = $"delete from BookingRequests where Id = {CheckBoxList1.Items[i].Text}";
                    DAL.ExecuteCommand(cmd);
                }
            }
            DAL.Close();

            Response.Redirect(Request.RawUrl);
        }
    }
}