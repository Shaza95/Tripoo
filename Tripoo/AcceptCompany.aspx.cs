﻿using System;
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
    public partial class AcceptCompany : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null || (Session["IsAdmin"].ToString() != "true"))
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
                    cmd = $"update Company1 set approve = 1 where Name = '{CheckBoxList1.Items[i].Text}' and ManagerId = '{CheckBoxList1.Items[i].Value}'";
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
                    cmd = $"delete from Company1 where Name = '{CheckBoxList1.Items[i].Text}' and ManagerId = '{CheckBoxList1.Items[i].Value}'";
                    DAL.ExecuteCommand(cmd);
                }
            }
            DAL.Close();

            Response.Redirect(Request.RawUrl);
        }
    }
}