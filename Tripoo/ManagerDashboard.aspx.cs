using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tripoo
{
    public partial class ManagerDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null || (Session["IsAdmin"].ToString() != "true" && Session["IsManager"].ToString() != "true"))
            {
                Response.Redirect("~/index.aspx");
            }
        }

        protected void AcceptBooking_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AcceptBooking.aspx");
        }

        protected void AddCompany_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddCompany.aspx");
        }

        protected void Chat_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Chat.aspx");
        }

        protected void TripsManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TripsManagement.aspx");
        }

        protected void TransportsManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TransportManagement.aspx");
        }

        protected void Offers_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Offers.aspx");
        }
    }
}