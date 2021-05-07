using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tripoo
{
    public partial class CustomerDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("~/index.aspx");
            }
        }

        protected void ViewTrips_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ViewTrips.aspx");
        }

        protected void BookingTrip_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BookTrip.aspx");
        }

        protected void BookingSpecialTrip_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BookSpecialTrip.aspx");
        }
    }
}