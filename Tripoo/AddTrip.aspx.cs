﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tripoo.DAL;

namespace Tripoo
{
    public partial class AddTrip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null || (Session["IsAdmin"].ToString() != "true" && Session["IsManager"].ToString() != "true"))
            {
                Response.Redirect("~/index.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DataAccessLayer DAL = new DataAccessLayer();
            DAL.Open();
            string cmd = $"insert into Trip ([From], [To], Date, Duration, Price, TransportId) Values ('{DropDownList2.SelectedValue}', '{DropDownList3.SelectedValue}', '{txtDate.Value}', {txtDuration.Value}, {txtPrice.Value}, {DropDownList1.SelectedValue})";
            DAL.ExecuteCommand(cmd);
            DAL.Close();
        }
    }
}