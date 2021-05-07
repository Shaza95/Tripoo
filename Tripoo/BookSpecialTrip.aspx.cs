using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tripoo.DAL;

namespace Tripoo
{
    public partial class BookSpecialTrip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("~/index.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int UserId = 1;
            DataAccessLayer DAL = new DataAccessLayer();
            DAL.Open();
            string cmd = $"insert into BookingRequests ([From], [To], Date, Duration, PassengersNum, UserId) Values ('{DropDownList2.SelectedValue}', '{DropDownList3.SelectedValue}', '{txtDate.Value}', {txtDuration.Value}, {txtSeats.Value}, {UserId})";
            DAL.ExecuteCommand(cmd);
            DAL.Close();
        }
    }
}