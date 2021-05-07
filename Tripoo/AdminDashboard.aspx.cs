using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tripoo
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null || (Session["IsAdmin"].ToString() != "true"))
            {
                Response.Redirect("~/index.aspx");
            }
        }

        protected void AcceptBooking_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AcceptBooking.aspx");
        }

        protected void AcceptCompany_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AcceptCompany.aspx");
        }

        protected void CompaniesManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CompaniesManagement.aspx");
        }

        protected void Chat_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Chat.aspx");
        }

        protected void BookTrip_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BookTrip.aspx");
        }

        protected void BookSpecialTrip_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BookSpecialTrip.aspx");
        }

        protected void UsersManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UsersManagement.aspx");
        }

        protected void TripsManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TripsManagement.aspx");
        }

        protected void TransportsManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TransportManagement.aspx");
        }

        protected void OffersManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/OffersManagement.aspx");
        }
    }
}