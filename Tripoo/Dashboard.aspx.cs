using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tripoo
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AcceptBooking_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AcceptBooking.aspx");
        }

        protected void AcceptCompany_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AcceptCompany.aspx");
        }

        protected void AddCompany_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddCompany.aspx");
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

        protected void AddUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddUser.aspx");
        }

        protected void AddTrip_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddTrip.aspx");
        }

        protected void AddTransport_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddTransport.aspx");
        }

        protected void AddOffer_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddOffer.aspx");
        }
    }
}